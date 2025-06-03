import 'dart:async';
import 'dart:math';
import 'package:collection/collection.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:meepshoptest/core/errors/failure.dart';
import 'package:meepshoptest/features/chat/domain/entities/conversation_entity.dart';
import 'package:meepshoptest/features/chat/domain/entities/message_entity.dart';
import 'package:meepshoptest/features/chat/domain/entities/message_sender_entity.dart';
import 'package:meepshoptest/features/chat/domain/entities/reaction_type.dart';
import 'package:meepshoptest/features/chat/domain/entities/reactions_entity.dart';
import 'package:meepshoptest/features/chat/domain/usecases/create_message_usecase.dart';
import 'package:meepshoptest/features/chat/domain/usecases/get_messages_usecase.dart';
import 'package:meepshoptest/features/chat/domain/usecases/update_message_reaction_usecase.dart';
import 'package:meepshoptest/core/shared/notifiers/conversation_update_notifier.dart';
import 'package:injectable/injectable.dart';
import 'package:meepshoptest/core/network/chat_web_socket_service.dart';
import 'package:meepshoptest/features/chat/data/models/message_model.dart';
import 'package:meepshoptest/features/chat/data/models/message_input_model.dart';
import 'package:meepshoptest/features/chat/domain/entities/message_type.dart';

part 'chat_message_bloc.freezed.dart';

@freezed
sealed class ChatMessageEvent with _$ChatMessageEvent {
  const factory ChatMessageEvent.initializeChat({
    required ConversationEntity conversation,
    required String currentUserId,
  }) = InitializeChat;
  const factory ChatMessageEvent.loadMessages({
    required String conversationId,
  }) = LoadMessages;
  const factory ChatMessageEvent.sendMessage({
    required String conversationId,
    required String messageText,
    required String currentUserId,
  }) = SendMessage;
  const factory ChatMessageEvent.addReaction({
    required String conversationId,
    required String? messageId,
    required ReactionType reactionType,
    required String currentUserId,
  }) = AddReaction;
  const factory ChatMessageEvent.sendImageMessage({
    required String conversationId,
    required String imagePath,
    required String currentUserId,
  }) = SendImageMessage;
  const factory ChatMessageEvent.messageReceivedViaWebSocket({
    required MessageEntity message,
  }) = _MessageReceivedViaWebSocket;
}

@freezed
sealed class ChatMessageState with _$ChatMessageState {
  const factory ChatMessageState.initial() = Initial;
  const factory ChatMessageState.loading() = Loading;
  const factory ChatMessageState.loaded({
    required List<MessageEntity> messages,
    @Default({}) Map<String, Set<ReactionType>> userSessionReactions,
    @Default(0) int version,
  }) = Loaded;
  const factory ChatMessageState.messageSending({
    required List<MessageEntity> messages,
    @Default({}) Map<String, Set<ReactionType>> userSessionReactions,
    @Default(0) int version,
  }) = MessageSending;
  const factory ChatMessageState.messageSent({
    required List<MessageEntity> messages,
    required MessageEntity newMessage,
    @Default({}) Map<String, Set<ReactionType>> userSessionReactions,
    @Default(0) int version,
  }) = MessageSent;
  const factory ChatMessageState.messageReactionUpdating({
    required List<MessageEntity> messages,
    @Default({}) Map<String, Set<ReactionType>> userSessionReactions,
    @Default(0) int version,
  }) = MessageReactionUpdating;
  const factory ChatMessageState.messageReactionUpdated({
    required List<MessageEntity> messages,
    @Default({}) Map<String, Set<ReactionType>> userSessionReactions,
    @Default(0) int version,
  }) = MessageReactionUpdated;
  const factory ChatMessageState.error({required Failure failure}) = Error;
}

@injectable
class ChatMessageBloc extends Bloc<ChatMessageEvent, ChatMessageState> {
  final GetMessagesUseCase _getMessagesUsecase;
  final CreateMessageUseCase _createMessageUsecase;
  final UpdateMessageReactionUseCase _updateMessageReactionUseCase;
  final ConversationUpdateNotifier _conversationUpdateNotifier;
  final ChatWebSocketService _chatWebSocketService;
  StreamSubscription? _webSocketMessagesSubscription;

  String? _currentLoggedInUserId;
  ConversationEntity? _currentConversation;

  String? _currentConversationId;
  List<MessageEntity> _currentMessages = [];

  final Map<String, Set<ReactionType>> _userSessionReactions = {};

  int _messageListVersion = 0;

  ChatMessageBloc(
    this._getMessagesUsecase,
    this._createMessageUsecase,
    this._updateMessageReactionUseCase,
    this._conversationUpdateNotifier,
    this._chatWebSocketService,
  ) : super(const ChatMessageState.initial()) {
    on<InitializeChat>(_onInitializeChat);
    on<LoadMessages>(_onLoadMessages);
    on<SendMessage>(_onSendMessage);
    on<AddReaction>(_onAddReaction);
    on<SendImageMessage>(_onSendImageMessage);
    on<_MessageReceivedViaWebSocket>(_onMessageReceivedViaWebSocket);
  }

  int _nextVersion() => ++_messageListVersion;

  List<ReactionDetailEntity> _mapReactionsToEntityList(
    Map<String, int> reactionMap,
  ) {
    return reactionMap.entries.map((entry) {
      final reactionType = ReactionTypeUtils.fromString(entry.key);
      return ReactionDetailEntity(type: reactionType, count: entry.value);
    }).toList();
  }

  Future<void> _onInitializeChat(
    InitializeChat event,
    Emitter<ChatMessageState> emit,
  ) async {
    print('[ChatMessageBloc] _onInitializeChat called.');
    print(
      '[ChatMessageBloc]   Event Conversation ID: ${event.conversation.id}',
    );
    print(
      '[ChatMessageBloc]   Event Conversation Name: "${event.conversation.name}"',
    );
    print('[ChatMessageBloc]   Event currentUserId: ${event.currentUserId}');

    _currentConversation = event.conversation;
    _currentLoggedInUserId = event.currentUserId;
    _currentConversationId = event.conversation.id;

    if (_currentLoggedInUserId != null) {
      print(
        '[ChatMessageBloc] Initializing WebSocket with userId: $_currentLoggedInUserId for conversation: ${_currentConversationId}',
      );
      final bool connected = await _chatWebSocketService.connect(
        _currentLoggedInUserId!,
      );

      if (connected) {
        print('[ChatMessageBloc] WebSocket connected successfully.');
        if (_currentConversationId != null) {
          _chatWebSocketService.joinConversation(_currentConversationId!);
        }
      } else {
        print('[ChatMessageBloc] WebSocket connection failed.');
      }
    } else {
      print(
        '[ChatMessageBloc] Cannot initialize WebSocket: currentLoggedInUserId is null.',
      );
    }

    _webSocketMessagesSubscription?.cancel();
    _webSocketMessagesSubscription = _chatWebSocketService.messages?.listen(
      (MessageModel model) {
        print(
          '[ChatMessageBloc] WebSocket listener received model: ${model.id}',
        );
        final newMessageEntity = model.toEntity();
        add(
          ChatMessageEvent.messageReceivedViaWebSocket(
            message: newMessageEntity,
          ),
        );
      },
      onError: (error) {
        print(
          '[ChatMessageBloc] Error listening to WebSocket messages: $error',
        );
      },
      onDone: () {
        print('[ChatMessageBloc] WebSocket messages stream closed.');
      },
    );

    add(ChatMessageEvent.loadMessages(conversationId: event.conversation.id));
  }

  void _onMessageReceivedViaWebSocket(
    _MessageReceivedViaWebSocket event,
    Emitter<ChatMessageState> emit,
  ) {
    print(
      '[ChatMessageBloc] Handling _MessageReceivedViaWebSocket for message: ${event.message.id}',
    );
    final newMessageEntity = event.message;

    if (!_currentMessages.any((m) => m.id == newMessageEntity.id)) {
      _currentMessages.add(newMessageEntity);
      _currentMessages.sort((a, b) => a.timestamp.compareTo(b.timestamp));

      _conversationUpdateNotifier.notify(lastMessage: newMessageEntity);

      if (state is Initial || state is Loading || state is Error) {
        print(
          '[ChatMessageBloc] WebSocket message received while in Initial/Loading/Error. Emitting Loaded.',
        );
      } else {
        print(
          '[ChatMessageBloc] WebSocket message received while in a stable state. Emitting Loaded.',
        );
      }
      emit(
        Loaded(
          messages: List<MessageEntity>.from(_currentMessages),
          userSessionReactions: Map.from(_userSessionReactions),
          version: _nextVersion(),
        ),
      );
    } else {
      print(
        '[ChatMessageBloc] WebSocket message ${newMessageEntity.id} already present.',
      );
    }
  }

  @override
  Future<void> close() {
    _webSocketMessagesSubscription?.cancel();
    if (_currentConversationId != null) {
      _chatWebSocketService.leaveConversation(_currentConversationId!);
      _chatWebSocketService.disconnect();
    }
    return super.close();
  }

  Future<void> _onLoadMessages(
    LoadMessages event,
    Emitter<ChatMessageState> emit,
  ) async {
    print('[ChatMessageBloc] _onLoadMessages called.');
    print('[ChatMessageBloc]   Event Conversation ID: ${event.conversationId}');

    if (_currentConversation == null ||
        _currentConversation!.id != event.conversationId) {
      print(
        '[ChatMessageBloc] _onLoadMessages: Conversation context changed or not set. Clearing old messages.',
      );
      _currentMessages = [];
    }
    _currentConversationId = event.conversationId;
    emit(const ChatMessageState.loading());
    final result = await _getMessagesUsecase(
      GetMessagesParams(conversationId: event.conversationId),
    );
    result.fold(
      (failure) {
        _currentMessages = [];
        final errorState = ChatMessageState.error(failure: failure);
        print(
          '[ChatMessageBloc] Emitting error state from _onLoadMessages: $errorState',
        );
        emit(errorState);
      },
      (messages) {
        _currentMessages = messages;
        _currentMessages.sort((a, b) => a.timestamp.compareTo(b.timestamp));

        final loadedState = Loaded(
          messages: List<MessageEntity>.from(_currentMessages),
          userSessionReactions: Map.from(_userSessionReactions),
          version: _nextVersion(),
        );
        print(
          '[ChatMessageBloc] Emitting loaded state from _onLoadMessages: Found ${messages.length} messages.',
        );
        emit(loadedState);

        // Notify ConversationUpdateNotifier with the latest message if available
        if (_currentMessages.isNotEmpty) {
          _conversationUpdateNotifier.notify(
            lastMessage: _currentMessages.last,
          );
          print(
            '[ChatMessageBloc] Notified ConversationUpdateNotifier with last message: ${_currentMessages.last.id} of type ${_currentMessages.last.type}',
          );
        }
      },
    );
  }

  Future<void> _onSendMessage(
    SendMessage event,
    Emitter<ChatMessageState> emit,
  ) async {
    if (_currentConversation == null || _currentLoggedInUserId == null) {
      emit(
        const ChatMessageState.error(
          failure: Failure.unknownError(message: "Chat not initialized."),
        ),
      );
      return;
    }

    emit(
      ChatMessageState.messageSending(
        messages: List.from(_currentMessages),
        userSessionReactions: Map.from(_userSessionReactions),
        version: _messageListVersion,
      ),
    );

    final optimisticId = (-DateTime.now().millisecondsSinceEpoch).toString();
    final optimisticMessage = MessageEntity(
      id: optimisticId,
      conversationId: event.conversationId,
      sender: MessageSenderEntity(
        userId: _currentLoggedInUserId!,
        username:
            _currentConversation?.participants
                .firstWhereOrNull((p) => p.userId == _currentLoggedInUserId)
                ?.user ??
            'Me',
        avatarUrl:
            _currentConversation?.participants
                .firstWhereOrNull((p) => p.userId == _currentLoggedInUserId)
                ?.avatar,
      ),
      content: event.messageText,
      type: MessageType.text,
      timestamp: DateTime.now(),
      reactions: [],
    );

    _currentMessages.add(optimisticMessage);
    _currentMessages.sort((a, b) => a.timestamp.compareTo(b.timestamp));

    emit(
      Loaded(
        messages: List<MessageEntity>.from(_currentMessages),
        userSessionReactions: Map.from(_userSessionReactions),
        version: _nextVersion(),
      ),
    );

    final messageInput = MessageInputModel(
      senderId: event.currentUserId,
      type: 'text',
      content: event.messageText,
    );
    final params = CreateMessageParams(
      conversationId: event.conversationId,
      messageInput: messageInput,
    );

    final result = await _createMessageUsecase(params);

    _currentMessages.removeWhere((m) => m.id == optimisticId);

    result.fold(
      (failure) {
        emit(ChatMessageState.error(failure: failure));
        emit(
          Loaded(
            messages: List<MessageEntity>.from(_currentMessages),
            userSessionReactions: Map.from(_userSessionReactions),
            version: _nextVersion(),
          ),
        );
      },
      (sentMessage) {
        if (!_currentMessages.any((m) => m.id == sentMessage.id)) {
          _currentMessages.add(sentMessage);
          _currentMessages.sort((a, b) => a.timestamp.compareTo(b.timestamp));
        }

        emit(
          MessageSent(
            messages: List<MessageEntity>.from(_currentMessages),
            newMessage: sentMessage,
            userSessionReactions: Map.from(_userSessionReactions),
            version: _nextVersion(),
          ),
        );
        _conversationUpdateNotifier.notify(lastMessage: sentMessage);
      },
    );
  }

  Future<void> _onSendImageMessage(
    SendImageMessage event,
    Emitter<ChatMessageState> emit,
  ) async {
    if (_currentConversation == null || _currentLoggedInUserId == null) {
      emit(
        const ChatMessageState.error(
          failure: Failure.unknownError(message: "Chat not initialized."),
        ),
      );
      return;
    }

    emit(
      ChatMessageState.messageSending(
        messages: List.from(_currentMessages),
        userSessionReactions: Map.from(_userSessionReactions),
        version: _messageListVersion,
      ),
    );

    final optimisticId = (-DateTime.now().millisecondsSinceEpoch).toString();
    final optimisticMessage = MessageEntity(
      id: optimisticId,
      conversationId: event.conversationId,
      sender: MessageSenderEntity(
        userId: _currentLoggedInUserId!,
        username:
            _currentConversation?.participants
                .firstWhereOrNull((p) => p.userId == _currentLoggedInUserId)
                ?.user ??
            'Me',
        avatarUrl:
            _currentConversation?.participants
                .firstWhereOrNull((p) => p.userId == _currentLoggedInUserId)
                ?.avatar,
      ),
      content: event.imagePath,
      type: MessageType.image,
      timestamp: DateTime.now(),
      reactions: [],
    );

    _currentMessages.add(optimisticMessage);
    _currentMessages.sort((a, b) => a.timestamp.compareTo(b.timestamp));

    emit(
      Loaded(
        messages: List<MessageEntity>.from(_currentMessages),
        userSessionReactions: Map.from(_userSessionReactions),
        version: _nextVersion(),
      ),
    );

    final MessageInputModel messageInput = MessageInputModel(
      senderId: event.currentUserId,
      type: 'image',
      content: event.imagePath,
    );
    final CreateMessageParams params = CreateMessageParams(
      conversationId: event.conversationId,
      messageInput: messageInput,
    );

    final result = await _createMessageUsecase(params);
    _currentMessages.removeWhere((m) => m.id == optimisticId);

    result.fold(
      (failure) {
        emit(ChatMessageState.error(failure: failure));
        emit(
          Loaded(
            messages: List<MessageEntity>.from(_currentMessages),
            userSessionReactions: Map.from(_userSessionReactions),
            version: _nextVersion(),
          ),
        );
      },
      (sentMessage) {
        if (!_currentMessages.any((m) => m.id == sentMessage.id)) {
          _currentMessages.add(sentMessage);
          _currentMessages.sort((a, b) => a.timestamp.compareTo(b.timestamp));
        }
        emit(
          MessageSent(
            messages: List<MessageEntity>.from(_currentMessages),
            newMessage: sentMessage,
            userSessionReactions: Map.from(_userSessionReactions),
            version: _nextVersion(),
          ),
        );
        _conversationUpdateNotifier.notify(lastMessage: sentMessage);
      },
    );
  }

  Future<void> _onAddReaction(
    AddReaction event,
    Emitter<ChatMessageState> emit,
  ) async {
    if (event.messageId == null) return;

    final messageId = event.messageId!;
    final reactionType = event.reactionType;

    // Optimistic UI update for user session tracking
    final currentReactionsForMessage = _userSessionReactions[messageId] ?? {};
    bool alreadyReactedWithThisType = currentReactionsForMessage.contains(
      reactionType,
    );

    String action;
    if (alreadyReactedWithThisType) {
      currentReactionsForMessage.remove(reactionType);
      action = 'decrement';
    } else {
      currentReactionsForMessage.add(reactionType);
      action = 'increment';
    }
    _userSessionReactions[messageId] = currentReactionsForMessage;

    // Emit updating state for immediate UI feedback if desired
    // For simplicity, we can skip MessageReactionUpdating and go to API call directly
    // or emit it if we want a specific loading indicator for reactions.
    emit(
      MessageReactionUpdating(
        messages: List.from(_currentMessages),
        userSessionReactions: Map.from(_userSessionReactions),
        version: _nextVersion(),
      ),
    );

    final params = UpdateMessageReactionParams(
      messageId: messageId,
      reactionType:
          reactionType
              .name, // Assuming ReactionType enum has a .name getter for the string value
      action: action,
    );

    final result = await _updateMessageReactionUseCase(params);

    result.fold(
      (failure) {
        // Revert optimistic update on failure
        final revertedReactions = _userSessionReactions[messageId] ?? {};
        if (action == 'increment') {
          // Was an add, so remove it
          revertedReactions.remove(reactionType);
        } else {
          // Was a remove, so add it back
          revertedReactions.add(reactionType);
        }
        _userSessionReactions[messageId] = revertedReactions;

        emit(Error(failure: failure));
        // Optionally emit a Loaded or MessageReactionUpdated state with the reverted optimistic UI
        // to ensure UI consistency if Error state doesn't rebuild the list with userSessionReactions.
        emit(
          MessageReactionUpdated(
            messages: List.from(_currentMessages), // original messages
            userSessionReactions: Map.from(
              _userSessionReactions,
            ), // reverted session reactions
            version: _nextVersion(),
          ),
        );
      },
      (reactionUpdateResponse) {
        // API call was successful, update the _currentMessages list
        final messageIndex = _currentMessages.indexWhere(
          (m) => m.id == reactionUpdateResponse.messageId,
        );
        if (messageIndex != -1) {
          final originalMessage = _currentMessages[messageIndex];
          final updatedReactionsList = _mapReactionsToEntityList(
            reactionUpdateResponse.reactions,
          );

          _currentMessages[messageIndex] = originalMessage.copyWith(
            reactions: updatedReactionsList,
          );

          emit(
            MessageReactionUpdated(
              messages: List.from(_currentMessages),
              userSessionReactions: Map.from(
                _userSessionReactions,
              ), // Session reactions are already updated optimistically
              version: _nextVersion(),
            ),
          );
        } else {
          // Message not found, this shouldn't happen if messageId is valid
          // Potentially emit an error or log
          print(
            '[ChatMessageBloc] _onAddReaction: Message with ID ${reactionUpdateResponse.messageId} not found after reaction update.',
          );
        }
      },
    );
  }
}
