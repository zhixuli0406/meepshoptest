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
  String get id => throw _privateConstructorUsedError;
  String get conversationId => throw _privateConstructorUsedError;
  MessageSenderEntity get sender => throw _privateConstructorUsedError;
  MessageType get type => throw _privateConstructorUsedError;
  String get content => throw _privateConstructorUsedError;
  String? get imageUrl =>
      throw _privateConstructorUsedError; // In Domain, we prefer direct image URL if type is image
  String? get s3Key =>
      throw _privateConstructorUsedError; // Keep s3Key if needed for other operations, e.g., delete
  DateTime get timestamp => throw _privateConstructorUsedError;
  List<ReactionDetailEntity>? get reactions =>
      throw _privateConstructorUsedError;

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
      {String id,
      String conversationId,
      MessageSenderEntity sender,
      MessageType type,
      String content,
      String? imageUrl,
      String? s3Key,
      DateTime timestamp,
      List<ReactionDetailEntity>? reactions});

  $MessageSenderEntityCopyWith<$Res> get sender;
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
    Object? id = null,
    Object? conversationId = null,
    Object? sender = null,
    Object? type = null,
    Object? content = null,
    Object? imageUrl = freezed,
    Object? s3Key = freezed,
    Object? timestamp = null,
    Object? reactions = freezed,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      conversationId: null == conversationId
          ? _value.conversationId
          : conversationId // ignore: cast_nullable_to_non_nullable
              as String,
      sender: null == sender
          ? _value.sender
          : sender // ignore: cast_nullable_to_non_nullable
              as MessageSenderEntity,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as MessageType,
      content: null == content
          ? _value.content
          : content // ignore: cast_nullable_to_non_nullable
              as String,
      imageUrl: freezed == imageUrl
          ? _value.imageUrl
          : imageUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      s3Key: freezed == s3Key
          ? _value.s3Key
          : s3Key // ignore: cast_nullable_to_non_nullable
              as String?,
      timestamp: null == timestamp
          ? _value.timestamp
          : timestamp // ignore: cast_nullable_to_non_nullable
              as DateTime,
      reactions: freezed == reactions
          ? _value.reactions
          : reactions // ignore: cast_nullable_to_non_nullable
              as List<ReactionDetailEntity>?,
    ) as $Val);
  }

  /// Create a copy of MessageEntity
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $MessageSenderEntityCopyWith<$Res> get sender {
    return $MessageSenderEntityCopyWith<$Res>(_value.sender, (value) {
      return _then(_value.copyWith(sender: value) as $Val);
    });
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
      {String id,
      String conversationId,
      MessageSenderEntity sender,
      MessageType type,
      String content,
      String? imageUrl,
      String? s3Key,
      DateTime timestamp,
      List<ReactionDetailEntity>? reactions});

  @override
  $MessageSenderEntityCopyWith<$Res> get sender;
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
    Object? id = null,
    Object? conversationId = null,
    Object? sender = null,
    Object? type = null,
    Object? content = null,
    Object? imageUrl = freezed,
    Object? s3Key = freezed,
    Object? timestamp = null,
    Object? reactions = freezed,
  }) {
    return _then(_$MessageEntityImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      conversationId: null == conversationId
          ? _value.conversationId
          : conversationId // ignore: cast_nullable_to_non_nullable
              as String,
      sender: null == sender
          ? _value.sender
          : sender // ignore: cast_nullable_to_non_nullable
              as MessageSenderEntity,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as MessageType,
      content: null == content
          ? _value.content
          : content // ignore: cast_nullable_to_non_nullable
              as String,
      imageUrl: freezed == imageUrl
          ? _value.imageUrl
          : imageUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      s3Key: freezed == s3Key
          ? _value.s3Key
          : s3Key // ignore: cast_nullable_to_non_nullable
              as String?,
      timestamp: null == timestamp
          ? _value.timestamp
          : timestamp // ignore: cast_nullable_to_non_nullable
              as DateTime,
      reactions: freezed == reactions
          ? _value._reactions
          : reactions // ignore: cast_nullable_to_non_nullable
              as List<ReactionDetailEntity>?,
    ));
  }
}

/// @nodoc

class _$MessageEntityImpl implements _MessageEntity {
  const _$MessageEntityImpl(
      {required this.id,
      required this.conversationId,
      required this.sender,
      required this.type,
      required this.content,
      this.imageUrl,
      this.s3Key,
      required this.timestamp,
      final List<ReactionDetailEntity>? reactions})
      : _reactions = reactions;

  @override
  final String id;
  @override
  final String conversationId;
  @override
  final MessageSenderEntity sender;
  @override
  final MessageType type;
  @override
  final String content;
  @override
  final String? imageUrl;
// In Domain, we prefer direct image URL if type is image
  @override
  final String? s3Key;
// Keep s3Key if needed for other operations, e.g., delete
  @override
  final DateTime timestamp;
  final List<ReactionDetailEntity>? _reactions;
  @override
  List<ReactionDetailEntity>? get reactions {
    final value = _reactions;
    if (value == null) return null;
    if (_reactions is EqualUnmodifiableListView) return _reactions;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'MessageEntity(id: $id, conversationId: $conversationId, sender: $sender, type: $type, content: $content, imageUrl: $imageUrl, s3Key: $s3Key, timestamp: $timestamp, reactions: $reactions)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MessageEntityImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.conversationId, conversationId) ||
                other.conversationId == conversationId) &&
            (identical(other.sender, sender) || other.sender == sender) &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.content, content) || other.content == content) &&
            (identical(other.imageUrl, imageUrl) ||
                other.imageUrl == imageUrl) &&
            (identical(other.s3Key, s3Key) || other.s3Key == s3Key) &&
            (identical(other.timestamp, timestamp) ||
                other.timestamp == timestamp) &&
            const DeepCollectionEquality()
                .equals(other._reactions, _reactions));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      conversationId,
      sender,
      type,
      content,
      imageUrl,
      s3Key,
      timestamp,
      const DeepCollectionEquality().hash(_reactions));

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
      {required final String id,
      required final String conversationId,
      required final MessageSenderEntity sender,
      required final MessageType type,
      required final String content,
      final String? imageUrl,
      final String? s3Key,
      required final DateTime timestamp,
      final List<ReactionDetailEntity>? reactions}) = _$MessageEntityImpl;

  @override
  String get id;
  @override
  String get conversationId;
  @override
  MessageSenderEntity get sender;
  @override
  MessageType get type;
  @override
  String get content;
  @override
  String?
      get imageUrl; // In Domain, we prefer direct image URL if type is image
  @override
  String? get s3Key; // Keep s3Key if needed for other operations, e.g., delete
  @override
  DateTime get timestamp;
  @override
  List<ReactionDetailEntity>? get reactions;

  /// Create a copy of MessageEntity
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$MessageEntityImplCopyWith<_$MessageEntityImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
