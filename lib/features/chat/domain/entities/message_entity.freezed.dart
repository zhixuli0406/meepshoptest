// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'message_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$MessageEntity {
  String? get id => throw _privateConstructorUsedError;
  String get conversationId => throw _privateConstructorUsedError;
  String get userId => throw _privateConstructorUsedError;
  String get user => throw _privateConstructorUsedError;
  String get avatar => throw _privateConstructorUsedError;
  String get messageType => throw _privateConstructorUsedError;
  String get message => throw _privateConstructorUsedError;
  List<ReactionDetailEntity> get reactions =>
      throw _privateConstructorUsedError;
  DateTime get timestamp => throw _privateConstructorUsedError;

  /// Create a copy of MessageEntity
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $MessageEntityCopyWith<MessageEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MessageEntityCopyWith<$Res> {
  factory $MessageEntityCopyWith(
          MessageEntity value, $Res Function(MessageEntity) then) =
      _$MessageEntityCopyWithImpl<$Res, MessageEntity>;
  @useResult
  $Res call(
      {String? id,
      String conversationId,
      String userId,
      String user,
      String avatar,
      String messageType,
      String message,
      List<ReactionDetailEntity> reactions,
      DateTime timestamp});
}

/// @nodoc
class _$MessageEntityCopyWithImpl<$Res, $Val extends MessageEntity>
    implements $MessageEntityCopyWith<$Res> {
  _$MessageEntityCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of MessageEntity
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? conversationId = null,
    Object? userId = null,
    Object? user = null,
    Object? avatar = null,
    Object? messageType = null,
    Object? message = null,
    Object? reactions = null,
    Object? timestamp = null,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      conversationId: null == conversationId
          ? _value.conversationId
          : conversationId // ignore: cast_nullable_to_non_nullable
              as String,
      userId: null == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String,
      user: null == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as String,
      avatar: null == avatar
          ? _value.avatar
          : avatar // ignore: cast_nullable_to_non_nullable
              as String,
      messageType: null == messageType
          ? _value.messageType
          : messageType // ignore: cast_nullable_to_non_nullable
              as String,
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
      reactions: null == reactions
          ? _value.reactions
          : reactions // ignore: cast_nullable_to_non_nullable
              as List<ReactionDetailEntity>,
      timestamp: null == timestamp
          ? _value.timestamp
          : timestamp // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$MessageEntityImplCopyWith<$Res>
    implements $MessageEntityCopyWith<$Res> {
  factory _$$MessageEntityImplCopyWith(
          _$MessageEntityImpl value, $Res Function(_$MessageEntityImpl) then) =
      __$$MessageEntityImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? id,
      String conversationId,
      String userId,
      String user,
      String avatar,
      String messageType,
      String message,
      List<ReactionDetailEntity> reactions,
      DateTime timestamp});
}

/// @nodoc
class __$$MessageEntityImplCopyWithImpl<$Res>
    extends _$MessageEntityCopyWithImpl<$Res, _$MessageEntityImpl>
    implements _$$MessageEntityImplCopyWith<$Res> {
  __$$MessageEntityImplCopyWithImpl(
      _$MessageEntityImpl _value, $Res Function(_$MessageEntityImpl) _then)
      : super(_value, _then);

  /// Create a copy of MessageEntity
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? conversationId = null,
    Object? userId = null,
    Object? user = null,
    Object? avatar = null,
    Object? messageType = null,
    Object? message = null,
    Object? reactions = null,
    Object? timestamp = null,
  }) {
    return _then(_$MessageEntityImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      conversationId: null == conversationId
          ? _value.conversationId
          : conversationId // ignore: cast_nullable_to_non_nullable
              as String,
      userId: null == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String,
      user: null == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as String,
      avatar: null == avatar
          ? _value.avatar
          : avatar // ignore: cast_nullable_to_non_nullable
              as String,
      messageType: null == messageType
          ? _value.messageType
          : messageType // ignore: cast_nullable_to_non_nullable
              as String,
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
      reactions: null == reactions
          ? _value._reactions
          : reactions // ignore: cast_nullable_to_non_nullable
              as List<ReactionDetailEntity>,
      timestamp: null == timestamp
          ? _value.timestamp
          : timestamp // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ));
  }
}

/// @nodoc

class _$MessageEntityImpl implements _MessageEntity {
  const _$MessageEntityImpl(
      {this.id,
      required this.conversationId,
      required this.userId,
      required this.user,
      required this.avatar,
      required this.messageType,
      required this.message,
      required final List<ReactionDetailEntity> reactions,
      required this.timestamp})
      : _reactions = reactions;

  @override
  final String? id;
  @override
  final String conversationId;
  @override
  final String userId;
  @override
  final String user;
  @override
  final String avatar;
  @override
  final String messageType;
  @override
  final String message;
  final List<ReactionDetailEntity> _reactions;
  @override
  List<ReactionDetailEntity> get reactions {
    if (_reactions is EqualUnmodifiableListView) return _reactions;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_reactions);
  }

  @override
  final DateTime timestamp;

  @override
  String toString() {
    return 'MessageEntity(id: $id, conversationId: $conversationId, userId: $userId, user: $user, avatar: $avatar, messageType: $messageType, message: $message, reactions: $reactions, timestamp: $timestamp)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MessageEntityImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.conversationId, conversationId) ||
                other.conversationId == conversationId) &&
            (identical(other.userId, userId) || other.userId == userId) &&
            (identical(other.user, user) || other.user == user) &&
            (identical(other.avatar, avatar) || other.avatar == avatar) &&
            (identical(other.messageType, messageType) ||
                other.messageType == messageType) &&
            (identical(other.message, message) || other.message == message) &&
            const DeepCollectionEquality()
                .equals(other._reactions, _reactions) &&
            (identical(other.timestamp, timestamp) ||
                other.timestamp == timestamp));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      conversationId,
      userId,
      user,
      avatar,
      messageType,
      message,
      const DeepCollectionEquality().hash(_reactions),
      timestamp);

  /// Create a copy of MessageEntity
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$MessageEntityImplCopyWith<_$MessageEntityImpl> get copyWith =>
      __$$MessageEntityImplCopyWithImpl<_$MessageEntityImpl>(this, _$identity);
}

abstract class _MessageEntity implements MessageEntity {
  const factory _MessageEntity(
      {final String? id,
      required final String conversationId,
      required final String userId,
      required final String user,
      required final String avatar,
      required final String messageType,
      required final String message,
      required final List<ReactionDetailEntity> reactions,
      required final DateTime timestamp}) = _$MessageEntityImpl;

  @override
  String? get id;
  @override
  String get conversationId;
  @override
  String get userId;
  @override
  String get user;
  @override
  String get avatar;
  @override
  String get messageType;
  @override
  String get message;
  @override
  List<ReactionDetailEntity> get reactions;
  @override
  DateTime get timestamp;

  /// Create a copy of MessageEntity
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$MessageEntityImplCopyWith<_$MessageEntityImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
