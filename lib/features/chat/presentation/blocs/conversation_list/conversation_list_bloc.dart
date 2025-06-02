import 'dart:async';
import 'package:flutter/foundation.dart';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:meepshoptest/core/errors/failure.dart';
import 'package:meepshoptest/core/usecase/usecase.dart';
import 'package:meepshoptest/features/chat/domain/entities/conversation_entity.dart';
import 'package:meepshoptest/features/message/domain/entities/message_entity.dart';
import 'package:meepshoptest/features/chat/domain/usecases/get_conversations_usecase.dart';
import 'package:meepshoptest/core/shared/notifiers/conversation_update_notifier.dart';

part 'conversation_list_bloc.freezed.dart';
part 'conversation_list_event.dart';
part 'conversation_list_state.dart';

@injectable
class ConversationListBloc
    extends Bloc<ConversationListEvent, ConversationListState> {
  final GetConversationsUsecase _getConversationsUsecase;
  final ConversationUpdateNotifier _conversationUpdateNotifier;
  late final VoidCallback _conversationUpdateListener;

  ConversationListBloc(
    this._getConversationsUsecase,
    this._conversationUpdateNotifier,
  ) : super(const ConversationListState.initial()) {
    print(
      '[ConversationListBloc] Initialized. _getConversationsUsecase is null: ${_getConversationsUsecase == null}',
    );
    on<LoadConversations>(_onLoadConversations);

    _conversationUpdateListener = () {
      if (!isClosed) {
        add(const ConversationListEvent.loadConversations());
      }
    };
    _conversationUpdateNotifier.addListener(_conversationUpdateListener);
  }

  @override
  Future<void> close() {
    _conversationUpdateNotifier.removeListener(_conversationUpdateListener);
    return super.close();
  }

  Future<void> _onLoadConversations(
    LoadConversations event,
    Emitter<ConversationListState> emit,
  ) async {
    print('[ConversationListBloc] _onLoadConversations started.');
    emit(const ConversationListState.loading());

    final MessageEntity? newlySentMessage = _conversationUpdateNotifier.value;

    if (newlySentMessage != null) {
      _conversationUpdateNotifier.clear();
    }
    print('[ConversationListBloc] About to call _getConversationsUsecase.');
    if (_getConversationsUsecase == null) {
      print(
        '[ConversationListBloc] FATAL: _getConversationsUsecase is NULL before calling!',
      );
      emit(
        const ConversationListState.error(
          failure: Failure.unknownError(
            message: '_getConversationsUsecase is null',
          ),
        ),
      );
      return;
    }

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
          // Log all received conversation IDs
          for (var conv in conversations) {
            print(
              '[ConversationListBloc] Received conversation ID: ${conv.id}',
            );
          }
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
              } else {
                displayMessageContent = '[附件]';
              }

              modifiableConversations[index] = originalConversation.copyWith(
                lastMessage: displayMessageContent,
                timestamp: newlySentMessage.timestamp,
              );
            } else {}
          }

          final sortedConversations = List<ConversationEntity>.from(
            modifiableConversations,
          )..sort((a, b) => b.timestamp.compareTo(a.timestamp));

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
