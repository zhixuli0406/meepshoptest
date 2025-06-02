// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'chat_message_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$ChatMessageEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            ConversationEntity conversation, String currentUserId)
        initializeChat,
    required TResult Function(String conversationId) loadMessages,
    required TResult Function(
            String conversationId, String messageText, String currentUserId)
        sendMessage,
    required TResult Function(String conversationId, String? messageId,
            ReactionType reactionType, String currentUserId)
        addReaction,
    required TResult Function(
            String conversationId, String imagePath, String currentUserId)
        sendImageMessage,
    required TResult Function(MessageEntity message)
        messageReceivedViaWebSocket,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(ConversationEntity conversation, String currentUserId)?
        initializeChat,
    TResult? Function(String conversationId)? loadMessages,
    TResult? Function(
            String conversationId, String messageText, String currentUserId)?
        sendMessage,
    TResult? Function(String conversationId, String? messageId,
            ReactionType reactionType, String currentUserId)?
        addReaction,
    TResult? Function(
            String conversationId, String imagePath, String currentUserId)?
        sendImageMessage,
    TResult? Function(MessageEntity message)? messageReceivedViaWebSocket,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(ConversationEntity conversation, String currentUserId)?
        initializeChat,
    TResult Function(String conversationId)? loadMessages,
    TResult Function(
            String conversationId, String messageText, String currentUserId)?
        sendMessage,
    TResult Function(String conversationId, String? messageId,
            ReactionType reactionType, String currentUserId)?
        addReaction,
    TResult Function(
            String conversationId, String imagePath, String currentUserId)?
        sendImageMessage,
    TResult Function(MessageEntity message)? messageReceivedViaWebSocket,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(InitializeChat value) initializeChat,
    required TResult Function(LoadMessages value) loadMessages,
    required TResult Function(SendMessage value) sendMessage,
    required TResult Function(AddReaction value) addReaction,
    required TResult Function(SendImageMessage value) sendImageMessage,
    required TResult Function(_MessageReceivedViaWebSocket value)
        messageReceivedViaWebSocket,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(InitializeChat value)? initializeChat,
    TResult? Function(LoadMessages value)? loadMessages,
    TResult? Function(SendMessage value)? sendMessage,
    TResult? Function(AddReaction value)? addReaction,
    TResult? Function(SendImageMessage value)? sendImageMessage,
    TResult? Function(_MessageReceivedViaWebSocket value)?
        messageReceivedViaWebSocket,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InitializeChat value)? initializeChat,
    TResult Function(LoadMessages value)? loadMessages,
    TResult Function(SendMessage value)? sendMessage,
    TResult Function(AddReaction value)? addReaction,
    TResult Function(SendImageMessage value)? sendImageMessage,
    TResult Function(_MessageReceivedViaWebSocket value)?
        messageReceivedViaWebSocket,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ChatMessageEventCopyWith<$Res> {
  factory $ChatMessageEventCopyWith(
          ChatMessageEvent value, $Res Function(ChatMessageEvent) then) =
      _$ChatMessageEventCopyWithImpl<$Res, ChatMessageEvent>;
}

/// @nodoc
class _$ChatMessageEventCopyWithImpl<$Res, $Val extends ChatMessageEvent>
    implements $ChatMessageEventCopyWith<$Res> {
  _$ChatMessageEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ChatMessageEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$InitializeChatImplCopyWith<$Res> {
  factory _$$InitializeChatImplCopyWith(_$InitializeChatImpl value,
          $Res Function(_$InitializeChatImpl) then) =
      __$$InitializeChatImplCopyWithImpl<$Res>;
  @useResult
  $Res call({ConversationEntity conversation, String currentUserId});

  $ConversationEntityCopyWith<$Res> get conversation;
}

/// @nodoc
class __$$InitializeChatImplCopyWithImpl<$Res>
    extends _$ChatMessageEventCopyWithImpl<$Res, _$InitializeChatImpl>
    implements _$$InitializeChatImplCopyWith<$Res> {
  __$$InitializeChatImplCopyWithImpl(
      _$InitializeChatImpl _value, $Res Function(_$InitializeChatImpl) _then)
      : super(_value, _then);

  /// Create a copy of ChatMessageEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? conversation = null,
    Object? currentUserId = null,
  }) {
    return _then(_$InitializeChatImpl(
      conversation: null == conversation
          ? _value.conversation
          : conversation // ignore: cast_nullable_to_non_nullable
              as ConversationEntity,
      currentUserId: null == currentUserId
          ? _value.currentUserId
          : currentUserId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }

  /// Create a copy of ChatMessageEvent
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ConversationEntityCopyWith<$Res> get conversation {
    return $ConversationEntityCopyWith<$Res>(_value.conversation, (value) {
      return _then(_value.copyWith(conversation: value));
    });
  }
}

/// @nodoc

class _$InitializeChatImpl implements InitializeChat {
  const _$InitializeChatImpl(
      {required this.conversation, required this.currentUserId});

  @override
  final ConversationEntity conversation;
  @override
  final String currentUserId;

  @override
  String toString() {
    return 'ChatMessageEvent.initializeChat(conversation: $conversation, currentUserId: $currentUserId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$InitializeChatImpl &&
            (identical(other.conversation, conversation) ||
                other.conversation == conversation) &&
            (identical(other.currentUserId, currentUserId) ||
                other.currentUserId == currentUserId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, conversation, currentUserId);

  /// Create a copy of ChatMessageEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$InitializeChatImplCopyWith<_$InitializeChatImpl> get copyWith =>
      __$$InitializeChatImplCopyWithImpl<_$InitializeChatImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            ConversationEntity conversation, String currentUserId)
        initializeChat,
    required TResult Function(String conversationId) loadMessages,
    required TResult Function(
            String conversationId, String messageText, String currentUserId)
        sendMessage,
    required TResult Function(String conversationId, String? messageId,
            ReactionType reactionType, String currentUserId)
        addReaction,
    required TResult Function(
            String conversationId, String imagePath, String currentUserId)
        sendImageMessage,
    required TResult Function(MessageEntity message)
        messageReceivedViaWebSocket,
  }) {
    return initializeChat(conversation, currentUserId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(ConversationEntity conversation, String currentUserId)?
        initializeChat,
    TResult? Function(String conversationId)? loadMessages,
    TResult? Function(
            String conversationId, String messageText, String currentUserId)?
        sendMessage,
    TResult? Function(String conversationId, String? messageId,
            ReactionType reactionType, String currentUserId)?
        addReaction,
    TResult? Function(
            String conversationId, String imagePath, String currentUserId)?
        sendImageMessage,
    TResult? Function(MessageEntity message)? messageReceivedViaWebSocket,
  }) {
    return initializeChat?.call(conversation, currentUserId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(ConversationEntity conversation, String currentUserId)?
        initializeChat,
    TResult Function(String conversationId)? loadMessages,
    TResult Function(
            String conversationId, String messageText, String currentUserId)?
        sendMessage,
    TResult Function(String conversationId, String? messageId,
            ReactionType reactionType, String currentUserId)?
        addReaction,
    TResult Function(
            String conversationId, String imagePath, String currentUserId)?
        sendImageMessage,
    TResult Function(MessageEntity message)? messageReceivedViaWebSocket,
    required TResult orElse(),
  }) {
    if (initializeChat != null) {
      return initializeChat(conversation, currentUserId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(InitializeChat value) initializeChat,
    required TResult Function(LoadMessages value) loadMessages,
    required TResult Function(SendMessage value) sendMessage,
    required TResult Function(AddReaction value) addReaction,
    required TResult Function(SendImageMessage value) sendImageMessage,
    required TResult Function(_MessageReceivedViaWebSocket value)
        messageReceivedViaWebSocket,
  }) {
    return initializeChat(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(InitializeChat value)? initializeChat,
    TResult? Function(LoadMessages value)? loadMessages,
    TResult? Function(SendMessage value)? sendMessage,
    TResult? Function(AddReaction value)? addReaction,
    TResult? Function(SendImageMessage value)? sendImageMessage,
    TResult? Function(_MessageReceivedViaWebSocket value)?
        messageReceivedViaWebSocket,
  }) {
    return initializeChat?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InitializeChat value)? initializeChat,
    TResult Function(LoadMessages value)? loadMessages,
    TResult Function(SendMessage value)? sendMessage,
    TResult Function(AddReaction value)? addReaction,
    TResult Function(SendImageMessage value)? sendImageMessage,
    TResult Function(_MessageReceivedViaWebSocket value)?
        messageReceivedViaWebSocket,
    required TResult orElse(),
  }) {
    if (initializeChat != null) {
      return initializeChat(this);
    }
    return orElse();
  }
}

abstract class InitializeChat implements ChatMessageEvent {
  const factory InitializeChat(
      {required final ConversationEntity conversation,
      required final String currentUserId}) = _$InitializeChatImpl;

  ConversationEntity get conversation;
  String get currentUserId;

  /// Create a copy of ChatMessageEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$InitializeChatImplCopyWith<_$InitializeChatImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$LoadMessagesImplCopyWith<$Res> {
  factory _$$LoadMessagesImplCopyWith(
          _$LoadMessagesImpl value, $Res Function(_$LoadMessagesImpl) then) =
      __$$LoadMessagesImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String conversationId});
}

/// @nodoc
class __$$LoadMessagesImplCopyWithImpl<$Res>
    extends _$ChatMessageEventCopyWithImpl<$Res, _$LoadMessagesImpl>
    implements _$$LoadMessagesImplCopyWith<$Res> {
  __$$LoadMessagesImplCopyWithImpl(
      _$LoadMessagesImpl _value, $Res Function(_$LoadMessagesImpl) _then)
      : super(_value, _then);

  /// Create a copy of ChatMessageEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? conversationId = null,
  }) {
    return _then(_$LoadMessagesImpl(
      conversationId: null == conversationId
          ? _value.conversationId
          : conversationId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$LoadMessagesImpl implements LoadMessages {
  const _$LoadMessagesImpl({required this.conversationId});

  @override
  final String conversationId;

  @override
  String toString() {
    return 'ChatMessageEvent.loadMessages(conversationId: $conversationId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LoadMessagesImpl &&
            (identical(other.conversationId, conversationId) ||
                other.conversationId == conversationId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, conversationId);

  /// Create a copy of ChatMessageEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$LoadMessagesImplCopyWith<_$LoadMessagesImpl> get copyWith =>
      __$$LoadMessagesImplCopyWithImpl<_$LoadMessagesImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            ConversationEntity conversation, String currentUserId)
        initializeChat,
    required TResult Function(String conversationId) loadMessages,
    required TResult Function(
            String conversationId, String messageText, String currentUserId)
        sendMessage,
    required TResult Function(String conversationId, String? messageId,
            ReactionType reactionType, String currentUserId)
        addReaction,
    required TResult Function(
            String conversationId, String imagePath, String currentUserId)
        sendImageMessage,
    required TResult Function(MessageEntity message)
        messageReceivedViaWebSocket,
  }) {
    return loadMessages(conversationId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(ConversationEntity conversation, String currentUserId)?
        initializeChat,
    TResult? Function(String conversationId)? loadMessages,
    TResult? Function(
            String conversationId, String messageText, String currentUserId)?
        sendMessage,
    TResult? Function(String conversationId, String? messageId,
            ReactionType reactionType, String currentUserId)?
        addReaction,
    TResult? Function(
            String conversationId, String imagePath, String currentUserId)?
        sendImageMessage,
    TResult? Function(MessageEntity message)? messageReceivedViaWebSocket,
  }) {
    return loadMessages?.call(conversationId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(ConversationEntity conversation, String currentUserId)?
        initializeChat,
    TResult Function(String conversationId)? loadMessages,
    TResult Function(
            String conversationId, String messageText, String currentUserId)?
        sendMessage,
    TResult Function(String conversationId, String? messageId,
            ReactionType reactionType, String currentUserId)?
        addReaction,
    TResult Function(
            String conversationId, String imagePath, String currentUserId)?
        sendImageMessage,
    TResult Function(MessageEntity message)? messageReceivedViaWebSocket,
    required TResult orElse(),
  }) {
    if (loadMessages != null) {
      return loadMessages(conversationId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(InitializeChat value) initializeChat,
    required TResult Function(LoadMessages value) loadMessages,
    required TResult Function(SendMessage value) sendMessage,
    required TResult Function(AddReaction value) addReaction,
    required TResult Function(SendImageMessage value) sendImageMessage,
    required TResult Function(_MessageReceivedViaWebSocket value)
        messageReceivedViaWebSocket,
  }) {
    return loadMessages(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(InitializeChat value)? initializeChat,
    TResult? Function(LoadMessages value)? loadMessages,
    TResult? Function(SendMessage value)? sendMessage,
    TResult? Function(AddReaction value)? addReaction,
    TResult? Function(SendImageMessage value)? sendImageMessage,
    TResult? Function(_MessageReceivedViaWebSocket value)?
        messageReceivedViaWebSocket,
  }) {
    return loadMessages?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InitializeChat value)? initializeChat,
    TResult Function(LoadMessages value)? loadMessages,
    TResult Function(SendMessage value)? sendMessage,
    TResult Function(AddReaction value)? addReaction,
    TResult Function(SendImageMessage value)? sendImageMessage,
    TResult Function(_MessageReceivedViaWebSocket value)?
        messageReceivedViaWebSocket,
    required TResult orElse(),
  }) {
    if (loadMessages != null) {
      return loadMessages(this);
    }
    return orElse();
  }
}

abstract class LoadMessages implements ChatMessageEvent {
  const factory LoadMessages({required final String conversationId}) =
      _$LoadMessagesImpl;

  String get conversationId;

  /// Create a copy of ChatMessageEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$LoadMessagesImplCopyWith<_$LoadMessagesImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$SendMessageImplCopyWith<$Res> {
  factory _$$SendMessageImplCopyWith(
          _$SendMessageImpl value, $Res Function(_$SendMessageImpl) then) =
      __$$SendMessageImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String conversationId, String messageText, String currentUserId});
}

/// @nodoc
class __$$SendMessageImplCopyWithImpl<$Res>
    extends _$ChatMessageEventCopyWithImpl<$Res, _$SendMessageImpl>
    implements _$$SendMessageImplCopyWith<$Res> {
  __$$SendMessageImplCopyWithImpl(
      _$SendMessageImpl _value, $Res Function(_$SendMessageImpl) _then)
      : super(_value, _then);

  /// Create a copy of ChatMessageEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? conversationId = null,
    Object? messageText = null,
    Object? currentUserId = null,
  }) {
    return _then(_$SendMessageImpl(
      conversationId: null == conversationId
          ? _value.conversationId
          : conversationId // ignore: cast_nullable_to_non_nullable
              as String,
      messageText: null == messageText
          ? _value.messageText
          : messageText // ignore: cast_nullable_to_non_nullable
              as String,
      currentUserId: null == currentUserId
          ? _value.currentUserId
          : currentUserId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$SendMessageImpl implements SendMessage {
  const _$SendMessageImpl(
      {required this.conversationId,
      required this.messageText,
      required this.currentUserId});

  @override
  final String conversationId;
  @override
  final String messageText;
  @override
  final String currentUserId;

  @override
  String toString() {
    return 'ChatMessageEvent.sendMessage(conversationId: $conversationId, messageText: $messageText, currentUserId: $currentUserId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SendMessageImpl &&
            (identical(other.conversationId, conversationId) ||
                other.conversationId == conversationId) &&
            (identical(other.messageText, messageText) ||
                other.messageText == messageText) &&
            (identical(other.currentUserId, currentUserId) ||
                other.currentUserId == currentUserId));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, conversationId, messageText, currentUserId);

  /// Create a copy of ChatMessageEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SendMessageImplCopyWith<_$SendMessageImpl> get copyWith =>
      __$$SendMessageImplCopyWithImpl<_$SendMessageImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            ConversationEntity conversation, String currentUserId)
        initializeChat,
    required TResult Function(String conversationId) loadMessages,
    required TResult Function(
            String conversationId, String messageText, String currentUserId)
        sendMessage,
    required TResult Function(String conversationId, String? messageId,
            ReactionType reactionType, String currentUserId)
        addReaction,
    required TResult Function(
            String conversationId, String imagePath, String currentUserId)
        sendImageMessage,
    required TResult Function(MessageEntity message)
        messageReceivedViaWebSocket,
  }) {
    return sendMessage(conversationId, messageText, currentUserId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(ConversationEntity conversation, String currentUserId)?
        initializeChat,
    TResult? Function(String conversationId)? loadMessages,
    TResult? Function(
            String conversationId, String messageText, String currentUserId)?
        sendMessage,
    TResult? Function(String conversationId, String? messageId,
            ReactionType reactionType, String currentUserId)?
        addReaction,
    TResult? Function(
            String conversationId, String imagePath, String currentUserId)?
        sendImageMessage,
    TResult? Function(MessageEntity message)? messageReceivedViaWebSocket,
  }) {
    return sendMessage?.call(conversationId, messageText, currentUserId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(ConversationEntity conversation, String currentUserId)?
        initializeChat,
    TResult Function(String conversationId)? loadMessages,
    TResult Function(
            String conversationId, String messageText, String currentUserId)?
        sendMessage,
    TResult Function(String conversationId, String? messageId,
            ReactionType reactionType, String currentUserId)?
        addReaction,
    TResult Function(
            String conversationId, String imagePath, String currentUserId)?
        sendImageMessage,
    TResult Function(MessageEntity message)? messageReceivedViaWebSocket,
    required TResult orElse(),
  }) {
    if (sendMessage != null) {
      return sendMessage(conversationId, messageText, currentUserId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(InitializeChat value) initializeChat,
    required TResult Function(LoadMessages value) loadMessages,
    required TResult Function(SendMessage value) sendMessage,
    required TResult Function(AddReaction value) addReaction,
    required TResult Function(SendImageMessage value) sendImageMessage,
    required TResult Function(_MessageReceivedViaWebSocket value)
        messageReceivedViaWebSocket,
  }) {
    return sendMessage(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(InitializeChat value)? initializeChat,
    TResult? Function(LoadMessages value)? loadMessages,
    TResult? Function(SendMessage value)? sendMessage,
    TResult? Function(AddReaction value)? addReaction,
    TResult? Function(SendImageMessage value)? sendImageMessage,
    TResult? Function(_MessageReceivedViaWebSocket value)?
        messageReceivedViaWebSocket,
  }) {
    return sendMessage?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InitializeChat value)? initializeChat,
    TResult Function(LoadMessages value)? loadMessages,
    TResult Function(SendMessage value)? sendMessage,
    TResult Function(AddReaction value)? addReaction,
    TResult Function(SendImageMessage value)? sendImageMessage,
    TResult Function(_MessageReceivedViaWebSocket value)?
        messageReceivedViaWebSocket,
    required TResult orElse(),
  }) {
    if (sendMessage != null) {
      return sendMessage(this);
    }
    return orElse();
  }
}

abstract class SendMessage implements ChatMessageEvent {
  const factory SendMessage(
      {required final String conversationId,
      required final String messageText,
      required final String currentUserId}) = _$SendMessageImpl;

  String get conversationId;
  String get messageText;
  String get currentUserId;

  /// Create a copy of ChatMessageEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SendMessageImplCopyWith<_$SendMessageImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$AddReactionImplCopyWith<$Res> {
  factory _$$AddReactionImplCopyWith(
          _$AddReactionImpl value, $Res Function(_$AddReactionImpl) then) =
      __$$AddReactionImplCopyWithImpl<$Res>;
  @useResult
  $Res call(
      {String conversationId,
      String? messageId,
      ReactionType reactionType,
      String currentUserId});
}

/// @nodoc
class __$$AddReactionImplCopyWithImpl<$Res>
    extends _$ChatMessageEventCopyWithImpl<$Res, _$AddReactionImpl>
    implements _$$AddReactionImplCopyWith<$Res> {
  __$$AddReactionImplCopyWithImpl(
      _$AddReactionImpl _value, $Res Function(_$AddReactionImpl) _then)
      : super(_value, _then);

  /// Create a copy of ChatMessageEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? conversationId = null,
    Object? messageId = freezed,
    Object? reactionType = null,
    Object? currentUserId = null,
  }) {
    return _then(_$AddReactionImpl(
      conversationId: null == conversationId
          ? _value.conversationId
          : conversationId // ignore: cast_nullable_to_non_nullable
              as String,
      messageId: freezed == messageId
          ? _value.messageId
          : messageId // ignore: cast_nullable_to_non_nullable
              as String?,
      reactionType: null == reactionType
          ? _value.reactionType
          : reactionType // ignore: cast_nullable_to_non_nullable
              as ReactionType,
      currentUserId: null == currentUserId
          ? _value.currentUserId
          : currentUserId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$AddReactionImpl implements AddReaction {
  const _$AddReactionImpl(
      {required this.conversationId,
      required this.messageId,
      required this.reactionType,
      required this.currentUserId});

  @override
  final String conversationId;
  @override
  final String? messageId;
  @override
  final ReactionType reactionType;
  @override
  final String currentUserId;

  @override
  String toString() {
    return 'ChatMessageEvent.addReaction(conversationId: $conversationId, messageId: $messageId, reactionType: $reactionType, currentUserId: $currentUserId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AddReactionImpl &&
            (identical(other.conversationId, conversationId) ||
                other.conversationId == conversationId) &&
            (identical(other.messageId, messageId) ||
                other.messageId == messageId) &&
            (identical(other.reactionType, reactionType) ||
                other.reactionType == reactionType) &&
            (identical(other.currentUserId, currentUserId) ||
                other.currentUserId == currentUserId));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, conversationId, messageId, reactionType, currentUserId);

  /// Create a copy of ChatMessageEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$AddReactionImplCopyWith<_$AddReactionImpl> get copyWith =>
      __$$AddReactionImplCopyWithImpl<_$AddReactionImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            ConversationEntity conversation, String currentUserId)
        initializeChat,
    required TResult Function(String conversationId) loadMessages,
    required TResult Function(
            String conversationId, String messageText, String currentUserId)
        sendMessage,
    required TResult Function(String conversationId, String? messageId,
            ReactionType reactionType, String currentUserId)
        addReaction,
    required TResult Function(
            String conversationId, String imagePath, String currentUserId)
        sendImageMessage,
    required TResult Function(MessageEntity message)
        messageReceivedViaWebSocket,
  }) {
    return addReaction(conversationId, messageId, reactionType, currentUserId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(ConversationEntity conversation, String currentUserId)?
        initializeChat,
    TResult? Function(String conversationId)? loadMessages,
    TResult? Function(
            String conversationId, String messageText, String currentUserId)?
        sendMessage,
    TResult? Function(String conversationId, String? messageId,
            ReactionType reactionType, String currentUserId)?
        addReaction,
    TResult? Function(
            String conversationId, String imagePath, String currentUserId)?
        sendImageMessage,
    TResult? Function(MessageEntity message)? messageReceivedViaWebSocket,
  }) {
    return addReaction?.call(
        conversationId, messageId, reactionType, currentUserId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(ConversationEntity conversation, String currentUserId)?
        initializeChat,
    TResult Function(String conversationId)? loadMessages,
    TResult Function(
            String conversationId, String messageText, String currentUserId)?
        sendMessage,
    TResult Function(String conversationId, String? messageId,
            ReactionType reactionType, String currentUserId)?
        addReaction,
    TResult Function(
            String conversationId, String imagePath, String currentUserId)?
        sendImageMessage,
    TResult Function(MessageEntity message)? messageReceivedViaWebSocket,
    required TResult orElse(),
  }) {
    if (addReaction != null) {
      return addReaction(
          conversationId, messageId, reactionType, currentUserId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(InitializeChat value) initializeChat,
    required TResult Function(LoadMessages value) loadMessages,
    required TResult Function(SendMessage value) sendMessage,
    required TResult Function(AddReaction value) addReaction,
    required TResult Function(SendImageMessage value) sendImageMessage,
    required TResult Function(_MessageReceivedViaWebSocket value)
        messageReceivedViaWebSocket,
  }) {
    return addReaction(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(InitializeChat value)? initializeChat,
    TResult? Function(LoadMessages value)? loadMessages,
    TResult? Function(SendMessage value)? sendMessage,
    TResult? Function(AddReaction value)? addReaction,
    TResult? Function(SendImageMessage value)? sendImageMessage,
    TResult? Function(_MessageReceivedViaWebSocket value)?
        messageReceivedViaWebSocket,
  }) {
    return addReaction?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InitializeChat value)? initializeChat,
    TResult Function(LoadMessages value)? loadMessages,
    TResult Function(SendMessage value)? sendMessage,
    TResult Function(AddReaction value)? addReaction,
    TResult Function(SendImageMessage value)? sendImageMessage,
    TResult Function(_MessageReceivedViaWebSocket value)?
        messageReceivedViaWebSocket,
    required TResult orElse(),
  }) {
    if (addReaction != null) {
      return addReaction(this);
    }
    return orElse();
  }
}

abstract class AddReaction implements ChatMessageEvent {
  const factory AddReaction(
      {required final String conversationId,
      required final String? messageId,
      required final ReactionType reactionType,
      required final String currentUserId}) = _$AddReactionImpl;

  String get conversationId;
  String? get messageId;
  ReactionType get reactionType;
  String get currentUserId;

  /// Create a copy of ChatMessageEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$AddReactionImplCopyWith<_$AddReactionImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$SendImageMessageImplCopyWith<$Res> {
  factory _$$SendImageMessageImplCopyWith(_$SendImageMessageImpl value,
          $Res Function(_$SendImageMessageImpl) then) =
      __$$SendImageMessageImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String conversationId, String imagePath, String currentUserId});
}

/// @nodoc
class __$$SendImageMessageImplCopyWithImpl<$Res>
    extends _$ChatMessageEventCopyWithImpl<$Res, _$SendImageMessageImpl>
    implements _$$SendImageMessageImplCopyWith<$Res> {
  __$$SendImageMessageImplCopyWithImpl(_$SendImageMessageImpl _value,
      $Res Function(_$SendImageMessageImpl) _then)
      : super(_value, _then);

  /// Create a copy of ChatMessageEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? conversationId = null,
    Object? imagePath = null,
    Object? currentUserId = null,
  }) {
    return _then(_$SendImageMessageImpl(
      conversationId: null == conversationId
          ? _value.conversationId
          : conversationId // ignore: cast_nullable_to_non_nullable
              as String,
      imagePath: null == imagePath
          ? _value.imagePath
          : imagePath // ignore: cast_nullable_to_non_nullable
              as String,
      currentUserId: null == currentUserId
          ? _value.currentUserId
          : currentUserId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$SendImageMessageImpl implements SendImageMessage {
  const _$SendImageMessageImpl(
      {required this.conversationId,
      required this.imagePath,
      required this.currentUserId});

  @override
  final String conversationId;
  @override
  final String imagePath;
  @override
  final String currentUserId;

  @override
  String toString() {
    return 'ChatMessageEvent.sendImageMessage(conversationId: $conversationId, imagePath: $imagePath, currentUserId: $currentUserId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SendImageMessageImpl &&
            (identical(other.conversationId, conversationId) ||
                other.conversationId == conversationId) &&
            (identical(other.imagePath, imagePath) ||
                other.imagePath == imagePath) &&
            (identical(other.currentUserId, currentUserId) ||
                other.currentUserId == currentUserId));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, conversationId, imagePath, currentUserId);

  /// Create a copy of ChatMessageEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SendImageMessageImplCopyWith<_$SendImageMessageImpl> get copyWith =>
      __$$SendImageMessageImplCopyWithImpl<_$SendImageMessageImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            ConversationEntity conversation, String currentUserId)
        initializeChat,
    required TResult Function(String conversationId) loadMessages,
    required TResult Function(
            String conversationId, String messageText, String currentUserId)
        sendMessage,
    required TResult Function(String conversationId, String? messageId,
            ReactionType reactionType, String currentUserId)
        addReaction,
    required TResult Function(
            String conversationId, String imagePath, String currentUserId)
        sendImageMessage,
    required TResult Function(MessageEntity message)
        messageReceivedViaWebSocket,
  }) {
    return sendImageMessage(conversationId, imagePath, currentUserId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(ConversationEntity conversation, String currentUserId)?
        initializeChat,
    TResult? Function(String conversationId)? loadMessages,
    TResult? Function(
            String conversationId, String messageText, String currentUserId)?
        sendMessage,
    TResult? Function(String conversationId, String? messageId,
            ReactionType reactionType, String currentUserId)?
        addReaction,
    TResult? Function(
            String conversationId, String imagePath, String currentUserId)?
        sendImageMessage,
    TResult? Function(MessageEntity message)? messageReceivedViaWebSocket,
  }) {
    return sendImageMessage?.call(conversationId, imagePath, currentUserId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(ConversationEntity conversation, String currentUserId)?
        initializeChat,
    TResult Function(String conversationId)? loadMessages,
    TResult Function(
            String conversationId, String messageText, String currentUserId)?
        sendMessage,
    TResult Function(String conversationId, String? messageId,
            ReactionType reactionType, String currentUserId)?
        addReaction,
    TResult Function(
            String conversationId, String imagePath, String currentUserId)?
        sendImageMessage,
    TResult Function(MessageEntity message)? messageReceivedViaWebSocket,
    required TResult orElse(),
  }) {
    if (sendImageMessage != null) {
      return sendImageMessage(conversationId, imagePath, currentUserId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(InitializeChat value) initializeChat,
    required TResult Function(LoadMessages value) loadMessages,
    required TResult Function(SendMessage value) sendMessage,
    required TResult Function(AddReaction value) addReaction,
    required TResult Function(SendImageMessage value) sendImageMessage,
    required TResult Function(_MessageReceivedViaWebSocket value)
        messageReceivedViaWebSocket,
  }) {
    return sendImageMessage(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(InitializeChat value)? initializeChat,
    TResult? Function(LoadMessages value)? loadMessages,
    TResult? Function(SendMessage value)? sendMessage,
    TResult? Function(AddReaction value)? addReaction,
    TResult? Function(SendImageMessage value)? sendImageMessage,
    TResult? Function(_MessageReceivedViaWebSocket value)?
        messageReceivedViaWebSocket,
  }) {
    return sendImageMessage?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InitializeChat value)? initializeChat,
    TResult Function(LoadMessages value)? loadMessages,
    TResult Function(SendMessage value)? sendMessage,
    TResult Function(AddReaction value)? addReaction,
    TResult Function(SendImageMessage value)? sendImageMessage,
    TResult Function(_MessageReceivedViaWebSocket value)?
        messageReceivedViaWebSocket,
    required TResult orElse(),
  }) {
    if (sendImageMessage != null) {
      return sendImageMessage(this);
    }
    return orElse();
  }
}

abstract class SendImageMessage implements ChatMessageEvent {
  const factory SendImageMessage(
      {required final String conversationId,
      required final String imagePath,
      required final String currentUserId}) = _$SendImageMessageImpl;

  String get conversationId;
  String get imagePath;
  String get currentUserId;

  /// Create a copy of ChatMessageEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SendImageMessageImplCopyWith<_$SendImageMessageImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$MessageReceivedViaWebSocketImplCopyWith<$Res> {
  factory _$$MessageReceivedViaWebSocketImplCopyWith(
          _$MessageReceivedViaWebSocketImpl value,
          $Res Function(_$MessageReceivedViaWebSocketImpl) then) =
      __$$MessageReceivedViaWebSocketImplCopyWithImpl<$Res>;
  @useResult
  $Res call({MessageEntity message});

  $MessageEntityCopyWith<$Res> get message;
}

/// @nodoc
class __$$MessageReceivedViaWebSocketImplCopyWithImpl<$Res>
    extends _$ChatMessageEventCopyWithImpl<$Res,
        _$MessageReceivedViaWebSocketImpl>
    implements _$$MessageReceivedViaWebSocketImplCopyWith<$Res> {
  __$$MessageReceivedViaWebSocketImplCopyWithImpl(
      _$MessageReceivedViaWebSocketImpl _value,
      $Res Function(_$MessageReceivedViaWebSocketImpl) _then)
      : super(_value, _then);

  /// Create a copy of ChatMessageEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
  }) {
    return _then(_$MessageReceivedViaWebSocketImpl(
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as MessageEntity,
    ));
  }

  /// Create a copy of ChatMessageEvent
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $MessageEntityCopyWith<$Res> get message {
    return $MessageEntityCopyWith<$Res>(_value.message, (value) {
      return _then(_value.copyWith(message: value));
    });
  }
}

/// @nodoc

class _$MessageReceivedViaWebSocketImpl
    implements _MessageReceivedViaWebSocket {
  const _$MessageReceivedViaWebSocketImpl({required this.message});

  @override
  final MessageEntity message;

  @override
  String toString() {
    return 'ChatMessageEvent.messageReceivedViaWebSocket(message: $message)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MessageReceivedViaWebSocketImpl &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message);

  /// Create a copy of ChatMessageEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$MessageReceivedViaWebSocketImplCopyWith<_$MessageReceivedViaWebSocketImpl>
      get copyWith => __$$MessageReceivedViaWebSocketImplCopyWithImpl<
          _$MessageReceivedViaWebSocketImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            ConversationEntity conversation, String currentUserId)
        initializeChat,
    required TResult Function(String conversationId) loadMessages,
    required TResult Function(
            String conversationId, String messageText, String currentUserId)
        sendMessage,
    required TResult Function(String conversationId, String? messageId,
            ReactionType reactionType, String currentUserId)
        addReaction,
    required TResult Function(
            String conversationId, String imagePath, String currentUserId)
        sendImageMessage,
    required TResult Function(MessageEntity message)
        messageReceivedViaWebSocket,
  }) {
    return messageReceivedViaWebSocket(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(ConversationEntity conversation, String currentUserId)?
        initializeChat,
    TResult? Function(String conversationId)? loadMessages,
    TResult? Function(
            String conversationId, String messageText, String currentUserId)?
        sendMessage,
    TResult? Function(String conversationId, String? messageId,
            ReactionType reactionType, String currentUserId)?
        addReaction,
    TResult? Function(
            String conversationId, String imagePath, String currentUserId)?
        sendImageMessage,
    TResult? Function(MessageEntity message)? messageReceivedViaWebSocket,
  }) {
    return messageReceivedViaWebSocket?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(ConversationEntity conversation, String currentUserId)?
        initializeChat,
    TResult Function(String conversationId)? loadMessages,
    TResult Function(
            String conversationId, String messageText, String currentUserId)?
        sendMessage,
    TResult Function(String conversationId, String? messageId,
            ReactionType reactionType, String currentUserId)?
        addReaction,
    TResult Function(
            String conversationId, String imagePath, String currentUserId)?
        sendImageMessage,
    TResult Function(MessageEntity message)? messageReceivedViaWebSocket,
    required TResult orElse(),
  }) {
    if (messageReceivedViaWebSocket != null) {
      return messageReceivedViaWebSocket(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(InitializeChat value) initializeChat,
    required TResult Function(LoadMessages value) loadMessages,
    required TResult Function(SendMessage value) sendMessage,
    required TResult Function(AddReaction value) addReaction,
    required TResult Function(SendImageMessage value) sendImageMessage,
    required TResult Function(_MessageReceivedViaWebSocket value)
        messageReceivedViaWebSocket,
  }) {
    return messageReceivedViaWebSocket(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(InitializeChat value)? initializeChat,
    TResult? Function(LoadMessages value)? loadMessages,
    TResult? Function(SendMessage value)? sendMessage,
    TResult? Function(AddReaction value)? addReaction,
    TResult? Function(SendImageMessage value)? sendImageMessage,
    TResult? Function(_MessageReceivedViaWebSocket value)?
        messageReceivedViaWebSocket,
  }) {
    return messageReceivedViaWebSocket?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InitializeChat value)? initializeChat,
    TResult Function(LoadMessages value)? loadMessages,
    TResult Function(SendMessage value)? sendMessage,
    TResult Function(AddReaction value)? addReaction,
    TResult Function(SendImageMessage value)? sendImageMessage,
    TResult Function(_MessageReceivedViaWebSocket value)?
        messageReceivedViaWebSocket,
    required TResult orElse(),
  }) {
    if (messageReceivedViaWebSocket != null) {
      return messageReceivedViaWebSocket(this);
    }
    return orElse();
  }
}

abstract class _MessageReceivedViaWebSocket implements ChatMessageEvent {
  const factory _MessageReceivedViaWebSocket(
          {required final MessageEntity message}) =
      _$MessageReceivedViaWebSocketImpl;

  MessageEntity get message;

  /// Create a copy of ChatMessageEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$MessageReceivedViaWebSocketImplCopyWith<_$MessageReceivedViaWebSocketImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$ChatMessageState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<MessageEntity> messages,
            Map<String, Set<ReactionType>> userSessionReactions, int version)
        loaded,
    required TResult Function(List<MessageEntity> messages,
            Map<String, Set<ReactionType>> userSessionReactions)
        messageSending,
    required TResult Function(
            List<MessageEntity> messages,
            MessageEntity newMessage,
            Map<String, Set<ReactionType>> userSessionReactions)
        messageSent,
    required TResult Function(List<MessageEntity> messages,
            Map<String, Set<ReactionType>> userSessionReactions)
        messageReactionUpdating,
    required TResult Function(List<MessageEntity> messages,
            Map<String, Set<ReactionType>> userSessionReactions)
        messageReactionUpdated,
    required TResult Function(Failure failure) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<MessageEntity> messages,
            Map<String, Set<ReactionType>> userSessionReactions, int version)?
        loaded,
    TResult? Function(List<MessageEntity> messages,
            Map<String, Set<ReactionType>> userSessionReactions)?
        messageSending,
    TResult? Function(List<MessageEntity> messages, MessageEntity newMessage,
            Map<String, Set<ReactionType>> userSessionReactions)?
        messageSent,
    TResult? Function(List<MessageEntity> messages,
            Map<String, Set<ReactionType>> userSessionReactions)?
        messageReactionUpdating,
    TResult? Function(List<MessageEntity> messages,
            Map<String, Set<ReactionType>> userSessionReactions)?
        messageReactionUpdated,
    TResult? Function(Failure failure)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<MessageEntity> messages,
            Map<String, Set<ReactionType>> userSessionReactions, int version)?
        loaded,
    TResult Function(List<MessageEntity> messages,
            Map<String, Set<ReactionType>> userSessionReactions)?
        messageSending,
    TResult Function(List<MessageEntity> messages, MessageEntity newMessage,
            Map<String, Set<ReactionType>> userSessionReactions)?
        messageSent,
    TResult Function(List<MessageEntity> messages,
            Map<String, Set<ReactionType>> userSessionReactions)?
        messageReactionUpdating,
    TResult Function(List<MessageEntity> messages,
            Map<String, Set<ReactionType>> userSessionReactions)?
        messageReactionUpdated,
    TResult Function(Failure failure)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initial value) initial,
    required TResult Function(Loading value) loading,
    required TResult Function(Loaded value) loaded,
    required TResult Function(MessageSending value) messageSending,
    required TResult Function(MessageSent value) messageSent,
    required TResult Function(MessageReactionUpdating value)
        messageReactionUpdating,
    required TResult Function(MessageReactionUpdated value)
        messageReactionUpdated,
    required TResult Function(Error value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Initial value)? initial,
    TResult? Function(Loading value)? loading,
    TResult? Function(Loaded value)? loaded,
    TResult? Function(MessageSending value)? messageSending,
    TResult? Function(MessageSent value)? messageSent,
    TResult? Function(MessageReactionUpdating value)? messageReactionUpdating,
    TResult? Function(MessageReactionUpdated value)? messageReactionUpdated,
    TResult? Function(Error value)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(Loading value)? loading,
    TResult Function(Loaded value)? loaded,
    TResult Function(MessageSending value)? messageSending,
    TResult Function(MessageSent value)? messageSent,
    TResult Function(MessageReactionUpdating value)? messageReactionUpdating,
    TResult Function(MessageReactionUpdated value)? messageReactionUpdated,
    TResult Function(Error value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ChatMessageStateCopyWith<$Res> {
  factory $ChatMessageStateCopyWith(
          ChatMessageState value, $Res Function(ChatMessageState) then) =
      _$ChatMessageStateCopyWithImpl<$Res, ChatMessageState>;
}

/// @nodoc
class _$ChatMessageStateCopyWithImpl<$Res, $Val extends ChatMessageState>
    implements $ChatMessageStateCopyWith<$Res> {
  _$ChatMessageStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ChatMessageState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$InitialImplCopyWith<$Res> {
  factory _$$InitialImplCopyWith(
          _$InitialImpl value, $Res Function(_$InitialImpl) then) =
      __$$InitialImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$InitialImplCopyWithImpl<$Res>
    extends _$ChatMessageStateCopyWithImpl<$Res, _$InitialImpl>
    implements _$$InitialImplCopyWith<$Res> {
  __$$InitialImplCopyWithImpl(
      _$InitialImpl _value, $Res Function(_$InitialImpl) _then)
      : super(_value, _then);

  /// Create a copy of ChatMessageState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$InitialImpl implements Initial {
  const _$InitialImpl();

  @override
  String toString() {
    return 'ChatMessageState.initial()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$InitialImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<MessageEntity> messages,
            Map<String, Set<ReactionType>> userSessionReactions, int version)
        loaded,
    required TResult Function(List<MessageEntity> messages,
            Map<String, Set<ReactionType>> userSessionReactions)
        messageSending,
    required TResult Function(
            List<MessageEntity> messages,
            MessageEntity newMessage,
            Map<String, Set<ReactionType>> userSessionReactions)
        messageSent,
    required TResult Function(List<MessageEntity> messages,
            Map<String, Set<ReactionType>> userSessionReactions)
        messageReactionUpdating,
    required TResult Function(List<MessageEntity> messages,
            Map<String, Set<ReactionType>> userSessionReactions)
        messageReactionUpdated,
    required TResult Function(Failure failure) error,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<MessageEntity> messages,
            Map<String, Set<ReactionType>> userSessionReactions, int version)?
        loaded,
    TResult? Function(List<MessageEntity> messages,
            Map<String, Set<ReactionType>> userSessionReactions)?
        messageSending,
    TResult? Function(List<MessageEntity> messages, MessageEntity newMessage,
            Map<String, Set<ReactionType>> userSessionReactions)?
        messageSent,
    TResult? Function(List<MessageEntity> messages,
            Map<String, Set<ReactionType>> userSessionReactions)?
        messageReactionUpdating,
    TResult? Function(List<MessageEntity> messages,
            Map<String, Set<ReactionType>> userSessionReactions)?
        messageReactionUpdated,
    TResult? Function(Failure failure)? error,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<MessageEntity> messages,
            Map<String, Set<ReactionType>> userSessionReactions, int version)?
        loaded,
    TResult Function(List<MessageEntity> messages,
            Map<String, Set<ReactionType>> userSessionReactions)?
        messageSending,
    TResult Function(List<MessageEntity> messages, MessageEntity newMessage,
            Map<String, Set<ReactionType>> userSessionReactions)?
        messageSent,
    TResult Function(List<MessageEntity> messages,
            Map<String, Set<ReactionType>> userSessionReactions)?
        messageReactionUpdating,
    TResult Function(List<MessageEntity> messages,
            Map<String, Set<ReactionType>> userSessionReactions)?
        messageReactionUpdated,
    TResult Function(Failure failure)? error,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initial value) initial,
    required TResult Function(Loading value) loading,
    required TResult Function(Loaded value) loaded,
    required TResult Function(MessageSending value) messageSending,
    required TResult Function(MessageSent value) messageSent,
    required TResult Function(MessageReactionUpdating value)
        messageReactionUpdating,
    required TResult Function(MessageReactionUpdated value)
        messageReactionUpdated,
    required TResult Function(Error value) error,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Initial value)? initial,
    TResult? Function(Loading value)? loading,
    TResult? Function(Loaded value)? loaded,
    TResult? Function(MessageSending value)? messageSending,
    TResult? Function(MessageSent value)? messageSent,
    TResult? Function(MessageReactionUpdating value)? messageReactionUpdating,
    TResult? Function(MessageReactionUpdated value)? messageReactionUpdated,
    TResult? Function(Error value)? error,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(Loading value)? loading,
    TResult Function(Loaded value)? loaded,
    TResult Function(MessageSending value)? messageSending,
    TResult Function(MessageSent value)? messageSent,
    TResult Function(MessageReactionUpdating value)? messageReactionUpdating,
    TResult Function(MessageReactionUpdated value)? messageReactionUpdated,
    TResult Function(Error value)? error,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class Initial implements ChatMessageState {
  const factory Initial() = _$InitialImpl;
}

/// @nodoc
abstract class _$$LoadingImplCopyWith<$Res> {
  factory _$$LoadingImplCopyWith(
          _$LoadingImpl value, $Res Function(_$LoadingImpl) then) =
      __$$LoadingImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$LoadingImplCopyWithImpl<$Res>
    extends _$ChatMessageStateCopyWithImpl<$Res, _$LoadingImpl>
    implements _$$LoadingImplCopyWith<$Res> {
  __$$LoadingImplCopyWithImpl(
      _$LoadingImpl _value, $Res Function(_$LoadingImpl) _then)
      : super(_value, _then);

  /// Create a copy of ChatMessageState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$LoadingImpl implements Loading {
  const _$LoadingImpl();

  @override
  String toString() {
    return 'ChatMessageState.loading()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$LoadingImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<MessageEntity> messages,
            Map<String, Set<ReactionType>> userSessionReactions, int version)
        loaded,
    required TResult Function(List<MessageEntity> messages,
            Map<String, Set<ReactionType>> userSessionReactions)
        messageSending,
    required TResult Function(
            List<MessageEntity> messages,
            MessageEntity newMessage,
            Map<String, Set<ReactionType>> userSessionReactions)
        messageSent,
    required TResult Function(List<MessageEntity> messages,
            Map<String, Set<ReactionType>> userSessionReactions)
        messageReactionUpdating,
    required TResult Function(List<MessageEntity> messages,
            Map<String, Set<ReactionType>> userSessionReactions)
        messageReactionUpdated,
    required TResult Function(Failure failure) error,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<MessageEntity> messages,
            Map<String, Set<ReactionType>> userSessionReactions, int version)?
        loaded,
    TResult? Function(List<MessageEntity> messages,
            Map<String, Set<ReactionType>> userSessionReactions)?
        messageSending,
    TResult? Function(List<MessageEntity> messages, MessageEntity newMessage,
            Map<String, Set<ReactionType>> userSessionReactions)?
        messageSent,
    TResult? Function(List<MessageEntity> messages,
            Map<String, Set<ReactionType>> userSessionReactions)?
        messageReactionUpdating,
    TResult? Function(List<MessageEntity> messages,
            Map<String, Set<ReactionType>> userSessionReactions)?
        messageReactionUpdated,
    TResult? Function(Failure failure)? error,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<MessageEntity> messages,
            Map<String, Set<ReactionType>> userSessionReactions, int version)?
        loaded,
    TResult Function(List<MessageEntity> messages,
            Map<String, Set<ReactionType>> userSessionReactions)?
        messageSending,
    TResult Function(List<MessageEntity> messages, MessageEntity newMessage,
            Map<String, Set<ReactionType>> userSessionReactions)?
        messageSent,
    TResult Function(List<MessageEntity> messages,
            Map<String, Set<ReactionType>> userSessionReactions)?
        messageReactionUpdating,
    TResult Function(List<MessageEntity> messages,
            Map<String, Set<ReactionType>> userSessionReactions)?
        messageReactionUpdated,
    TResult Function(Failure failure)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initial value) initial,
    required TResult Function(Loading value) loading,
    required TResult Function(Loaded value) loaded,
    required TResult Function(MessageSending value) messageSending,
    required TResult Function(MessageSent value) messageSent,
    required TResult Function(MessageReactionUpdating value)
        messageReactionUpdating,
    required TResult Function(MessageReactionUpdated value)
        messageReactionUpdated,
    required TResult Function(Error value) error,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Initial value)? initial,
    TResult? Function(Loading value)? loading,
    TResult? Function(Loaded value)? loaded,
    TResult? Function(MessageSending value)? messageSending,
    TResult? Function(MessageSent value)? messageSent,
    TResult? Function(MessageReactionUpdating value)? messageReactionUpdating,
    TResult? Function(MessageReactionUpdated value)? messageReactionUpdated,
    TResult? Function(Error value)? error,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(Loading value)? loading,
    TResult Function(Loaded value)? loaded,
    TResult Function(MessageSending value)? messageSending,
    TResult Function(MessageSent value)? messageSent,
    TResult Function(MessageReactionUpdating value)? messageReactionUpdating,
    TResult Function(MessageReactionUpdated value)? messageReactionUpdated,
    TResult Function(Error value)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class Loading implements ChatMessageState {
  const factory Loading() = _$LoadingImpl;
}

/// @nodoc
abstract class _$$LoadedImplCopyWith<$Res> {
  factory _$$LoadedImplCopyWith(
          _$LoadedImpl value, $Res Function(_$LoadedImpl) then) =
      __$$LoadedImplCopyWithImpl<$Res>;
  @useResult
  $Res call(
      {List<MessageEntity> messages,
      Map<String, Set<ReactionType>> userSessionReactions,
      int version});
}

/// @nodoc
class __$$LoadedImplCopyWithImpl<$Res>
    extends _$ChatMessageStateCopyWithImpl<$Res, _$LoadedImpl>
    implements _$$LoadedImplCopyWith<$Res> {
  __$$LoadedImplCopyWithImpl(
      _$LoadedImpl _value, $Res Function(_$LoadedImpl) _then)
      : super(_value, _then);

  /// Create a copy of ChatMessageState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? messages = null,
    Object? userSessionReactions = null,
    Object? version = null,
  }) {
    return _then(_$LoadedImpl(
      messages: null == messages
          ? _value._messages
          : messages // ignore: cast_nullable_to_non_nullable
              as List<MessageEntity>,
      userSessionReactions: null == userSessionReactions
          ? _value._userSessionReactions
          : userSessionReactions // ignore: cast_nullable_to_non_nullable
              as Map<String, Set<ReactionType>>,
      version: null == version
          ? _value.version
          : version // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$LoadedImpl implements Loaded {
  const _$LoadedImpl(
      {required final List<MessageEntity> messages,
      final Map<String, Set<ReactionType>> userSessionReactions = const {},
      this.version = 0})
      : _messages = messages,
        _userSessionReactions = userSessionReactions;

  final List<MessageEntity> _messages;
  @override
  List<MessageEntity> get messages {
    if (_messages is EqualUnmodifiableListView) return _messages;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_messages);
  }

  final Map<String, Set<ReactionType>> _userSessionReactions;
  @override
  @JsonKey()
  Map<String, Set<ReactionType>> get userSessionReactions {
    if (_userSessionReactions is EqualUnmodifiableMapView)
      return _userSessionReactions;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(_userSessionReactions);
  }

  @override
  @JsonKey()
  final int version;

  @override
  String toString() {
    return 'ChatMessageState.loaded(messages: $messages, userSessionReactions: $userSessionReactions, version: $version)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LoadedImpl &&
            const DeepCollectionEquality().equals(other._messages, _messages) &&
            const DeepCollectionEquality()
                .equals(other._userSessionReactions, _userSessionReactions) &&
            (identical(other.version, version) || other.version == version));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_messages),
      const DeepCollectionEquality().hash(_userSessionReactions),
      version);

  /// Create a copy of ChatMessageState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$LoadedImplCopyWith<_$LoadedImpl> get copyWith =>
      __$$LoadedImplCopyWithImpl<_$LoadedImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<MessageEntity> messages,
            Map<String, Set<ReactionType>> userSessionReactions, int version)
        loaded,
    required TResult Function(List<MessageEntity> messages,
            Map<String, Set<ReactionType>> userSessionReactions)
        messageSending,
    required TResult Function(
            List<MessageEntity> messages,
            MessageEntity newMessage,
            Map<String, Set<ReactionType>> userSessionReactions)
        messageSent,
    required TResult Function(List<MessageEntity> messages,
            Map<String, Set<ReactionType>> userSessionReactions)
        messageReactionUpdating,
    required TResult Function(List<MessageEntity> messages,
            Map<String, Set<ReactionType>> userSessionReactions)
        messageReactionUpdated,
    required TResult Function(Failure failure) error,
  }) {
    return loaded(messages, userSessionReactions, version);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<MessageEntity> messages,
            Map<String, Set<ReactionType>> userSessionReactions, int version)?
        loaded,
    TResult? Function(List<MessageEntity> messages,
            Map<String, Set<ReactionType>> userSessionReactions)?
        messageSending,
    TResult? Function(List<MessageEntity> messages, MessageEntity newMessage,
            Map<String, Set<ReactionType>> userSessionReactions)?
        messageSent,
    TResult? Function(List<MessageEntity> messages,
            Map<String, Set<ReactionType>> userSessionReactions)?
        messageReactionUpdating,
    TResult? Function(List<MessageEntity> messages,
            Map<String, Set<ReactionType>> userSessionReactions)?
        messageReactionUpdated,
    TResult? Function(Failure failure)? error,
  }) {
    return loaded?.call(messages, userSessionReactions, version);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<MessageEntity> messages,
            Map<String, Set<ReactionType>> userSessionReactions, int version)?
        loaded,
    TResult Function(List<MessageEntity> messages,
            Map<String, Set<ReactionType>> userSessionReactions)?
        messageSending,
    TResult Function(List<MessageEntity> messages, MessageEntity newMessage,
            Map<String, Set<ReactionType>> userSessionReactions)?
        messageSent,
    TResult Function(List<MessageEntity> messages,
            Map<String, Set<ReactionType>> userSessionReactions)?
        messageReactionUpdating,
    TResult Function(List<MessageEntity> messages,
            Map<String, Set<ReactionType>> userSessionReactions)?
        messageReactionUpdated,
    TResult Function(Failure failure)? error,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(messages, userSessionReactions, version);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initial value) initial,
    required TResult Function(Loading value) loading,
    required TResult Function(Loaded value) loaded,
    required TResult Function(MessageSending value) messageSending,
    required TResult Function(MessageSent value) messageSent,
    required TResult Function(MessageReactionUpdating value)
        messageReactionUpdating,
    required TResult Function(MessageReactionUpdated value)
        messageReactionUpdated,
    required TResult Function(Error value) error,
  }) {
    return loaded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Initial value)? initial,
    TResult? Function(Loading value)? loading,
    TResult? Function(Loaded value)? loaded,
    TResult? Function(MessageSending value)? messageSending,
    TResult? Function(MessageSent value)? messageSent,
    TResult? Function(MessageReactionUpdating value)? messageReactionUpdating,
    TResult? Function(MessageReactionUpdated value)? messageReactionUpdated,
    TResult? Function(Error value)? error,
  }) {
    return loaded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(Loading value)? loading,
    TResult Function(Loaded value)? loaded,
    TResult Function(MessageSending value)? messageSending,
    TResult Function(MessageSent value)? messageSent,
    TResult Function(MessageReactionUpdating value)? messageReactionUpdating,
    TResult Function(MessageReactionUpdated value)? messageReactionUpdated,
    TResult Function(Error value)? error,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(this);
    }
    return orElse();
  }
}

abstract class Loaded implements ChatMessageState {
  const factory Loaded(
      {required final List<MessageEntity> messages,
      final Map<String, Set<ReactionType>> userSessionReactions,
      final int version}) = _$LoadedImpl;

  List<MessageEntity> get messages;
  Map<String, Set<ReactionType>> get userSessionReactions;
  int get version;

  /// Create a copy of ChatMessageState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$LoadedImplCopyWith<_$LoadedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$MessageSendingImplCopyWith<$Res> {
  factory _$$MessageSendingImplCopyWith(_$MessageSendingImpl value,
          $Res Function(_$MessageSendingImpl) then) =
      __$$MessageSendingImplCopyWithImpl<$Res>;
  @useResult
  $Res call(
      {List<MessageEntity> messages,
      Map<String, Set<ReactionType>> userSessionReactions});
}

/// @nodoc
class __$$MessageSendingImplCopyWithImpl<$Res>
    extends _$ChatMessageStateCopyWithImpl<$Res, _$MessageSendingImpl>
    implements _$$MessageSendingImplCopyWith<$Res> {
  __$$MessageSendingImplCopyWithImpl(
      _$MessageSendingImpl _value, $Res Function(_$MessageSendingImpl) _then)
      : super(_value, _then);

  /// Create a copy of ChatMessageState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? messages = null,
    Object? userSessionReactions = null,
  }) {
    return _then(_$MessageSendingImpl(
      messages: null == messages
          ? _value._messages
          : messages // ignore: cast_nullable_to_non_nullable
              as List<MessageEntity>,
      userSessionReactions: null == userSessionReactions
          ? _value._userSessionReactions
          : userSessionReactions // ignore: cast_nullable_to_non_nullable
              as Map<String, Set<ReactionType>>,
    ));
  }
}

/// @nodoc

class _$MessageSendingImpl implements MessageSending {
  const _$MessageSendingImpl(
      {required final List<MessageEntity> messages,
      final Map<String, Set<ReactionType>> userSessionReactions = const {}})
      : _messages = messages,
        _userSessionReactions = userSessionReactions;

  final List<MessageEntity> _messages;
  @override
  List<MessageEntity> get messages {
    if (_messages is EqualUnmodifiableListView) return _messages;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_messages);
  }

  final Map<String, Set<ReactionType>> _userSessionReactions;
  @override
  @JsonKey()
  Map<String, Set<ReactionType>> get userSessionReactions {
    if (_userSessionReactions is EqualUnmodifiableMapView)
      return _userSessionReactions;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(_userSessionReactions);
  }

  @override
  String toString() {
    return 'ChatMessageState.messageSending(messages: $messages, userSessionReactions: $userSessionReactions)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MessageSendingImpl &&
            const DeepCollectionEquality().equals(other._messages, _messages) &&
            const DeepCollectionEquality()
                .equals(other._userSessionReactions, _userSessionReactions));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_messages),
      const DeepCollectionEquality().hash(_userSessionReactions));

  /// Create a copy of ChatMessageState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$MessageSendingImplCopyWith<_$MessageSendingImpl> get copyWith =>
      __$$MessageSendingImplCopyWithImpl<_$MessageSendingImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<MessageEntity> messages,
            Map<String, Set<ReactionType>> userSessionReactions, int version)
        loaded,
    required TResult Function(List<MessageEntity> messages,
            Map<String, Set<ReactionType>> userSessionReactions)
        messageSending,
    required TResult Function(
            List<MessageEntity> messages,
            MessageEntity newMessage,
            Map<String, Set<ReactionType>> userSessionReactions)
        messageSent,
    required TResult Function(List<MessageEntity> messages,
            Map<String, Set<ReactionType>> userSessionReactions)
        messageReactionUpdating,
    required TResult Function(List<MessageEntity> messages,
            Map<String, Set<ReactionType>> userSessionReactions)
        messageReactionUpdated,
    required TResult Function(Failure failure) error,
  }) {
    return messageSending(messages, userSessionReactions);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<MessageEntity> messages,
            Map<String, Set<ReactionType>> userSessionReactions, int version)?
        loaded,
    TResult? Function(List<MessageEntity> messages,
            Map<String, Set<ReactionType>> userSessionReactions)?
        messageSending,
    TResult? Function(List<MessageEntity> messages, MessageEntity newMessage,
            Map<String, Set<ReactionType>> userSessionReactions)?
        messageSent,
    TResult? Function(List<MessageEntity> messages,
            Map<String, Set<ReactionType>> userSessionReactions)?
        messageReactionUpdating,
    TResult? Function(List<MessageEntity> messages,
            Map<String, Set<ReactionType>> userSessionReactions)?
        messageReactionUpdated,
    TResult? Function(Failure failure)? error,
  }) {
    return messageSending?.call(messages, userSessionReactions);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<MessageEntity> messages,
            Map<String, Set<ReactionType>> userSessionReactions, int version)?
        loaded,
    TResult Function(List<MessageEntity> messages,
            Map<String, Set<ReactionType>> userSessionReactions)?
        messageSending,
    TResult Function(List<MessageEntity> messages, MessageEntity newMessage,
            Map<String, Set<ReactionType>> userSessionReactions)?
        messageSent,
    TResult Function(List<MessageEntity> messages,
            Map<String, Set<ReactionType>> userSessionReactions)?
        messageReactionUpdating,
    TResult Function(List<MessageEntity> messages,
            Map<String, Set<ReactionType>> userSessionReactions)?
        messageReactionUpdated,
    TResult Function(Failure failure)? error,
    required TResult orElse(),
  }) {
    if (messageSending != null) {
      return messageSending(messages, userSessionReactions);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initial value) initial,
    required TResult Function(Loading value) loading,
    required TResult Function(Loaded value) loaded,
    required TResult Function(MessageSending value) messageSending,
    required TResult Function(MessageSent value) messageSent,
    required TResult Function(MessageReactionUpdating value)
        messageReactionUpdating,
    required TResult Function(MessageReactionUpdated value)
        messageReactionUpdated,
    required TResult Function(Error value) error,
  }) {
    return messageSending(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Initial value)? initial,
    TResult? Function(Loading value)? loading,
    TResult? Function(Loaded value)? loaded,
    TResult? Function(MessageSending value)? messageSending,
    TResult? Function(MessageSent value)? messageSent,
    TResult? Function(MessageReactionUpdating value)? messageReactionUpdating,
    TResult? Function(MessageReactionUpdated value)? messageReactionUpdated,
    TResult? Function(Error value)? error,
  }) {
    return messageSending?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(Loading value)? loading,
    TResult Function(Loaded value)? loaded,
    TResult Function(MessageSending value)? messageSending,
    TResult Function(MessageSent value)? messageSent,
    TResult Function(MessageReactionUpdating value)? messageReactionUpdating,
    TResult Function(MessageReactionUpdated value)? messageReactionUpdated,
    TResult Function(Error value)? error,
    required TResult orElse(),
  }) {
    if (messageSending != null) {
      return messageSending(this);
    }
    return orElse();
  }
}

abstract class MessageSending implements ChatMessageState {
  const factory MessageSending(
          {required final List<MessageEntity> messages,
          final Map<String, Set<ReactionType>> userSessionReactions}) =
      _$MessageSendingImpl;

  List<MessageEntity> get messages;
  Map<String, Set<ReactionType>> get userSessionReactions;

  /// Create a copy of ChatMessageState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$MessageSendingImplCopyWith<_$MessageSendingImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$MessageSentImplCopyWith<$Res> {
  factory _$$MessageSentImplCopyWith(
          _$MessageSentImpl value, $Res Function(_$MessageSentImpl) then) =
      __$$MessageSentImplCopyWithImpl<$Res>;
  @useResult
  $Res call(
      {List<MessageEntity> messages,
      MessageEntity newMessage,
      Map<String, Set<ReactionType>> userSessionReactions});

  $MessageEntityCopyWith<$Res> get newMessage;
}

/// @nodoc
class __$$MessageSentImplCopyWithImpl<$Res>
    extends _$ChatMessageStateCopyWithImpl<$Res, _$MessageSentImpl>
    implements _$$MessageSentImplCopyWith<$Res> {
  __$$MessageSentImplCopyWithImpl(
      _$MessageSentImpl _value, $Res Function(_$MessageSentImpl) _then)
      : super(_value, _then);

  /// Create a copy of ChatMessageState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? messages = null,
    Object? newMessage = null,
    Object? userSessionReactions = null,
  }) {
    return _then(_$MessageSentImpl(
      messages: null == messages
          ? _value._messages
          : messages // ignore: cast_nullable_to_non_nullable
              as List<MessageEntity>,
      newMessage: null == newMessage
          ? _value.newMessage
          : newMessage // ignore: cast_nullable_to_non_nullable
              as MessageEntity,
      userSessionReactions: null == userSessionReactions
          ? _value._userSessionReactions
          : userSessionReactions // ignore: cast_nullable_to_non_nullable
              as Map<String, Set<ReactionType>>,
    ));
  }

  /// Create a copy of ChatMessageState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $MessageEntityCopyWith<$Res> get newMessage {
    return $MessageEntityCopyWith<$Res>(_value.newMessage, (value) {
      return _then(_value.copyWith(newMessage: value));
    });
  }
}

/// @nodoc

class _$MessageSentImpl implements MessageSent {
  const _$MessageSentImpl(
      {required final List<MessageEntity> messages,
      required this.newMessage,
      final Map<String, Set<ReactionType>> userSessionReactions = const {}})
      : _messages = messages,
        _userSessionReactions = userSessionReactions;

  final List<MessageEntity> _messages;
  @override
  List<MessageEntity> get messages {
    if (_messages is EqualUnmodifiableListView) return _messages;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_messages);
  }

  @override
  final MessageEntity newMessage;
  final Map<String, Set<ReactionType>> _userSessionReactions;
  @override
  @JsonKey()
  Map<String, Set<ReactionType>> get userSessionReactions {
    if (_userSessionReactions is EqualUnmodifiableMapView)
      return _userSessionReactions;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(_userSessionReactions);
  }

  @override
  String toString() {
    return 'ChatMessageState.messageSent(messages: $messages, newMessage: $newMessage, userSessionReactions: $userSessionReactions)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MessageSentImpl &&
            const DeepCollectionEquality().equals(other._messages, _messages) &&
            (identical(other.newMessage, newMessage) ||
                other.newMessage == newMessage) &&
            const DeepCollectionEquality()
                .equals(other._userSessionReactions, _userSessionReactions));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_messages),
      newMessage,
      const DeepCollectionEquality().hash(_userSessionReactions));

  /// Create a copy of ChatMessageState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$MessageSentImplCopyWith<_$MessageSentImpl> get copyWith =>
      __$$MessageSentImplCopyWithImpl<_$MessageSentImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<MessageEntity> messages,
            Map<String, Set<ReactionType>> userSessionReactions, int version)
        loaded,
    required TResult Function(List<MessageEntity> messages,
            Map<String, Set<ReactionType>> userSessionReactions)
        messageSending,
    required TResult Function(
            List<MessageEntity> messages,
            MessageEntity newMessage,
            Map<String, Set<ReactionType>> userSessionReactions)
        messageSent,
    required TResult Function(List<MessageEntity> messages,
            Map<String, Set<ReactionType>> userSessionReactions)
        messageReactionUpdating,
    required TResult Function(List<MessageEntity> messages,
            Map<String, Set<ReactionType>> userSessionReactions)
        messageReactionUpdated,
    required TResult Function(Failure failure) error,
  }) {
    return messageSent(messages, newMessage, userSessionReactions);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<MessageEntity> messages,
            Map<String, Set<ReactionType>> userSessionReactions, int version)?
        loaded,
    TResult? Function(List<MessageEntity> messages,
            Map<String, Set<ReactionType>> userSessionReactions)?
        messageSending,
    TResult? Function(List<MessageEntity> messages, MessageEntity newMessage,
            Map<String, Set<ReactionType>> userSessionReactions)?
        messageSent,
    TResult? Function(List<MessageEntity> messages,
            Map<String, Set<ReactionType>> userSessionReactions)?
        messageReactionUpdating,
    TResult? Function(List<MessageEntity> messages,
            Map<String, Set<ReactionType>> userSessionReactions)?
        messageReactionUpdated,
    TResult? Function(Failure failure)? error,
  }) {
    return messageSent?.call(messages, newMessage, userSessionReactions);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<MessageEntity> messages,
            Map<String, Set<ReactionType>> userSessionReactions, int version)?
        loaded,
    TResult Function(List<MessageEntity> messages,
            Map<String, Set<ReactionType>> userSessionReactions)?
        messageSending,
    TResult Function(List<MessageEntity> messages, MessageEntity newMessage,
            Map<String, Set<ReactionType>> userSessionReactions)?
        messageSent,
    TResult Function(List<MessageEntity> messages,
            Map<String, Set<ReactionType>> userSessionReactions)?
        messageReactionUpdating,
    TResult Function(List<MessageEntity> messages,
            Map<String, Set<ReactionType>> userSessionReactions)?
        messageReactionUpdated,
    TResult Function(Failure failure)? error,
    required TResult orElse(),
  }) {
    if (messageSent != null) {
      return messageSent(messages, newMessage, userSessionReactions);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initial value) initial,
    required TResult Function(Loading value) loading,
    required TResult Function(Loaded value) loaded,
    required TResult Function(MessageSending value) messageSending,
    required TResult Function(MessageSent value) messageSent,
    required TResult Function(MessageReactionUpdating value)
        messageReactionUpdating,
    required TResult Function(MessageReactionUpdated value)
        messageReactionUpdated,
    required TResult Function(Error value) error,
  }) {
    return messageSent(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Initial value)? initial,
    TResult? Function(Loading value)? loading,
    TResult? Function(Loaded value)? loaded,
    TResult? Function(MessageSending value)? messageSending,
    TResult? Function(MessageSent value)? messageSent,
    TResult? Function(MessageReactionUpdating value)? messageReactionUpdating,
    TResult? Function(MessageReactionUpdated value)? messageReactionUpdated,
    TResult? Function(Error value)? error,
  }) {
    return messageSent?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(Loading value)? loading,
    TResult Function(Loaded value)? loaded,
    TResult Function(MessageSending value)? messageSending,
    TResult Function(MessageSent value)? messageSent,
    TResult Function(MessageReactionUpdating value)? messageReactionUpdating,
    TResult Function(MessageReactionUpdated value)? messageReactionUpdated,
    TResult Function(Error value)? error,
    required TResult orElse(),
  }) {
    if (messageSent != null) {
      return messageSent(this);
    }
    return orElse();
  }
}

abstract class MessageSent implements ChatMessageState {
  const factory MessageSent(
          {required final List<MessageEntity> messages,
          required final MessageEntity newMessage,
          final Map<String, Set<ReactionType>> userSessionReactions}) =
      _$MessageSentImpl;

  List<MessageEntity> get messages;
  MessageEntity get newMessage;
  Map<String, Set<ReactionType>> get userSessionReactions;

  /// Create a copy of ChatMessageState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$MessageSentImplCopyWith<_$MessageSentImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$MessageReactionUpdatingImplCopyWith<$Res> {
  factory _$$MessageReactionUpdatingImplCopyWith(
          _$MessageReactionUpdatingImpl value,
          $Res Function(_$MessageReactionUpdatingImpl) then) =
      __$$MessageReactionUpdatingImplCopyWithImpl<$Res>;
  @useResult
  $Res call(
      {List<MessageEntity> messages,
      Map<String, Set<ReactionType>> userSessionReactions});
}

/// @nodoc
class __$$MessageReactionUpdatingImplCopyWithImpl<$Res>
    extends _$ChatMessageStateCopyWithImpl<$Res, _$MessageReactionUpdatingImpl>
    implements _$$MessageReactionUpdatingImplCopyWith<$Res> {
  __$$MessageReactionUpdatingImplCopyWithImpl(
      _$MessageReactionUpdatingImpl _value,
      $Res Function(_$MessageReactionUpdatingImpl) _then)
      : super(_value, _then);

  /// Create a copy of ChatMessageState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? messages = null,
    Object? userSessionReactions = null,
  }) {
    return _then(_$MessageReactionUpdatingImpl(
      messages: null == messages
          ? _value._messages
          : messages // ignore: cast_nullable_to_non_nullable
              as List<MessageEntity>,
      userSessionReactions: null == userSessionReactions
          ? _value._userSessionReactions
          : userSessionReactions // ignore: cast_nullable_to_non_nullable
              as Map<String, Set<ReactionType>>,
    ));
  }
}

/// @nodoc

class _$MessageReactionUpdatingImpl implements MessageReactionUpdating {
  const _$MessageReactionUpdatingImpl(
      {required final List<MessageEntity> messages,
      final Map<String, Set<ReactionType>> userSessionReactions = const {}})
      : _messages = messages,
        _userSessionReactions = userSessionReactions;

  final List<MessageEntity> _messages;
  @override
  List<MessageEntity> get messages {
    if (_messages is EqualUnmodifiableListView) return _messages;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_messages);
  }

  final Map<String, Set<ReactionType>> _userSessionReactions;
  @override
  @JsonKey()
  Map<String, Set<ReactionType>> get userSessionReactions {
    if (_userSessionReactions is EqualUnmodifiableMapView)
      return _userSessionReactions;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(_userSessionReactions);
  }

  @override
  String toString() {
    return 'ChatMessageState.messageReactionUpdating(messages: $messages, userSessionReactions: $userSessionReactions)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MessageReactionUpdatingImpl &&
            const DeepCollectionEquality().equals(other._messages, _messages) &&
            const DeepCollectionEquality()
                .equals(other._userSessionReactions, _userSessionReactions));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_messages),
      const DeepCollectionEquality().hash(_userSessionReactions));

  /// Create a copy of ChatMessageState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$MessageReactionUpdatingImplCopyWith<_$MessageReactionUpdatingImpl>
      get copyWith => __$$MessageReactionUpdatingImplCopyWithImpl<
          _$MessageReactionUpdatingImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<MessageEntity> messages,
            Map<String, Set<ReactionType>> userSessionReactions, int version)
        loaded,
    required TResult Function(List<MessageEntity> messages,
            Map<String, Set<ReactionType>> userSessionReactions)
        messageSending,
    required TResult Function(
            List<MessageEntity> messages,
            MessageEntity newMessage,
            Map<String, Set<ReactionType>> userSessionReactions)
        messageSent,
    required TResult Function(List<MessageEntity> messages,
            Map<String, Set<ReactionType>> userSessionReactions)
        messageReactionUpdating,
    required TResult Function(List<MessageEntity> messages,
            Map<String, Set<ReactionType>> userSessionReactions)
        messageReactionUpdated,
    required TResult Function(Failure failure) error,
  }) {
    return messageReactionUpdating(messages, userSessionReactions);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<MessageEntity> messages,
            Map<String, Set<ReactionType>> userSessionReactions, int version)?
        loaded,
    TResult? Function(List<MessageEntity> messages,
            Map<String, Set<ReactionType>> userSessionReactions)?
        messageSending,
    TResult? Function(List<MessageEntity> messages, MessageEntity newMessage,
            Map<String, Set<ReactionType>> userSessionReactions)?
        messageSent,
    TResult? Function(List<MessageEntity> messages,
            Map<String, Set<ReactionType>> userSessionReactions)?
        messageReactionUpdating,
    TResult? Function(List<MessageEntity> messages,
            Map<String, Set<ReactionType>> userSessionReactions)?
        messageReactionUpdated,
    TResult? Function(Failure failure)? error,
  }) {
    return messageReactionUpdating?.call(messages, userSessionReactions);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<MessageEntity> messages,
            Map<String, Set<ReactionType>> userSessionReactions, int version)?
        loaded,
    TResult Function(List<MessageEntity> messages,
            Map<String, Set<ReactionType>> userSessionReactions)?
        messageSending,
    TResult Function(List<MessageEntity> messages, MessageEntity newMessage,
            Map<String, Set<ReactionType>> userSessionReactions)?
        messageSent,
    TResult Function(List<MessageEntity> messages,
            Map<String, Set<ReactionType>> userSessionReactions)?
        messageReactionUpdating,
    TResult Function(List<MessageEntity> messages,
            Map<String, Set<ReactionType>> userSessionReactions)?
        messageReactionUpdated,
    TResult Function(Failure failure)? error,
    required TResult orElse(),
  }) {
    if (messageReactionUpdating != null) {
      return messageReactionUpdating(messages, userSessionReactions);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initial value) initial,
    required TResult Function(Loading value) loading,
    required TResult Function(Loaded value) loaded,
    required TResult Function(MessageSending value) messageSending,
    required TResult Function(MessageSent value) messageSent,
    required TResult Function(MessageReactionUpdating value)
        messageReactionUpdating,
    required TResult Function(MessageReactionUpdated value)
        messageReactionUpdated,
    required TResult Function(Error value) error,
  }) {
    return messageReactionUpdating(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Initial value)? initial,
    TResult? Function(Loading value)? loading,
    TResult? Function(Loaded value)? loaded,
    TResult? Function(MessageSending value)? messageSending,
    TResult? Function(MessageSent value)? messageSent,
    TResult? Function(MessageReactionUpdating value)? messageReactionUpdating,
    TResult? Function(MessageReactionUpdated value)? messageReactionUpdated,
    TResult? Function(Error value)? error,
  }) {
    return messageReactionUpdating?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(Loading value)? loading,
    TResult Function(Loaded value)? loaded,
    TResult Function(MessageSending value)? messageSending,
    TResult Function(MessageSent value)? messageSent,
    TResult Function(MessageReactionUpdating value)? messageReactionUpdating,
    TResult Function(MessageReactionUpdated value)? messageReactionUpdated,
    TResult Function(Error value)? error,
    required TResult orElse(),
  }) {
    if (messageReactionUpdating != null) {
      return messageReactionUpdating(this);
    }
    return orElse();
  }
}

abstract class MessageReactionUpdating implements ChatMessageState {
  const factory MessageReactionUpdating(
          {required final List<MessageEntity> messages,
          final Map<String, Set<ReactionType>> userSessionReactions}) =
      _$MessageReactionUpdatingImpl;

  List<MessageEntity> get messages;
  Map<String, Set<ReactionType>> get userSessionReactions;

  /// Create a copy of ChatMessageState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$MessageReactionUpdatingImplCopyWith<_$MessageReactionUpdatingImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$MessageReactionUpdatedImplCopyWith<$Res> {
  factory _$$MessageReactionUpdatedImplCopyWith(
          _$MessageReactionUpdatedImpl value,
          $Res Function(_$MessageReactionUpdatedImpl) then) =
      __$$MessageReactionUpdatedImplCopyWithImpl<$Res>;
  @useResult
  $Res call(
      {List<MessageEntity> messages,
      Map<String, Set<ReactionType>> userSessionReactions});
}

/// @nodoc
class __$$MessageReactionUpdatedImplCopyWithImpl<$Res>
    extends _$ChatMessageStateCopyWithImpl<$Res, _$MessageReactionUpdatedImpl>
    implements _$$MessageReactionUpdatedImplCopyWith<$Res> {
  __$$MessageReactionUpdatedImplCopyWithImpl(
      _$MessageReactionUpdatedImpl _value,
      $Res Function(_$MessageReactionUpdatedImpl) _then)
      : super(_value, _then);

  /// Create a copy of ChatMessageState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? messages = null,
    Object? userSessionReactions = null,
  }) {
    return _then(_$MessageReactionUpdatedImpl(
      messages: null == messages
          ? _value._messages
          : messages // ignore: cast_nullable_to_non_nullable
              as List<MessageEntity>,
      userSessionReactions: null == userSessionReactions
          ? _value._userSessionReactions
          : userSessionReactions // ignore: cast_nullable_to_non_nullable
              as Map<String, Set<ReactionType>>,
    ));
  }
}

/// @nodoc

class _$MessageReactionUpdatedImpl implements MessageReactionUpdated {
  const _$MessageReactionUpdatedImpl(
      {required final List<MessageEntity> messages,
      final Map<String, Set<ReactionType>> userSessionReactions = const {}})
      : _messages = messages,
        _userSessionReactions = userSessionReactions;

  final List<MessageEntity> _messages;
  @override
  List<MessageEntity> get messages {
    if (_messages is EqualUnmodifiableListView) return _messages;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_messages);
  }

  final Map<String, Set<ReactionType>> _userSessionReactions;
  @override
  @JsonKey()
  Map<String, Set<ReactionType>> get userSessionReactions {
    if (_userSessionReactions is EqualUnmodifiableMapView)
      return _userSessionReactions;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(_userSessionReactions);
  }

  @override
  String toString() {
    return 'ChatMessageState.messageReactionUpdated(messages: $messages, userSessionReactions: $userSessionReactions)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MessageReactionUpdatedImpl &&
            const DeepCollectionEquality().equals(other._messages, _messages) &&
            const DeepCollectionEquality()
                .equals(other._userSessionReactions, _userSessionReactions));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_messages),
      const DeepCollectionEquality().hash(_userSessionReactions));

  /// Create a copy of ChatMessageState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$MessageReactionUpdatedImplCopyWith<_$MessageReactionUpdatedImpl>
      get copyWith => __$$MessageReactionUpdatedImplCopyWithImpl<
          _$MessageReactionUpdatedImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<MessageEntity> messages,
            Map<String, Set<ReactionType>> userSessionReactions, int version)
        loaded,
    required TResult Function(List<MessageEntity> messages,
            Map<String, Set<ReactionType>> userSessionReactions)
        messageSending,
    required TResult Function(
            List<MessageEntity> messages,
            MessageEntity newMessage,
            Map<String, Set<ReactionType>> userSessionReactions)
        messageSent,
    required TResult Function(List<MessageEntity> messages,
            Map<String, Set<ReactionType>> userSessionReactions)
        messageReactionUpdating,
    required TResult Function(List<MessageEntity> messages,
            Map<String, Set<ReactionType>> userSessionReactions)
        messageReactionUpdated,
    required TResult Function(Failure failure) error,
  }) {
    return messageReactionUpdated(messages, userSessionReactions);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<MessageEntity> messages,
            Map<String, Set<ReactionType>> userSessionReactions, int version)?
        loaded,
    TResult? Function(List<MessageEntity> messages,
            Map<String, Set<ReactionType>> userSessionReactions)?
        messageSending,
    TResult? Function(List<MessageEntity> messages, MessageEntity newMessage,
            Map<String, Set<ReactionType>> userSessionReactions)?
        messageSent,
    TResult? Function(List<MessageEntity> messages,
            Map<String, Set<ReactionType>> userSessionReactions)?
        messageReactionUpdating,
    TResult? Function(List<MessageEntity> messages,
            Map<String, Set<ReactionType>> userSessionReactions)?
        messageReactionUpdated,
    TResult? Function(Failure failure)? error,
  }) {
    return messageReactionUpdated?.call(messages, userSessionReactions);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<MessageEntity> messages,
            Map<String, Set<ReactionType>> userSessionReactions, int version)?
        loaded,
    TResult Function(List<MessageEntity> messages,
            Map<String, Set<ReactionType>> userSessionReactions)?
        messageSending,
    TResult Function(List<MessageEntity> messages, MessageEntity newMessage,
            Map<String, Set<ReactionType>> userSessionReactions)?
        messageSent,
    TResult Function(List<MessageEntity> messages,
            Map<String, Set<ReactionType>> userSessionReactions)?
        messageReactionUpdating,
    TResult Function(List<MessageEntity> messages,
            Map<String, Set<ReactionType>> userSessionReactions)?
        messageReactionUpdated,
    TResult Function(Failure failure)? error,
    required TResult orElse(),
  }) {
    if (messageReactionUpdated != null) {
      return messageReactionUpdated(messages, userSessionReactions);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initial value) initial,
    required TResult Function(Loading value) loading,
    required TResult Function(Loaded value) loaded,
    required TResult Function(MessageSending value) messageSending,
    required TResult Function(MessageSent value) messageSent,
    required TResult Function(MessageReactionUpdating value)
        messageReactionUpdating,
    required TResult Function(MessageReactionUpdated value)
        messageReactionUpdated,
    required TResult Function(Error value) error,
  }) {
    return messageReactionUpdated(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Initial value)? initial,
    TResult? Function(Loading value)? loading,
    TResult? Function(Loaded value)? loaded,
    TResult? Function(MessageSending value)? messageSending,
    TResult? Function(MessageSent value)? messageSent,
    TResult? Function(MessageReactionUpdating value)? messageReactionUpdating,
    TResult? Function(MessageReactionUpdated value)? messageReactionUpdated,
    TResult? Function(Error value)? error,
  }) {
    return messageReactionUpdated?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(Loading value)? loading,
    TResult Function(Loaded value)? loaded,
    TResult Function(MessageSending value)? messageSending,
    TResult Function(MessageSent value)? messageSent,
    TResult Function(MessageReactionUpdating value)? messageReactionUpdating,
    TResult Function(MessageReactionUpdated value)? messageReactionUpdated,
    TResult Function(Error value)? error,
    required TResult orElse(),
  }) {
    if (messageReactionUpdated != null) {
      return messageReactionUpdated(this);
    }
    return orElse();
  }
}

abstract class MessageReactionUpdated implements ChatMessageState {
  const factory MessageReactionUpdated(
          {required final List<MessageEntity> messages,
          final Map<String, Set<ReactionType>> userSessionReactions}) =
      _$MessageReactionUpdatedImpl;

  List<MessageEntity> get messages;
  Map<String, Set<ReactionType>> get userSessionReactions;

  /// Create a copy of ChatMessageState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$MessageReactionUpdatedImplCopyWith<_$MessageReactionUpdatedImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ErrorImplCopyWith<$Res> {
  factory _$$ErrorImplCopyWith(
          _$ErrorImpl value, $Res Function(_$ErrorImpl) then) =
      __$$ErrorImplCopyWithImpl<$Res>;
  @useResult
  $Res call({Failure failure});

  $FailureCopyWith<$Res> get failure;
}

/// @nodoc
class __$$ErrorImplCopyWithImpl<$Res>
    extends _$ChatMessageStateCopyWithImpl<$Res, _$ErrorImpl>
    implements _$$ErrorImplCopyWith<$Res> {
  __$$ErrorImplCopyWithImpl(
      _$ErrorImpl _value, $Res Function(_$ErrorImpl) _then)
      : super(_value, _then);

  /// Create a copy of ChatMessageState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? failure = null,
  }) {
    return _then(_$ErrorImpl(
      failure: null == failure
          ? _value.failure
          : failure // ignore: cast_nullable_to_non_nullable
              as Failure,
    ));
  }

  /// Create a copy of ChatMessageState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $FailureCopyWith<$Res> get failure {
    return $FailureCopyWith<$Res>(_value.failure, (value) {
      return _then(_value.copyWith(failure: value));
    });
  }
}

/// @nodoc

class _$ErrorImpl implements Error {
  const _$ErrorImpl({required this.failure});

  @override
  final Failure failure;

  @override
  String toString() {
    return 'ChatMessageState.error(failure: $failure)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ErrorImpl &&
            (identical(other.failure, failure) || other.failure == failure));
  }

  @override
  int get hashCode => Object.hash(runtimeType, failure);

  /// Create a copy of ChatMessageState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ErrorImplCopyWith<_$ErrorImpl> get copyWith =>
      __$$ErrorImplCopyWithImpl<_$ErrorImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<MessageEntity> messages,
            Map<String, Set<ReactionType>> userSessionReactions, int version)
        loaded,
    required TResult Function(List<MessageEntity> messages,
            Map<String, Set<ReactionType>> userSessionReactions)
        messageSending,
    required TResult Function(
            List<MessageEntity> messages,
            MessageEntity newMessage,
            Map<String, Set<ReactionType>> userSessionReactions)
        messageSent,
    required TResult Function(List<MessageEntity> messages,
            Map<String, Set<ReactionType>> userSessionReactions)
        messageReactionUpdating,
    required TResult Function(List<MessageEntity> messages,
            Map<String, Set<ReactionType>> userSessionReactions)
        messageReactionUpdated,
    required TResult Function(Failure failure) error,
  }) {
    return error(failure);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<MessageEntity> messages,
            Map<String, Set<ReactionType>> userSessionReactions, int version)?
        loaded,
    TResult? Function(List<MessageEntity> messages,
            Map<String, Set<ReactionType>> userSessionReactions)?
        messageSending,
    TResult? Function(List<MessageEntity> messages, MessageEntity newMessage,
            Map<String, Set<ReactionType>> userSessionReactions)?
        messageSent,
    TResult? Function(List<MessageEntity> messages,
            Map<String, Set<ReactionType>> userSessionReactions)?
        messageReactionUpdating,
    TResult? Function(List<MessageEntity> messages,
            Map<String, Set<ReactionType>> userSessionReactions)?
        messageReactionUpdated,
    TResult? Function(Failure failure)? error,
  }) {
    return error?.call(failure);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<MessageEntity> messages,
            Map<String, Set<ReactionType>> userSessionReactions, int version)?
        loaded,
    TResult Function(List<MessageEntity> messages,
            Map<String, Set<ReactionType>> userSessionReactions)?
        messageSending,
    TResult Function(List<MessageEntity> messages, MessageEntity newMessage,
            Map<String, Set<ReactionType>> userSessionReactions)?
        messageSent,
    TResult Function(List<MessageEntity> messages,
            Map<String, Set<ReactionType>> userSessionReactions)?
        messageReactionUpdating,
    TResult Function(List<MessageEntity> messages,
            Map<String, Set<ReactionType>> userSessionReactions)?
        messageReactionUpdated,
    TResult Function(Failure failure)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(failure);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initial value) initial,
    required TResult Function(Loading value) loading,
    required TResult Function(Loaded value) loaded,
    required TResult Function(MessageSending value) messageSending,
    required TResult Function(MessageSent value) messageSent,
    required TResult Function(MessageReactionUpdating value)
        messageReactionUpdating,
    required TResult Function(MessageReactionUpdated value)
        messageReactionUpdated,
    required TResult Function(Error value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Initial value)? initial,
    TResult? Function(Loading value)? loading,
    TResult? Function(Loaded value)? loaded,
    TResult? Function(MessageSending value)? messageSending,
    TResult? Function(MessageSent value)? messageSent,
    TResult? Function(MessageReactionUpdating value)? messageReactionUpdating,
    TResult? Function(MessageReactionUpdated value)? messageReactionUpdated,
    TResult? Function(Error value)? error,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(Loading value)? loading,
    TResult Function(Loaded value)? loaded,
    TResult Function(MessageSending value)? messageSending,
    TResult Function(MessageSent value)? messageSent,
    TResult Function(MessageReactionUpdating value)? messageReactionUpdating,
    TResult Function(MessageReactionUpdated value)? messageReactionUpdated,
    TResult Function(Error value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class Error implements ChatMessageState {
  const factory Error({required final Failure failure}) = _$ErrorImpl;

  Failure get failure;

  /// Create a copy of ChatMessageState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ErrorImplCopyWith<_$ErrorImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
