import 'dart:async';
import 'package:flutter/foundation.dart';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:meepshoptest/core/errors/failure.dart';
import 'package:meepshoptest/core/usecase/usecase.dart';
import 'package:meepshoptest/features/chat/domain/entities/conversation_entity.dart';
import 'package:meepshoptest/features/chat/domain/entities/message_entity.dart';
import 'package:meepshoptest/features/chat/domain/usecases/get_conversations_usecase.dart';
import 'package:meepshoptest/core/shared/notifiers/conversation_update_notifier.dart';
import 'package:meepshoptest/features/chat/domain/entities/message_type.dart';
import 'package:meepshoptest/core/network/chat_web_socket_service.dart';
import 'package:meepshoptest/features/auth/presentation/blocs/auth_bloc.dart';
import 'package:meepshoptest/features/auth/presentation/blocs/auth_state.dart'
    as auth_state;
import 'package:meepshoptest/features/chat/data/models/message_model.dart';

part 'conversation_list_bloc.freezed.dart';
part 'conversation_list_event.dart';
part 'conversation_list_state.dart';

@injectable
class ConversationListBloc
    extends Bloc<ConversationListEvent, ConversationListState> {
  final GetConversationsUsecase _getConversationsUsecase;
  final ConversationUpdateNotifier _conversationUpdateNotifier;
  final ChatWebSocketService _chatWebSocketService;
  final AuthBloc _authBloc;
  late final VoidCallback _conversationUpdateListener;
  StreamSubscription? _webSocketSubscription;
  StreamSubscription<auth_state.AuthState>? _authSubscription;

  ConversationListBloc(
    this._getConversationsUsecase,
    this._conversationUpdateNotifier,
    this._chatWebSocketService,
    this._authBloc,
  ) : super(const ConversationListState.initial()) {
    print(
      '[ConversationListBloc] Initialized. _getConversationsUsecase is null: ${_getConversationsUsecase == null}',
    );
    on<LoadConversations>(_onLoadConversations);
    on<InitializeConversationList>(_onInitializeConversationList);
    on<HandleWebSocketUpdate>(_onHandleWebSocketUpdate);

    _conversationUpdateListener = () {
      if (!isClosed) {
        add(const ConversationListEvent.loadConversations());
      }
    };
    _conversationUpdateNotifier.addListener(_conversationUpdateListener);

    _authSubscription = _authBloc.stream.listen((authStateValue) {
      if (authStateValue is auth_state.AuthAuthenticated) {
        final userId = authStateValue.user.id;
        if (!isClosed) {
          add(ConversationListEvent.initialize(currentUserId: userId));
        }
      }
    });
    final initialAuthState = _authBloc.state;
    if (initialAuthState is auth_state.AuthAuthenticated) {
      if (!isClosed) {
        add(
          ConversationListEvent.initialize(
            currentUserId: initialAuthState.user.id,
          ),
        );
      }
    }
  }

  @override
  Future<void> close() {
    print('[ConversationListBloc] Closing...');
    _conversationUpdateNotifier.removeListener(_conversationUpdateListener);
    _webSocketSubscription?.cancel();
    _authSubscription?.cancel();
    print('[ConversationListBloc] Closed.');
    return super.close();
  }

  Future<void> _onInitializeConversationList(
    InitializeConversationList event,
    Emitter<ConversationListState> emit,
  ) async {
    print(
      '[ConversationListBloc] _onInitializeConversationList called with userId: ${event.currentUserId}',
    );
    await _webSocketSubscription?.cancel();

    final bool connected = await _chatWebSocketService.connect(
      event.currentUserId,
    );

    if (connected) {
      print(
        '[ConversationListBloc] WebSocket connected successfully for conversation list.',
      );
      _webSocketSubscription = _chatWebSocketService.updateConversationList?.listen(
        (updateData) {
          print(
            '[ConversationListBloc] Received updateConversationList event via WebSocket: ${updateData.conversationId}',
          );
          if (!isClosed) {
            add(
              ConversationListEvent.handleWebSocketUpdate(
                updateData: updateData,
              ),
            );
          }
        },
        onError: (error) {
          print(
            '[ConversationListBloc] Error listening to WebSocket updateConversationList: $error',
          );
        },
        onDone: () {
          print(
            '[ConversationListBloc] WebSocket updateConversationList stream closed.',
          );
        },
      );
    } else {
      print(
        '[ConversationListBloc] WebSocket connection failed for conversation list.',
      );
    }
  }

  Future<void> _onHandleWebSocketUpdate(
    HandleWebSocketUpdate event,
    Emitter<ConversationListState> emit,
  ) async {
    print(
      '[ConversationListBloc] _onHandleWebSocketUpdate for conversationId: ${event.updateData.conversationId}',
    );
    if (state is Loaded) {
      final currentLoadedState = state as Loaded;
      List<ConversationEntity> updatedConversations = List.from(
        currentLoadedState.conversations,
      );
      final int index = updatedConversations.indexWhere(
        (conv) => conv.id == event.updateData.conversationId,
      );

      final MessageModel lastMsgModel = event.updateData.lastMessage;
      final MessageEntity newMessageEntity = lastMsgModel.toEntity();

      String displayMessageContent;
      if (newMessageEntity.type == MessageType.text) {
        displayMessageContent = newMessageEntity.content;
      } else if (newMessageEntity.type == MessageType.image) {
        displayMessageContent = '[圖片]';
      } else if (newMessageEntity.type == MessageType.system) {
        displayMessageContent = newMessageEntity.content;
      } else {
        displayMessageContent = '[附件]';
      }

      if (index != -1) {
        final originalConversation = updatedConversations[index];
        updatedConversations[index] = originalConversation.copyWith(
          lastMessage: displayMessageContent,
          timestamp: newMessageEntity.timestamp,
        );
        print(
          '[ConversationListBloc] Updated existing conversation: ${originalConversation.id}',
        );
      } else {
        print(
          '[ConversationListBloc] Conversation ${event.updateData.conversationId} not found in current list. Triggering full reload.',
        );
        add(const ConversationListEvent.loadConversations());
        return;
      }

      updatedConversations.sort((a, b) {
        if (a.timestamp == null && b.timestamp == null) return 0;
        if (a.timestamp == null) return 1;
        if (b.timestamp == null) return -1;
        return b.timestamp!.compareTo(a.timestamp!);
      });

      emit(Loaded(conversations: updatedConversations));
      print(
        '[ConversationListBloc] Emitted updated conversation list via WebSocket update.',
      );
    } else {
      print(
        '[ConversationListBloc] Received WebSocket update but not in Loaded state. Triggering full reload.',
      );
      add(const ConversationListEvent.loadConversations());
    }
  }

  Future<void> _onLoadConversations(
    LoadConversations event,
    Emitter<ConversationListState> emit,
  ) async {
    print('[ConversationListBloc] _onLoadConversations started.');
    if (state is! Loaded) {
      emit(const ConversationListState.loading());
    }

    final MessageEntity? newlySentMessage = _conversationUpdateNotifier.value;

    if (newlySentMessage != null) {
      _conversationUpdateNotifier.clear();
    }
    print('[ConversationListBloc] About to call _getConversationsUsecase.');

    try {
      final result = await _getConversationsUsecase(NoParams());
      print('[ConversationListBloc] _getConversationsUsecase call completed.');

      result.fold(
        (failure) {
          print(
            '[ConversationListBloc] _getConversationsUsecase returned Failure: ${failure.message}',
          );
          emit(ConversationListState.error(failure: failure));
        },
        (conversations) {
          print(
            '[ConversationListBloc] _getConversationsUsecase returned Success with ${conversations.length} conversations.',
          );

          List<ConversationEntity> modifiableConversations = List.from(
            conversations,
          );

          if (newlySentMessage != null) {
            final int index = modifiableConversations.indexWhere(
              (conv) => conv.id == newlySentMessage.conversationId,
            );

            if (index != -1) {
              final originalConversation = modifiableConversations[index];
              String displayMessageContent;
              if (newlySentMessage.type == MessageType.text) {
                displayMessageContent = newlySentMessage.content;
              } else if (newlySentMessage.type == MessageType.image) {
                displayMessageContent = '[圖片]';
              } else if (newlySentMessage.type == MessageType.system) {
                displayMessageContent = newlySentMessage.content;
              } else {
                displayMessageContent = '[附件]';
              }
              modifiableConversations[index] = originalConversation.copyWith(
                lastMessage: displayMessageContent,
                timestamp: newlySentMessage.timestamp,
              );
            }
          }

          final sortedConversations = List<ConversationEntity>.from(
            modifiableConversations,
          )..sort((a, b) {
            if (a.timestamp == null && b.timestamp == null) {
              return 0;
            }
            if (a.timestamp == null) {
              return 1;
            }
            if (b.timestamp == null) {
              return -1;
            }
            return b.timestamp!.compareTo(a.timestamp!);
          });

          emit(
            ConversationListState.loaded(conversations: sortedConversations),
          );
        },
      );
    } catch (e, s) {
      print(
        '[ConversationListBloc] Exception during _getConversationsUsecase call or folding: $e, Stacktrace: $s',
      );
      emit(
        ConversationListState.error(
          failure: Failure.unknownError(
            message: 'Bloc error: ${e.toString()}',
            error: e,
            stackTrace: s,
          ),
        ),
      );
    }
  }
}
