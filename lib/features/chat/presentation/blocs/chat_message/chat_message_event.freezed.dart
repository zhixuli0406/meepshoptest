// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'chat_message_event.dart';

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
    required TResult Function(String conversationId) loadMessages,
    required TResult Function(
            String conversationId, String messageText, int currentUserId)
        sendMessage,
    required TResult Function(String conversationId, String messageId,
            ReactionType reactionType, int currentUserId)
        addReaction,
    required TResult Function(
            String conversationId, String imagePath, int currentUserId)
        sendImageMessage,
    required TResult Function(MessageEntity newMessage) mockMessageAdded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String conversationId)? loadMessages,
    TResult? Function(
            String conversationId, String messageText, int currentUserId)?
        sendMessage,
    TResult? Function(String conversationId, String messageId,
            ReactionType reactionType, int currentUserId)?
        addReaction,
    TResult? Function(
            String conversationId, String imagePath, int currentUserId)?
        sendImageMessage,
    TResult? Function(MessageEntity newMessage)? mockMessageAdded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String conversationId)? loadMessages,
    TResult Function(
            String conversationId, String messageText, int currentUserId)?
        sendMessage,
    TResult Function(String conversationId, String messageId,
            ReactionType reactionType, int currentUserId)?
        addReaction,
    TResult Function(
            String conversationId, String imagePath, int currentUserId)?
        sendImageMessage,
    TResult Function(MessageEntity newMessage)? mockMessageAdded,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LoadMessages value) loadMessages,
    required TResult Function(SendMessage value) sendMessage,
    required TResult Function(AddReaction value) addReaction,
    required TResult Function(SendImageMessage value) sendImageMessage,
    required TResult Function(MockMessageAdded value) mockMessageAdded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(LoadMessages value)? loadMessages,
    TResult? Function(SendMessage value)? sendMessage,
    TResult? Function(AddReaction value)? addReaction,
    TResult? Function(SendImageMessage value)? sendImageMessage,
    TResult? Function(MockMessageAdded value)? mockMessageAdded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoadMessages value)? loadMessages,
    TResult Function(SendMessage value)? sendMessage,
    TResult Function(AddReaction value)? addReaction,
    TResult Function(SendImageMessage value)? sendImageMessage,
    TResult Function(MockMessageAdded value)? mockMessageAdded,
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
    required TResult Function(String conversationId) loadMessages,
    required TResult Function(
            String conversationId, String messageText, int currentUserId)
        sendMessage,
    required TResult Function(String conversationId, String messageId,
            ReactionType reactionType, int currentUserId)
        addReaction,
    required TResult Function(
            String conversationId, String imagePath, int currentUserId)
        sendImageMessage,
    required TResult Function(MessageEntity newMessage) mockMessageAdded,
  }) {
    return loadMessages(conversationId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String conversationId)? loadMessages,
    TResult? Function(
            String conversationId, String messageText, int currentUserId)?
        sendMessage,
    TResult? Function(String conversationId, String messageId,
            ReactionType reactionType, int currentUserId)?
        addReaction,
    TResult? Function(
            String conversationId, String imagePath, int currentUserId)?
        sendImageMessage,
    TResult? Function(MessageEntity newMessage)? mockMessageAdded,
  }) {
    return loadMessages?.call(conversationId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String conversationId)? loadMessages,
    TResult Function(
            String conversationId, String messageText, int currentUserId)?
        sendMessage,
    TResult Function(String conversationId, String messageId,
            ReactionType reactionType, int currentUserId)?
        addReaction,
    TResult Function(
            String conversationId, String imagePath, int currentUserId)?
        sendImageMessage,
    TResult Function(MessageEntity newMessage)? mockMessageAdded,
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
    required TResult Function(LoadMessages value) loadMessages,
    required TResult Function(SendMessage value) sendMessage,
    required TResult Function(AddReaction value) addReaction,
    required TResult Function(SendImageMessage value) sendImageMessage,
    required TResult Function(MockMessageAdded value) mockMessageAdded,
  }) {
    return loadMessages(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(LoadMessages value)? loadMessages,
    TResult? Function(SendMessage value)? sendMessage,
    TResult? Function(AddReaction value)? addReaction,
    TResult? Function(SendImageMessage value)? sendImageMessage,
    TResult? Function(MockMessageAdded value)? mockMessageAdded,
  }) {
    return loadMessages?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoadMessages value)? loadMessages,
    TResult Function(SendMessage value)? sendMessage,
    TResult Function(AddReaction value)? addReaction,
    TResult Function(SendImageMessage value)? sendImageMessage,
    TResult Function(MockMessageAdded value)? mockMessageAdded,
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
  $Res call({String conversationId, String messageText, int currentUserId});
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
              as int,
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
  final int currentUserId;

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
    required TResult Function(String conversationId) loadMessages,
    required TResult Function(
            String conversationId, String messageText, int currentUserId)
        sendMessage,
    required TResult Function(String conversationId, String messageId,
            ReactionType reactionType, int currentUserId)
        addReaction,
    required TResult Function(
            String conversationId, String imagePath, int currentUserId)
        sendImageMessage,
    required TResult Function(MessageEntity newMessage) mockMessageAdded,
  }) {
    return sendMessage(conversationId, messageText, currentUserId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String conversationId)? loadMessages,
    TResult? Function(
            String conversationId, String messageText, int currentUserId)?
        sendMessage,
    TResult? Function(String conversationId, String messageId,
            ReactionType reactionType, int currentUserId)?
        addReaction,
    TResult? Function(
            String conversationId, String imagePath, int currentUserId)?
        sendImageMessage,
    TResult? Function(MessageEntity newMessage)? mockMessageAdded,
  }) {
    return sendMessage?.call(conversationId, messageText, currentUserId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String conversationId)? loadMessages,
    TResult Function(
            String conversationId, String messageText, int currentUserId)?
        sendMessage,
    TResult Function(String conversationId, String messageId,
            ReactionType reactionType, int currentUserId)?
        addReaction,
    TResult Function(
            String conversationId, String imagePath, int currentUserId)?
        sendImageMessage,
    TResult Function(MessageEntity newMessage)? mockMessageAdded,
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
    required TResult Function(LoadMessages value) loadMessages,
    required TResult Function(SendMessage value) sendMessage,
    required TResult Function(AddReaction value) addReaction,
    required TResult Function(SendImageMessage value) sendImageMessage,
    required TResult Function(MockMessageAdded value) mockMessageAdded,
  }) {
    return sendMessage(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(LoadMessages value)? loadMessages,
    TResult? Function(SendMessage value)? sendMessage,
    TResult? Function(AddReaction value)? addReaction,
    TResult? Function(SendImageMessage value)? sendImageMessage,
    TResult? Function(MockMessageAdded value)? mockMessageAdded,
  }) {
    return sendMessage?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoadMessages value)? loadMessages,
    TResult Function(SendMessage value)? sendMessage,
    TResult Function(AddReaction value)? addReaction,
    TResult Function(SendImageMessage value)? sendImageMessage,
    TResult Function(MockMessageAdded value)? mockMessageAdded,
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
      required final int currentUserId}) = _$SendMessageImpl;

  String get conversationId;
  String get messageText;
  int get currentUserId;

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
      String messageId,
      ReactionType reactionType,
      int currentUserId});
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
    Object? messageId = null,
    Object? reactionType = null,
    Object? currentUserId = null,
  }) {
    return _then(_$AddReactionImpl(
      conversationId: null == conversationId
          ? _value.conversationId
          : conversationId // ignore: cast_nullable_to_non_nullable
              as String,
      messageId: null == messageId
          ? _value.messageId
          : messageId // ignore: cast_nullable_to_non_nullable
              as String,
      reactionType: null == reactionType
          ? _value.reactionType
          : reactionType // ignore: cast_nullable_to_non_nullable
              as ReactionType,
      currentUserId: null == currentUserId
          ? _value.currentUserId
          : currentUserId // ignore: cast_nullable_to_non_nullable
              as int,
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
  final String messageId;
  @override
  final ReactionType reactionType;
  @override
  final int currentUserId;

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
    required TResult Function(String conversationId) loadMessages,
    required TResult Function(
            String conversationId, String messageText, int currentUserId)
        sendMessage,
    required TResult Function(String conversationId, String messageId,
            ReactionType reactionType, int currentUserId)
        addReaction,
    required TResult Function(
            String conversationId, String imagePath, int currentUserId)
        sendImageMessage,
    required TResult Function(MessageEntity newMessage) mockMessageAdded,
  }) {
    return addReaction(conversationId, messageId, reactionType, currentUserId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String conversationId)? loadMessages,
    TResult? Function(
            String conversationId, String messageText, int currentUserId)?
        sendMessage,
    TResult? Function(String conversationId, String messageId,
            ReactionType reactionType, int currentUserId)?
        addReaction,
    TResult? Function(
            String conversationId, String imagePath, int currentUserId)?
        sendImageMessage,
    TResult? Function(MessageEntity newMessage)? mockMessageAdded,
  }) {
    return addReaction?.call(
        conversationId, messageId, reactionType, currentUserId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String conversationId)? loadMessages,
    TResult Function(
            String conversationId, String messageText, int currentUserId)?
        sendMessage,
    TResult Function(String conversationId, String messageId,
            ReactionType reactionType, int currentUserId)?
        addReaction,
    TResult Function(
            String conversationId, String imagePath, int currentUserId)?
        sendImageMessage,
    TResult Function(MessageEntity newMessage)? mockMessageAdded,
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
    required TResult Function(LoadMessages value) loadMessages,
    required TResult Function(SendMessage value) sendMessage,
    required TResult Function(AddReaction value) addReaction,
    required TResult Function(SendImageMessage value) sendImageMessage,
    required TResult Function(MockMessageAdded value) mockMessageAdded,
  }) {
    return addReaction(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(LoadMessages value)? loadMessages,
    TResult? Function(SendMessage value)? sendMessage,
    TResult? Function(AddReaction value)? addReaction,
    TResult? Function(SendImageMessage value)? sendImageMessage,
    TResult? Function(MockMessageAdded value)? mockMessageAdded,
  }) {
    return addReaction?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoadMessages value)? loadMessages,
    TResult Function(SendMessage value)? sendMessage,
    TResult Function(AddReaction value)? addReaction,
    TResult Function(SendImageMessage value)? sendImageMessage,
    TResult Function(MockMessageAdded value)? mockMessageAdded,
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
      required final String messageId,
      required final ReactionType reactionType,
      required final int currentUserId}) = _$AddReactionImpl;

  String get conversationId;
  String get messageId;
  ReactionType get reactionType;
  int get currentUserId;

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
  $Res call({String conversationId, String imagePath, int currentUserId});
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
              as int,
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
  final int currentUserId;

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
    required TResult Function(String conversationId) loadMessages,
    required TResult Function(
            String conversationId, String messageText, int currentUserId)
        sendMessage,
    required TResult Function(String conversationId, String messageId,
            ReactionType reactionType, int currentUserId)
        addReaction,
    required TResult Function(
            String conversationId, String imagePath, int currentUserId)
        sendImageMessage,
    required TResult Function(MessageEntity newMessage) mockMessageAdded,
  }) {
    return sendImageMessage(conversationId, imagePath, currentUserId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String conversationId)? loadMessages,
    TResult? Function(
            String conversationId, String messageText, int currentUserId)?
        sendMessage,
    TResult? Function(String conversationId, String messageId,
            ReactionType reactionType, int currentUserId)?
        addReaction,
    TResult? Function(
            String conversationId, String imagePath, int currentUserId)?
        sendImageMessage,
    TResult? Function(MessageEntity newMessage)? mockMessageAdded,
  }) {
    return sendImageMessage?.call(conversationId, imagePath, currentUserId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String conversationId)? loadMessages,
    TResult Function(
            String conversationId, String messageText, int currentUserId)?
        sendMessage,
    TResult Function(String conversationId, String messageId,
            ReactionType reactionType, int currentUserId)?
        addReaction,
    TResult Function(
            String conversationId, String imagePath, int currentUserId)?
        sendImageMessage,
    TResult Function(MessageEntity newMessage)? mockMessageAdded,
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
    required TResult Function(LoadMessages value) loadMessages,
    required TResult Function(SendMessage value) sendMessage,
    required TResult Function(AddReaction value) addReaction,
    required TResult Function(SendImageMessage value) sendImageMessage,
    required TResult Function(MockMessageAdded value) mockMessageAdded,
  }) {
    return sendImageMessage(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(LoadMessages value)? loadMessages,
    TResult? Function(SendMessage value)? sendMessage,
    TResult? Function(AddReaction value)? addReaction,
    TResult? Function(SendImageMessage value)? sendImageMessage,
    TResult? Function(MockMessageAdded value)? mockMessageAdded,
  }) {
    return sendImageMessage?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoadMessages value)? loadMessages,
    TResult Function(SendMessage value)? sendMessage,
    TResult Function(AddReaction value)? addReaction,
    TResult Function(SendImageMessage value)? sendImageMessage,
    TResult Function(MockMessageAdded value)? mockMessageAdded,
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
      required final int currentUserId}) = _$SendImageMessageImpl;

  String get conversationId;
  String get imagePath;
  int get currentUserId;

  /// Create a copy of ChatMessageEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SendImageMessageImplCopyWith<_$SendImageMessageImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$MockMessageAddedImplCopyWith<$Res> {
  factory _$$MockMessageAddedImplCopyWith(_$MockMessageAddedImpl value,
          $Res Function(_$MockMessageAddedImpl) then) =
      __$$MockMessageAddedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({MessageEntity newMessage});

  $MessageEntityCopyWith<$Res> get newMessage;
}

/// @nodoc
class __$$MockMessageAddedImplCopyWithImpl<$Res>
    extends _$ChatMessageEventCopyWithImpl<$Res, _$MockMessageAddedImpl>
    implements _$$MockMessageAddedImplCopyWith<$Res> {
  __$$MockMessageAddedImplCopyWithImpl(_$MockMessageAddedImpl _value,
      $Res Function(_$MockMessageAddedImpl) _then)
      : super(_value, _then);

  /// Create a copy of ChatMessageEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? newMessage = null,
  }) {
    return _then(_$MockMessageAddedImpl(
      newMessage: null == newMessage
          ? _value.newMessage
          : newMessage // ignore: cast_nullable_to_non_nullable
              as MessageEntity,
    ));
  }

  /// Create a copy of ChatMessageEvent
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

class _$MockMessageAddedImpl implements MockMessageAdded {
  const _$MockMessageAddedImpl({required this.newMessage});

  @override
  final MessageEntity newMessage;

  @override
  String toString() {
    return 'ChatMessageEvent.mockMessageAdded(newMessage: $newMessage)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MockMessageAddedImpl &&
            (identical(other.newMessage, newMessage) ||
                other.newMessage == newMessage));
  }

  @override
  int get hashCode => Object.hash(runtimeType, newMessage);

  /// Create a copy of ChatMessageEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$MockMessageAddedImplCopyWith<_$MockMessageAddedImpl> get copyWith =>
      __$$MockMessageAddedImplCopyWithImpl<_$MockMessageAddedImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String conversationId) loadMessages,
    required TResult Function(
            String conversationId, String messageText, int currentUserId)
        sendMessage,
    required TResult Function(String conversationId, String messageId,
            ReactionType reactionType, int currentUserId)
        addReaction,
    required TResult Function(
            String conversationId, String imagePath, int currentUserId)
        sendImageMessage,
    required TResult Function(MessageEntity newMessage) mockMessageAdded,
  }) {
    return mockMessageAdded(newMessage);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String conversationId)? loadMessages,
    TResult? Function(
            String conversationId, String messageText, int currentUserId)?
        sendMessage,
    TResult? Function(String conversationId, String messageId,
            ReactionType reactionType, int currentUserId)?
        addReaction,
    TResult? Function(
            String conversationId, String imagePath, int currentUserId)?
        sendImageMessage,
    TResult? Function(MessageEntity newMessage)? mockMessageAdded,
  }) {
    return mockMessageAdded?.call(newMessage);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String conversationId)? loadMessages,
    TResult Function(
            String conversationId, String messageText, int currentUserId)?
        sendMessage,
    TResult Function(String conversationId, String messageId,
            ReactionType reactionType, int currentUserId)?
        addReaction,
    TResult Function(
            String conversationId, String imagePath, int currentUserId)?
        sendImageMessage,
    TResult Function(MessageEntity newMessage)? mockMessageAdded,
    required TResult orElse(),
  }) {
    if (mockMessageAdded != null) {
      return mockMessageAdded(newMessage);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LoadMessages value) loadMessages,
    required TResult Function(SendMessage value) sendMessage,
    required TResult Function(AddReaction value) addReaction,
    required TResult Function(SendImageMessage value) sendImageMessage,
    required TResult Function(MockMessageAdded value) mockMessageAdded,
  }) {
    return mockMessageAdded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(LoadMessages value)? loadMessages,
    TResult? Function(SendMessage value)? sendMessage,
    TResult? Function(AddReaction value)? addReaction,
    TResult? Function(SendImageMessage value)? sendImageMessage,
    TResult? Function(MockMessageAdded value)? mockMessageAdded,
  }) {
    return mockMessageAdded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoadMessages value)? loadMessages,
    TResult Function(SendMessage value)? sendMessage,
    TResult Function(AddReaction value)? addReaction,
    TResult Function(SendImageMessage value)? sendImageMessage,
    TResult Function(MockMessageAdded value)? mockMessageAdded,
    required TResult orElse(),
  }) {
    if (mockMessageAdded != null) {
      return mockMessageAdded(this);
    }
    return orElse();
  }
}

abstract class MockMessageAdded implements ChatMessageEvent {
  const factory MockMessageAdded({required final MessageEntity newMessage}) =
      _$MockMessageAddedImpl;

  MessageEntity get newMessage;

  /// Create a copy of ChatMessageEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$MockMessageAddedImplCopyWith<_$MockMessageAddedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
