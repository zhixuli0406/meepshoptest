// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'message_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

MessageModel _$MessageModelFromJson(Map<String, dynamic> json) {
  return _MessageModel.fromJson(json);
}

/// @nodoc
mixin _$MessageModel {
  @JsonKey(name: '_id')
  String? get id => throw _privateConstructorUsedError;
  String get conversationId => throw _privateConstructorUsedError;
  @JsonKey(name: 'senderId')
  SenderModel? get sender => throw _privateConstructorUsedError;
  String get type => throw _privateConstructorUsedError;
  String get content => throw _privateConstructorUsedError;
  @JsonKey(name: 's3_key')
  String? get s3Key => throw _privateConstructorUsedError;
  String? get imageUrl => throw _privateConstructorUsedError;
  Map<String, int>? get reactions => throw _privateConstructorUsedError;
  @JsonKey(name: 'createdAt')
  DateTime get createdAt => throw _privateConstructorUsedError;
  @JsonKey(name: 'updatedAt')
  DateTime? get updatedAt => throw _privateConstructorUsedError;
  int? get legacyConvId => throw _privateConstructorUsedError;
  int? get legacySenderId => throw _privateConstructorUsedError;

  /// Serializes this MessageModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of MessageModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $MessageModelCopyWith<MessageModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MessageModelCopyWith<$Res> {
  factory $MessageModelCopyWith(
          MessageModel value, $Res Function(MessageModel) then) =
      _$MessageModelCopyWithImpl<$Res, MessageModel>;
  @useResult
  $Res call(
      {@JsonKey(name: '_id') String? id,
      String conversationId,
      @JsonKey(name: 'senderId') SenderModel? sender,
      String type,
      String content,
      @JsonKey(name: 's3_key') String? s3Key,
      String? imageUrl,
      Map<String, int>? reactions,
      @JsonKey(name: 'createdAt') DateTime createdAt,
      @JsonKey(name: 'updatedAt') DateTime? updatedAt,
      int? legacyConvId,
      int? legacySenderId});

  $SenderModelCopyWith<$Res>? get sender;
}

/// @nodoc
class _$MessageModelCopyWithImpl<$Res, $Val extends MessageModel>
    implements $MessageModelCopyWith<$Res> {
  _$MessageModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of MessageModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? conversationId = null,
    Object? sender = freezed,
    Object? type = null,
    Object? content = null,
    Object? s3Key = freezed,
    Object? imageUrl = freezed,
    Object? reactions = freezed,
    Object? createdAt = null,
    Object? updatedAt = freezed,
    Object? legacyConvId = freezed,
    Object? legacySenderId = freezed,
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
      sender: freezed == sender
          ? _value.sender
          : sender // ignore: cast_nullable_to_non_nullable
              as SenderModel?,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String,
      content: null == content
          ? _value.content
          : content // ignore: cast_nullable_to_non_nullable
              as String,
      s3Key: freezed == s3Key
          ? _value.s3Key
          : s3Key // ignore: cast_nullable_to_non_nullable
              as String?,
      imageUrl: freezed == imageUrl
          ? _value.imageUrl
          : imageUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      reactions: freezed == reactions
          ? _value.reactions
          : reactions // ignore: cast_nullable_to_non_nullable
              as Map<String, int>?,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      updatedAt: freezed == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      legacyConvId: freezed == legacyConvId
          ? _value.legacyConvId
          : legacyConvId // ignore: cast_nullable_to_non_nullable
              as int?,
      legacySenderId: freezed == legacySenderId
          ? _value.legacySenderId
          : legacySenderId // ignore: cast_nullable_to_non_nullable
              as int?,
    ) as $Val);
  }

  /// Create a copy of MessageModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $SenderModelCopyWith<$Res>? get sender {
    if (_value.sender == null) {
      return null;
    }

    return $SenderModelCopyWith<$Res>(_value.sender!, (value) {
      return _then(_value.copyWith(sender: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$MessageModelImplCopyWith<$Res>
    implements $MessageModelCopyWith<$Res> {
  factory _$$MessageModelImplCopyWith(
          _$MessageModelImpl value, $Res Function(_$MessageModelImpl) then) =
      __$$MessageModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: '_id') String? id,
      String conversationId,
      @JsonKey(name: 'senderId') SenderModel? sender,
      String type,
      String content,
      @JsonKey(name: 's3_key') String? s3Key,
      String? imageUrl,
      Map<String, int>? reactions,
      @JsonKey(name: 'createdAt') DateTime createdAt,
      @JsonKey(name: 'updatedAt') DateTime? updatedAt,
      int? legacyConvId,
      int? legacySenderId});

  @override
  $SenderModelCopyWith<$Res>? get sender;
}

/// @nodoc
class __$$MessageModelImplCopyWithImpl<$Res>
    extends _$MessageModelCopyWithImpl<$Res, _$MessageModelImpl>
    implements _$$MessageModelImplCopyWith<$Res> {
  __$$MessageModelImplCopyWithImpl(
      _$MessageModelImpl _value, $Res Function(_$MessageModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of MessageModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? conversationId = null,
    Object? sender = freezed,
    Object? type = null,
    Object? content = null,
    Object? s3Key = freezed,
    Object? imageUrl = freezed,
    Object? reactions = freezed,
    Object? createdAt = null,
    Object? updatedAt = freezed,
    Object? legacyConvId = freezed,
    Object? legacySenderId = freezed,
  }) {
    return _then(_$MessageModelImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      conversationId: null == conversationId
          ? _value.conversationId
          : conversationId // ignore: cast_nullable_to_non_nullable
              as String,
      sender: freezed == sender
          ? _value.sender
          : sender // ignore: cast_nullable_to_non_nullable
              as SenderModel?,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String,
      content: null == content
          ? _value.content
          : content // ignore: cast_nullable_to_non_nullable
              as String,
      s3Key: freezed == s3Key
          ? _value.s3Key
          : s3Key // ignore: cast_nullable_to_non_nullable
              as String?,
      imageUrl: freezed == imageUrl
          ? _value.imageUrl
          : imageUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      reactions: freezed == reactions
          ? _value._reactions
          : reactions // ignore: cast_nullable_to_non_nullable
              as Map<String, int>?,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      updatedAt: freezed == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      legacyConvId: freezed == legacyConvId
          ? _value.legacyConvId
          : legacyConvId // ignore: cast_nullable_to_non_nullable
              as int?,
      legacySenderId: freezed == legacySenderId
          ? _value.legacySenderId
          : legacySenderId // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$MessageModelImpl implements _MessageModel {
  const _$MessageModelImpl(
      {@JsonKey(name: '_id') this.id,
      required this.conversationId,
      @JsonKey(name: 'senderId') this.sender,
      required this.type,
      required this.content,
      @JsonKey(name: 's3_key') this.s3Key,
      this.imageUrl,
      final Map<String, int>? reactions,
      @JsonKey(name: 'createdAt') required this.createdAt,
      @JsonKey(name: 'updatedAt') this.updatedAt,
      this.legacyConvId,
      this.legacySenderId})
      : _reactions = reactions;

  factory _$MessageModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$MessageModelImplFromJson(json);

  @override
  @JsonKey(name: '_id')
  final String? id;
  @override
  final String conversationId;
  @override
  @JsonKey(name: 'senderId')
  final SenderModel? sender;
  @override
  final String type;
  @override
  final String content;
  @override
  @JsonKey(name: 's3_key')
  final String? s3Key;
  @override
  final String? imageUrl;
  final Map<String, int>? _reactions;
  @override
  Map<String, int>? get reactions {
    final value = _reactions;
    if (value == null) return null;
    if (_reactions is EqualUnmodifiableMapView) return _reactions;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(value);
  }

  @override
  @JsonKey(name: 'createdAt')
  final DateTime createdAt;
  @override
  @JsonKey(name: 'updatedAt')
  final DateTime? updatedAt;
  @override
  final int? legacyConvId;
  @override
  final int? legacySenderId;

  @override
  String toString() {
    return 'MessageModel(id: $id, conversationId: $conversationId, sender: $sender, type: $type, content: $content, s3Key: $s3Key, imageUrl: $imageUrl, reactions: $reactions, createdAt: $createdAt, updatedAt: $updatedAt, legacyConvId: $legacyConvId, legacySenderId: $legacySenderId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MessageModelImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.conversationId, conversationId) ||
                other.conversationId == conversationId) &&
            (identical(other.sender, sender) || other.sender == sender) &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.content, content) || other.content == content) &&
            (identical(other.s3Key, s3Key) || other.s3Key == s3Key) &&
            (identical(other.imageUrl, imageUrl) ||
                other.imageUrl == imageUrl) &&
            const DeepCollectionEquality()
                .equals(other._reactions, _reactions) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.updatedAt, updatedAt) ||
                other.updatedAt == updatedAt) &&
            (identical(other.legacyConvId, legacyConvId) ||
                other.legacyConvId == legacyConvId) &&
            (identical(other.legacySenderId, legacySenderId) ||
                other.legacySenderId == legacySenderId));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      conversationId,
      sender,
      type,
      content,
      s3Key,
      imageUrl,
      const DeepCollectionEquality().hash(_reactions),
      createdAt,
      updatedAt,
      legacyConvId,
      legacySenderId);

  /// Create a copy of MessageModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$MessageModelImplCopyWith<_$MessageModelImpl> get copyWith =>
      __$$MessageModelImplCopyWithImpl<_$MessageModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$MessageModelImplToJson(
      this,
    );
  }
}

abstract class _MessageModel implements MessageModel {
  const factory _MessageModel(
      {@JsonKey(name: '_id') final String? id,
      required final String conversationId,
      @JsonKey(name: 'senderId') final SenderModel? sender,
      required final String type,
      required final String content,
      @JsonKey(name: 's3_key') final String? s3Key,
      final String? imageUrl,
      final Map<String, int>? reactions,
      @JsonKey(name: 'createdAt') required final DateTime createdAt,
      @JsonKey(name: 'updatedAt') final DateTime? updatedAt,
      final int? legacyConvId,
      final int? legacySenderId}) = _$MessageModelImpl;

  factory _MessageModel.fromJson(Map<String, dynamic> json) =
      _$MessageModelImpl.fromJson;

  @override
  @JsonKey(name: '_id')
  String? get id;
  @override
  String get conversationId;
  @override
  @JsonKey(name: 'senderId')
  SenderModel? get sender;
  @override
  String get type;
  @override
  String get content;
  @override
  @JsonKey(name: 's3_key')
  String? get s3Key;
  @override
  String? get imageUrl;
  @override
  Map<String, int>? get reactions;
  @override
  @JsonKey(name: 'createdAt')
  DateTime get createdAt;
  @override
  @JsonKey(name: 'updatedAt')
  DateTime? get updatedAt;
  @override
  int? get legacyConvId;
  @override
  int? get legacySenderId;

  /// Create a copy of MessageModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$MessageModelImplCopyWith<_$MessageModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
