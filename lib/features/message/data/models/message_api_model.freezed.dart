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
// Swagger uses 'id' for message, not '_id'. Ensure consistency.
  String get id => throw _privateConstructorUsedError;
  String get conversationId => throw _privateConstructorUsedError;
  MessageSenderApiModel get sender => throw _privateConstructorUsedError;
  MessageTypeApiModel get type => throw _privateConstructorUsedError;
  String get content => throw _privateConstructorUsedError;
  String? get s3Key =>
      throw _privateConstructorUsedError; // Swagger shows timestamp as int64 (Unix milliseconds). Dart DateTime handles this.
// Or can use JsonKey with a custom converter if direct parsing fails for int.
  int get timestamp => throw _privateConstructorUsedError;

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
      {String id,
      String conversationId,
      MessageSenderApiModel sender,
      MessageTypeApiModel type,
      String content,
      String? s3Key,
      int timestamp});

  $MessageSenderApiModelCopyWith<$Res> get sender;
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
    Object? conversationId = null,
    Object? sender = null,
    Object? type = null,
    Object? content = null,
    Object? s3Key = freezed,
    Object? timestamp = null,
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
              as MessageSenderApiModel,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as MessageTypeApiModel,
      content: null == content
          ? _value.content
          : content // ignore: cast_nullable_to_non_nullable
              as String,
      s3Key: freezed == s3Key
          ? _value.s3Key
          : s3Key // ignore: cast_nullable_to_non_nullable
              as String?,
      timestamp: null == timestamp
          ? _value.timestamp
          : timestamp // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }

  /// Create a copy of MessageApiModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $MessageSenderApiModelCopyWith<$Res> get sender {
    return $MessageSenderApiModelCopyWith<$Res>(_value.sender, (value) {
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
      {String id,
      String conversationId,
      MessageSenderApiModel sender,
      MessageTypeApiModel type,
      String content,
      String? s3Key,
      int timestamp});

  @override
  $MessageSenderApiModelCopyWith<$Res> get sender;
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
    Object? conversationId = null,
    Object? sender = null,
    Object? type = null,
    Object? content = null,
    Object? s3Key = freezed,
    Object? timestamp = null,
  }) {
    return _then(_$MessageApiModelImpl(
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
              as MessageSenderApiModel,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as MessageTypeApiModel,
      content: null == content
          ? _value.content
          : content // ignore: cast_nullable_to_non_nullable
              as String,
      s3Key: freezed == s3Key
          ? _value.s3Key
          : s3Key // ignore: cast_nullable_to_non_nullable
              as String?,
      timestamp: null == timestamp
          ? _value.timestamp
          : timestamp // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

@JsonSerializable(fieldRename: FieldRename.snake, explicitToJson: true)
class _$MessageApiModelImpl implements _MessageApiModel {
  const _$MessageApiModelImpl(
      {required this.id,
      required this.conversationId,
      required this.sender,
      required this.type,
      required this.content,
      this.s3Key,
      required this.timestamp});

  factory _$MessageApiModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$MessageApiModelImplFromJson(json);

// Swagger uses 'id' for message, not '_id'. Ensure consistency.
  @override
  final String id;
  @override
  final String conversationId;
  @override
  final MessageSenderApiModel sender;
  @override
  final MessageTypeApiModel type;
  @override
  final String content;
  @override
  final String? s3Key;
// Swagger shows timestamp as int64 (Unix milliseconds). Dart DateTime handles this.
// Or can use JsonKey with a custom converter if direct parsing fails for int.
  @override
  final int timestamp;

  @override
  String toString() {
    return 'MessageApiModel(id: $id, conversationId: $conversationId, sender: $sender, type: $type, content: $content, s3Key: $s3Key, timestamp: $timestamp)';
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
            (identical(other.type, type) || other.type == type) &&
            (identical(other.content, content) || other.content == content) &&
            (identical(other.s3Key, s3Key) || other.s3Key == s3Key) &&
            (identical(other.timestamp, timestamp) ||
                other.timestamp == timestamp));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType, id, conversationId, sender, type, content, s3Key, timestamp);

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
      {required final String id,
      required final String conversationId,
      required final MessageSenderApiModel sender,
      required final MessageTypeApiModel type,
      required final String content,
      final String? s3Key,
      required final int timestamp}) = _$MessageApiModelImpl;

  factory _MessageApiModel.fromJson(Map<String, dynamic> json) =
      _$MessageApiModelImpl.fromJson;

// Swagger uses 'id' for message, not '_id'. Ensure consistency.
  @override
  String get id;
  @override
  String get conversationId;
  @override
  MessageSenderApiModel get sender;
  @override
  MessageTypeApiModel get type;
  @override
  String get content;
  @override
  String?
      get s3Key; // Swagger shows timestamp as int64 (Unix milliseconds). Dart DateTime handles this.
// Or can use JsonKey with a custom converter if direct parsing fails for int.
  @override
  int get timestamp;

  /// Create a copy of MessageApiModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$MessageApiModelImplCopyWith<_$MessageApiModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
