// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'message_api_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

MessageApiModel _$MessageApiModelFromJson(Map<String, dynamic> json) {
  return _MessageApiModel.fromJson(json);
}

/// @nodoc
mixin _$MessageApiModel {
  @JsonKey(name: '_id')
  String get id => throw _privateConstructorUsedError;
  String? get conversationId => throw _privateConstructorUsedError;
  @JsonKey(name: 'senderId')
  MessageSenderApiModel? get sender => throw _privateConstructorUsedError;
  @JsonKey(name: 'createdAt')
  String? get createdAt => throw _privateConstructorUsedError;
  String? get type =>
      throw _privateConstructorUsedError; // API still sends type as string e.g. "text", "image"
  String? get content => throw _privateConstructorUsedError;
  Map<String, int>? get reactions => throw _privateConstructorUsedError;
  List<String>? get readBy => throw _privateConstructorUsedError;
  int? get legacyConvId => throw _privateConstructorUsedError;
  int? get legacySenderId => throw _privateConstructorUsedError;
  @JsonKey(name: '__v')
  int? get v => throw _privateConstructorUsedError;
  String? get updatedAt => throw _privateConstructorUsedError;

  /// Serializes this MessageApiModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of MessageApiModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $MessageApiModelCopyWith<MessageApiModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MessageApiModelCopyWith<$Res> {
  factory $MessageApiModelCopyWith(
          MessageApiModel value, $Res Function(MessageApiModel) then) =
      _$MessageApiModelCopyWithImpl<$Res, MessageApiModel>;
  @useResult
  $Res call(
      {@JsonKey(name: '_id') String id,
      String? conversationId,
      @JsonKey(name: 'senderId') MessageSenderApiModel? sender,
      @JsonKey(name: 'createdAt') String? createdAt,
      String? type,
      String? content,
      Map<String, int>? reactions,
      List<String>? readBy,
      int? legacyConvId,
      int? legacySenderId,
      @JsonKey(name: '__v') int? v,
      String? updatedAt});

  $MessageSenderApiModelCopyWith<$Res>? get sender;
}

/// @nodoc
class _$MessageApiModelCopyWithImpl<$Res, $Val extends MessageApiModel>
    implements $MessageApiModelCopyWith<$Res> {
  _$MessageApiModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of MessageApiModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? conversationId = freezed,
    Object? sender = freezed,
    Object? createdAt = freezed,
    Object? type = freezed,
    Object? content = freezed,
    Object? reactions = freezed,
    Object? readBy = freezed,
    Object? legacyConvId = freezed,
    Object? legacySenderId = freezed,
    Object? v = freezed,
    Object? updatedAt = freezed,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      conversationId: freezed == conversationId
          ? _value.conversationId
          : conversationId // ignore: cast_nullable_to_non_nullable
              as String?,
      sender: freezed == sender
          ? _value.sender
          : sender // ignore: cast_nullable_to_non_nullable
              as MessageSenderApiModel?,
      createdAt: freezed == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as String?,
      type: freezed == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String?,
      content: freezed == content
          ? _value.content
          : content // ignore: cast_nullable_to_non_nullable
              as String?,
      reactions: freezed == reactions
          ? _value.reactions
          : reactions // ignore: cast_nullable_to_non_nullable
              as Map<String, int>?,
      readBy: freezed == readBy
          ? _value.readBy
          : readBy // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      legacyConvId: freezed == legacyConvId
          ? _value.legacyConvId
          : legacyConvId // ignore: cast_nullable_to_non_nullable
              as int?,
      legacySenderId: freezed == legacySenderId
          ? _value.legacySenderId
          : legacySenderId // ignore: cast_nullable_to_non_nullable
              as int?,
      v: freezed == v
          ? _value.v
          : v // ignore: cast_nullable_to_non_nullable
              as int?,
      updatedAt: freezed == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }

  /// Create a copy of MessageApiModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $MessageSenderApiModelCopyWith<$Res>? get sender {
    if (_value.sender == null) {
      return null;
    }

    return $MessageSenderApiModelCopyWith<$Res>(_value.sender!, (value) {
      return _then(_value.copyWith(sender: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$MessageApiModelImplCopyWith<$Res>
    implements $MessageApiModelCopyWith<$Res> {
  factory _$$MessageApiModelImplCopyWith(_$MessageApiModelImpl value,
          $Res Function(_$MessageApiModelImpl) then) =
      __$$MessageApiModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: '_id') String id,
      String? conversationId,
      @JsonKey(name: 'senderId') MessageSenderApiModel? sender,
      @JsonKey(name: 'createdAt') String? createdAt,
      String? type,
      String? content,
      Map<String, int>? reactions,
      List<String>? readBy,
      int? legacyConvId,
      int? legacySenderId,
      @JsonKey(name: '__v') int? v,
      String? updatedAt});

  @override
  $MessageSenderApiModelCopyWith<$Res>? get sender;
}

/// @nodoc
class __$$MessageApiModelImplCopyWithImpl<$Res>
    extends _$MessageApiModelCopyWithImpl<$Res, _$MessageApiModelImpl>
    implements _$$MessageApiModelImplCopyWith<$Res> {
  __$$MessageApiModelImplCopyWithImpl(
      _$MessageApiModelImpl _value, $Res Function(_$MessageApiModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of MessageApiModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? conversationId = freezed,
    Object? sender = freezed,
    Object? createdAt = freezed,
    Object? type = freezed,
    Object? content = freezed,
    Object? reactions = freezed,
    Object? readBy = freezed,
    Object? legacyConvId = freezed,
    Object? legacySenderId = freezed,
    Object? v = freezed,
    Object? updatedAt = freezed,
  }) {
    return _then(_$MessageApiModelImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      conversationId: freezed == conversationId
          ? _value.conversationId
          : conversationId // ignore: cast_nullable_to_non_nullable
              as String?,
      sender: freezed == sender
          ? _value.sender
          : sender // ignore: cast_nullable_to_non_nullable
              as MessageSenderApiModel?,
      createdAt: freezed == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as String?,
      type: freezed == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String?,
      content: freezed == content
          ? _value.content
          : content // ignore: cast_nullable_to_non_nullable
              as String?,
      reactions: freezed == reactions
          ? _value._reactions
          : reactions // ignore: cast_nullable_to_non_nullable
              as Map<String, int>?,
      readBy: freezed == readBy
          ? _value._readBy
          : readBy // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      legacyConvId: freezed == legacyConvId
          ? _value.legacyConvId
          : legacyConvId // ignore: cast_nullable_to_non_nullable
              as int?,
      legacySenderId: freezed == legacySenderId
          ? _value.legacySenderId
          : legacySenderId // ignore: cast_nullable_to_non_nullable
              as int?,
      v: freezed == v
          ? _value.v
          : v // ignore: cast_nullable_to_non_nullable
              as int?,
      updatedAt: freezed == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

@JsonSerializable(fieldRename: FieldRename.snake)
class _$MessageApiModelImpl implements _MessageApiModel {
  const _$MessageApiModelImpl(
      {@JsonKey(name: '_id') required this.id,
      this.conversationId,
      @JsonKey(name: 'senderId') this.sender,
      @JsonKey(name: 'createdAt') this.createdAt,
      this.type,
      this.content,
      final Map<String, int>? reactions,
      final List<String>? readBy,
      this.legacyConvId,
      this.legacySenderId,
      @JsonKey(name: '__v') this.v,
      this.updatedAt})
      : _reactions = reactions,
        _readBy = readBy;

  factory _$MessageApiModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$MessageApiModelImplFromJson(json);

  @override
  @JsonKey(name: '_id')
  final String id;
  @override
  final String? conversationId;
  @override
  @JsonKey(name: 'senderId')
  final MessageSenderApiModel? sender;
  @override
  @JsonKey(name: 'createdAt')
  final String? createdAt;
  @override
  final String? type;
// API still sends type as string e.g. "text", "image"
  @override
  final String? content;
  final Map<String, int>? _reactions;
  @override
  Map<String, int>? get reactions {
    final value = _reactions;
    if (value == null) return null;
    if (_reactions is EqualUnmodifiableMapView) return _reactions;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(value);
  }

  final List<String>? _readBy;
  @override
  List<String>? get readBy {
    final value = _readBy;
    if (value == null) return null;
    if (_readBy is EqualUnmodifiableListView) return _readBy;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  final int? legacyConvId;
  @override
  final int? legacySenderId;
  @override
  @JsonKey(name: '__v')
  final int? v;
  @override
  final String? updatedAt;

  @override
  String toString() {
    return 'MessageApiModel(id: $id, conversationId: $conversationId, sender: $sender, createdAt: $createdAt, type: $type, content: $content, reactions: $reactions, readBy: $readBy, legacyConvId: $legacyConvId, legacySenderId: $legacySenderId, v: $v, updatedAt: $updatedAt)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MessageApiModelImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.conversationId, conversationId) ||
                other.conversationId == conversationId) &&
            (identical(other.sender, sender) || other.sender == sender) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.content, content) || other.content == content) &&
            const DeepCollectionEquality()
                .equals(other._reactions, _reactions) &&
            const DeepCollectionEquality().equals(other._readBy, _readBy) &&
            (identical(other.legacyConvId, legacyConvId) ||
                other.legacyConvId == legacyConvId) &&
            (identical(other.legacySenderId, legacySenderId) ||
                other.legacySenderId == legacySenderId) &&
            (identical(other.v, v) || other.v == v) &&
            (identical(other.updatedAt, updatedAt) ||
                other.updatedAt == updatedAt));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      conversationId,
      sender,
      createdAt,
      type,
      content,
      const DeepCollectionEquality().hash(_reactions),
      const DeepCollectionEquality().hash(_readBy),
      legacyConvId,
      legacySenderId,
      v,
      updatedAt);

  /// Create a copy of MessageApiModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$MessageApiModelImplCopyWith<_$MessageApiModelImpl> get copyWith =>
      __$$MessageApiModelImplCopyWithImpl<_$MessageApiModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$MessageApiModelImplToJson(
      this,
    );
  }
}

abstract class _MessageApiModel implements MessageApiModel {
  const factory _MessageApiModel(
      {@JsonKey(name: '_id') required final String id,
      final String? conversationId,
      @JsonKey(name: 'senderId') final MessageSenderApiModel? sender,
      @JsonKey(name: 'createdAt') final String? createdAt,
      final String? type,
      final String? content,
      final Map<String, int>? reactions,
      final List<String>? readBy,
      final int? legacyConvId,
      final int? legacySenderId,
      @JsonKey(name: '__v') final int? v,
      final String? updatedAt}) = _$MessageApiModelImpl;

  factory _MessageApiModel.fromJson(Map<String, dynamic> json) =
      _$MessageApiModelImpl.fromJson;

  @override
  @JsonKey(name: '_id')
  String get id;
  @override
  String? get conversationId;
  @override
  @JsonKey(name: 'senderId')
  MessageSenderApiModel? get sender;
  @override
  @JsonKey(name: 'createdAt')
  String? get createdAt;
  @override
  String? get type; // API still sends type as string e.g. "text", "image"
  @override
  String? get content;
  @override
  Map<String, int>? get reactions;
  @override
  List<String>? get readBy;
  @override
  int? get legacyConvId;
  @override
  int? get legacySenderId;
  @override
  @JsonKey(name: '__v')
  int? get v;
  @override
  String? get updatedAt;

  /// Create a copy of MessageApiModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$MessageApiModelImplCopyWith<_$MessageApiModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
