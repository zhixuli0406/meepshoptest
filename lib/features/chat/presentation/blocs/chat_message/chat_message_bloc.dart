import 'dart:async';
import 'dart:math';
import 'package:collection/collection.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:meepshoptest/core/errors/failure.dart';
import 'package:meepshoptest/features/chat/domain/entities/conversation_entity.dart';
import 'package:meepshoptest/features/message/domain/entities/message_entity.dart';
import 'package:meepshoptest/features/message/domain/entities/message_sender_entity.dart';
import 'package:meepshoptest/features/chat/domain/entities/reaction_type.dart';
import 'package:meepshoptest/features/chat/domain/entities/reactions_entity.dart';
import 'package:meepshoptest/features/chat/domain/usecases/create_message_usecase.dart';
import 'package:meepshoptest/features/chat/domain/usecases/get_messages_usecase.dart';
import 'package:meepshoptest/core/shared/notifiers/conversation_update_notifier.dart';
import 'package:injectable/injectable.dart';
import 'package:meepshoptest/core/network/chat_web_socket_service.dart';
import 'package:meepshoptest/features/chat/data/models/message_model.dart';

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
  }) = MessageSending;
  const factory ChatMessageState.messageSent({
    required List<MessageEntity> messages,
    required MessageEntity newMessage,
    @Default({}) Map<String, Set<ReactionType>> userSessionReactions,
  }) = MessageSent;
  const factory ChatMessageState.messageReactionUpdating({
    required List<MessageEntity> messages,
    @Default({}) Map<String, Set<ReactionType>> userSessionReactions,
  }) = MessageReactionUpdating;
  const factory ChatMessageState.messageReactionUpdated({
    required List<MessageEntity> messages,
    @Default({}) Map<String, Set<ReactionType>> userSessionReactions,
  }) = MessageReactionUpdated;
  const factory ChatMessageState.error({required Failure failure}) = Error;
}

@injectable
class ChatMessageBloc extends Bloc<ChatMessageEvent, ChatMessageState> {
  final GetMessagesUsecase _getMessagesUsecase;
  final CreateMessageUsecase _createMessageUsecase;
  final ConversationUpdateNotifier _conversationUpdateNotifier;
  final ChatWebSocketService _chatWebSocketService;
  StreamSubscription? _webSocketMessagesSubscription;

  String? _currentLoggedInUserId;
  ConversationEntity? _currentConversation;

  String? _currentConversationId;
  List<MessageEntity> _currentMessages = [];

  final Map<String, Set<ReactionType>> _userSessionReactions = {};

  ChatMessageBloc(
    this._getMessagesUsecase,
    this._createMessageUsecase,
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

  Future<void> _onInitializeChat(
    InitializeChat event,
    Emitter<ChatMessageState> emit,
  ) async {
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
          version: DateTime.now().millisecondsSinceEpoch,
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
        emit(ChatMessageState.error(failure: failure));
      },
      (messages) {
        _currentMessages = messages;
        _currentMessages.sort((a, b) => a.timestamp.compareTo(b.timestamp));

        emit(
          Loaded(
            messages: List<MessageEntity>.from(_currentMessages),
            userSessionReactions: Map.from(_userSessionReactions),
            version: DateTime.now().millisecondsSinceEpoch,
          ),
        );
      },
    );
  }

  Future<void> _onSendMessage(
    SendMessage event,
    Emitter<ChatMessageState> emit,
  ) async {
    if (_currentConversation == null || _currentLoggedInUserId == null) {
      emit(
        ChatMessageState.error(
          failure: Failure.unknownError(message: "Chat not initialized."),
        ),
      );
      return;
    }

    emit(
      ChatMessageState.messageSending(
        messages: List.from(_currentMessages),
        userSessionReactions: Map.from(_userSessionReactions),
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
        version: DateTime.now().millisecondsSinceEpoch,
      ),
    );

    final params = CreateMessageParams(
      conversationId: event.conversationId,
      messageText: event.messageText,
      currentUserId: event.currentUserId,
      senderName: 'Me (Sent via params)',
      senderAvatar: '',
      messageType: 'text',
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
            version: DateTime.now().millisecondsSinceEpoch + 1,
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
        ChatMessageState.error(
          failure: Failure.unknownError(message: "Chat not initialized."),
        ),
      );
      return;
    }

    emit(
      ChatMessageState.messageSending(
        messages: List.from(_currentMessages),
        userSessionReactions: Map.from(_userSessionReactions),
      ),
    );

    final optimisticId = (-DateTime.now().millisecondsSinceEpoch).toString();
    final optimisticMessage = MessageEntity(
      id: optimisticId,
      conversationId: event.conversationId,
      sender: MessageSenderEntity(
        userId: _currentLoggedInUserId!,
        username: 'Me',
        avatarUrl: '',
      ),
      content: 'Uploading: ${event.imagePath.split('/').last}',
      type: MessageType.image,
      timestamp: DateTime.now(),
      reactions: [],
      imageUrl: event.imagePath,
      s3Key: null,
    );
    _currentMessages.add(optimisticMessage);
    _currentMessages.sort((a, b) => a.timestamp.compareTo(b.timestamp));
    emit(
      Loaded(
        messages: List<MessageEntity>.from(_currentMessages),
        userSessionReactions: Map.from(_userSessionReactions),
        version: DateTime.now().millisecondsSinceEpoch,
      ),
    );

    await Future.delayed(const Duration(seconds: 2));
    String? uploadedImageUrl;
    if (Random().nextBool()) {
      uploadedImageUrl =
          'https://picsum.photos/seed/${Uri.encodeComponent(optimisticId)}/200/300';
    } else {
      _currentMessages.removeWhere((m) => m.id == optimisticId);
      emit(
        ChatMessageState.error(
          failure: Failure.unknownError(message: "Image upload failed (mock)"),
        ),
      );
      emit(
        Loaded(
          messages: List<MessageEntity>.from(_currentMessages),
          userSessionReactions: Map.from(_userSessionReactions),
          version: DateTime.now().millisecondsSinceEpoch + 1,
        ),
      );
      return;
    }

    if (uploadedImageUrl == null) {
      _currentMessages.removeWhere((m) => m.id == optimisticId);
      emit(
        ChatMessageState.error(
          failure: Failure.unknownError(
            message: "Image upload failed, no URL obtained (mock).",
          ),
        ),
      );
      emit(
        Loaded(
          messages: List<MessageEntity>.from(_currentMessages),
          userSessionReactions: Map.from(_userSessionReactions),
          version: DateTime.now().millisecondsSinceEpoch + 1,
        ),
      );
      return;
    }

    final params = CreateMessageParams(
      conversationId: event.conversationId,
      messageText: uploadedImageUrl,
      currentUserId: event.currentUserId,
      senderName: 'Me',
      senderAvatar: '',
      messageType: 'image',
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
            version: DateTime.now().millisecondsSinceEpoch + 1,
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
    if (_currentConversation == null || _currentLoggedInUserId == null) {
      emit(
        ChatMessageState.error(
          failure: Failure.unknownError(message: "Chat not initialized."),
        ),
      );
      return;
    }

    if (event.messageId == null) {
      print("[ChatMessageBloc] AddReaction event has null messageId.");
      return;
    }
    final messageId = event.messageId!;

    final messageIndex = _currentMessages.indexWhere((m) => m.id == messageId);

    if (messageIndex == -1) {
      print(
        "[ChatMessageBloc] Message with ID $messageId not found for reaction.",
      );
      return;
    }

    emit(
      ChatMessageState.messageReactionUpdating(
        messages: List<MessageEntity>.from(_currentMessages),
        userSessionReactions: Map.from(_userSessionReactions),
      ),
    );

    final messageToUpdate = _currentMessages[messageIndex];

    List<ReactionDetailEntity> modifiableReactions = List.from(
      messageToUpdate.reactions ?? [],
    );

    int existingReactionEntityIndex = modifiableReactions.indexWhere(
      (r) => r.type == event.reactionType,
    );

    _userSessionReactions.putIfAbsent(messageId, () => <ReactionType>{});
    bool currentUserHadReactedWithThisType = _userSessionReactions[messageId]!
        .contains(event.reactionType);

    if (currentUserHadReactedWithThisType) {
      _userSessionReactions[messageId]!.remove(event.reactionType);
      if (existingReactionEntityIndex != -1) {
        ReactionDetailEntity entity =
            modifiableReactions[existingReactionEntityIndex];
        if (entity.count > 1) {
          modifiableReactions[existingReactionEntityIndex] = entity.copyWith(
            count: entity.count - 1,
          );
        } else {
          modifiableReactions.removeAt(existingReactionEntityIndex);
        }
      }
    } else {
      _userSessionReactions[messageId]!.add(event.reactionType);
      if (existingReactionEntityIndex != -1) {
        ReactionDetailEntity entity =
            modifiableReactions[existingReactionEntityIndex];
        modifiableReactions[existingReactionEntityIndex] = entity.copyWith(
          count: entity.count + 1,
        );
      } else {
        modifiableReactions.add(
          ReactionDetailEntity(type: event.reactionType, count: 1),
        );
      }
    }

    modifiableReactions.sort((a, b) => a.type.index.compareTo(b.type.index));
    modifiableReactions.removeWhere((r) => r.count <= 0);

    _currentMessages[messageIndex] = messageToUpdate.copyWith(
      reactions: modifiableReactions.isEmpty ? null : modifiableReactions,
    );

    emit(
      ChatMessageState.messageReactionUpdated(
        messages: List<MessageEntity>.from(_currentMessages),
        userSessionReactions: Map.from(_userSessionReactions),
      ),
    );
  }
}
