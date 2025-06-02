// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'message_input_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

MessageInputModel _$MessageInputModelFromJson(Map<String, dynamic> json) {
  return _MessageInputModel.fromJson(json);
}

/// @nodoc
mixin _$MessageInputModel {
  String get senderId => throw _privateConstructorUsedError;
  MessageTypeInputApiModel get type => throw _privateConstructorUsedError;
  String get content => throw _privateConstructorUsedError;
  String? get s3Key => throw _privateConstructorUsedError;

  /// Serializes this MessageInputModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of MessageInputModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $MessageInputModelCopyWith<MessageInputModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MessageInputModelCopyWith<$Res> {
  factory $MessageInputModelCopyWith(
          MessageInputModel value, $Res Function(MessageInputModel) then) =
      _$MessageInputModelCopyWithImpl<$Res, MessageInputModel>;
  @useResult
  $Res call(
      {String senderId,
      MessageTypeInputApiModel type,
      String content,
      String? s3Key});
}

/// @nodoc
class _$MessageInputModelCopyWithImpl<$Res, $Val extends MessageInputModel>
    implements $MessageInputModelCopyWith<$Res> {
  _$MessageInputModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of MessageInputModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? senderId = null,
    Object? type = null,
    Object? content = null,
    Object? s3Key = freezed,
  }) {
    return _then(_value.copyWith(
      senderId: null == senderId
          ? _value.senderId
          : senderId // ignore: cast_nullable_to_non_nullable
              as String,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as MessageTypeInputApiModel,
      content: null == content
          ? _value.content
          : content // ignore: cast_nullable_to_non_nullable
              as String,
      s3Key: freezed == s3Key
          ? _value.s3Key
          : s3Key // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$MessageInputModelImplCopyWith<$Res>
    implements $MessageInputModelCopyWith<$Res> {
  factory _$$MessageInputModelImplCopyWith(_$MessageInputModelImpl value,
          $Res Function(_$MessageInputModelImpl) then) =
      __$$MessageInputModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String senderId,
      MessageTypeInputApiModel type,
      String content,
      String? s3Key});
}

/// @nodoc
class __$$MessageInputModelImplCopyWithImpl<$Res>
    extends _$MessageInputModelCopyWithImpl<$Res, _$MessageInputModelImpl>
    implements _$$MessageInputModelImplCopyWith<$Res> {
  __$$MessageInputModelImplCopyWithImpl(_$MessageInputModelImpl _value,
      $Res Function(_$MessageInputModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of MessageInputModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? senderId = null,
    Object? type = null,
    Object? content = null,
    Object? s3Key = freezed,
  }) {
    return _then(_$MessageInputModelImpl(
      senderId: null == senderId
          ? _value.senderId
          : senderId // ignore: cast_nullable_to_non_nullable
              as String,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as MessageTypeInputApiModel,
      content: null == content
          ? _value.content
          : content // ignore: cast_nullable_to_non_nullable
              as String,
      s3Key: freezed == s3Key
          ? _value.s3Key
          : s3Key // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

@JsonSerializable(fieldRename: FieldRename.snake)
class _$MessageInputModelImpl implements _MessageInputModel {
  const _$MessageInputModelImpl(
      {required this.senderId,
      required this.type,
      required this.content,
      this.s3Key});

  factory _$MessageInputModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$MessageInputModelImplFromJson(json);

  @override
  final String senderId;
  @override
  final MessageTypeInputApiModel type;
  @override
  final String content;
  @override
  final String? s3Key;

  @override
  String toString() {
    return 'MessageInputModel(senderId: $senderId, type: $type, content: $content, s3Key: $s3Key)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MessageInputModelImpl &&
            (identical(other.senderId, senderId) ||
                other.senderId == senderId) &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.content, content) || other.content == content) &&
            (identical(other.s3Key, s3Key) || other.s3Key == s3Key));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, senderId, type, content, s3Key);

  /// Create a copy of MessageInputModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$MessageInputModelImplCopyWith<_$MessageInputModelImpl> get copyWith =>
      __$$MessageInputModelImplCopyWithImpl<_$MessageInputModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$MessageInputModelImplToJson(
      this,
    );
  }
}

abstract class _MessageInputModel implements MessageInputModel {
  const factory _MessageInputModel(
      {required final String senderId,
      required final MessageTypeInputApiModel type,
      required final String content,
      final String? s3Key}) = _$MessageInputModelImpl;

  factory _MessageInputModel.fromJson(Map<String, dynamic> json) =
      _$MessageInputModelImpl.fromJson;

  @override
  String get senderId;
  @override
  MessageTypeInputApiModel get type;
  @override
  String get content;
  @override
  String? get s3Key;

  /// Create a copy of MessageInputModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$MessageInputModelImplCopyWith<_$MessageInputModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
