// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'generated_signed_url_data_api_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

GeneratedSignedUrlDataApiModel _$GeneratedSignedUrlDataApiModelFromJson(
    Map<String, dynamic> json) {
  return _GeneratedSignedUrlDataApiModel.fromJson(json);
}

/// @nodoc
mixin _$GeneratedSignedUrlDataApiModel {
  String get signedUrl => throw _privateConstructorUsedError;
  String get objectKey => throw _privateConstructorUsedError;
  String get fileUrl => throw _privateConstructorUsedError;

  /// Serializes this GeneratedSignedUrlDataApiModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of GeneratedSignedUrlDataApiModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $GeneratedSignedUrlDataApiModelCopyWith<GeneratedSignedUrlDataApiModel>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GeneratedSignedUrlDataApiModelCopyWith<$Res> {
  factory $GeneratedSignedUrlDataApiModelCopyWith(
          GeneratedSignedUrlDataApiModel value,
          $Res Function(GeneratedSignedUrlDataApiModel) then) =
      _$GeneratedSignedUrlDataApiModelCopyWithImpl<$Res,
          GeneratedSignedUrlDataApiModel>;
  @useResult
  $Res call({String signedUrl, String objectKey, String fileUrl});
}

/// @nodoc
class _$GeneratedSignedUrlDataApiModelCopyWithImpl<$Res,
        $Val extends GeneratedSignedUrlDataApiModel>
    implements $GeneratedSignedUrlDataApiModelCopyWith<$Res> {
  _$GeneratedSignedUrlDataApiModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of GeneratedSignedUrlDataApiModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? signedUrl = null,
    Object? objectKey = null,
    Object? fileUrl = null,
  }) {
    return _then(_value.copyWith(
      signedUrl: null == signedUrl
          ? _value.signedUrl
          : signedUrl // ignore: cast_nullable_to_non_nullable
              as String,
      objectKey: null == objectKey
          ? _value.objectKey
          : objectKey // ignore: cast_nullable_to_non_nullable
              as String,
      fileUrl: null == fileUrl
          ? _value.fileUrl
          : fileUrl // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$GeneratedSignedUrlDataApiModelImplCopyWith<$Res>
    implements $GeneratedSignedUrlDataApiModelCopyWith<$Res> {
  factory _$$GeneratedSignedUrlDataApiModelImplCopyWith(
          _$GeneratedSignedUrlDataApiModelImpl value,
          $Res Function(_$GeneratedSignedUrlDataApiModelImpl) then) =
      __$$GeneratedSignedUrlDataApiModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String signedUrl, String objectKey, String fileUrl});
}

/// @nodoc
class __$$GeneratedSignedUrlDataApiModelImplCopyWithImpl<$Res>
    extends _$GeneratedSignedUrlDataApiModelCopyWithImpl<$Res,
        _$GeneratedSignedUrlDataApiModelImpl>
    implements _$$GeneratedSignedUrlDataApiModelImplCopyWith<$Res> {
  __$$GeneratedSignedUrlDataApiModelImplCopyWithImpl(
      _$GeneratedSignedUrlDataApiModelImpl _value,
      $Res Function(_$GeneratedSignedUrlDataApiModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of GeneratedSignedUrlDataApiModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? signedUrl = null,
    Object? objectKey = null,
    Object? fileUrl = null,
  }) {
    return _then(_$GeneratedSignedUrlDataApiModelImpl(
      signedUrl: null == signedUrl
          ? _value.signedUrl
          : signedUrl // ignore: cast_nullable_to_non_nullable
              as String,
      objectKey: null == objectKey
          ? _value.objectKey
          : objectKey // ignore: cast_nullable_to_non_nullable
              as String,
      fileUrl: null == fileUrl
          ? _value.fileUrl
          : fileUrl // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

@JsonSerializable(fieldRename: FieldRename.snake)
class _$GeneratedSignedUrlDataApiModelImpl
    implements _GeneratedSignedUrlDataApiModel {
  const _$GeneratedSignedUrlDataApiModelImpl(
      {required this.signedUrl,
      required this.objectKey,
      required this.fileUrl});

  factory _$GeneratedSignedUrlDataApiModelImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$GeneratedSignedUrlDataApiModelImplFromJson(json);

  @override
  final String signedUrl;
  @override
  final String objectKey;
  @override
  final String fileUrl;

  @override
  String toString() {
    return 'GeneratedSignedUrlDataApiModel(signedUrl: $signedUrl, objectKey: $objectKey, fileUrl: $fileUrl)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GeneratedSignedUrlDataApiModelImpl &&
            (identical(other.signedUrl, signedUrl) ||
                other.signedUrl == signedUrl) &&
            (identical(other.objectKey, objectKey) ||
                other.objectKey == objectKey) &&
            (identical(other.fileUrl, fileUrl) || other.fileUrl == fileUrl));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, signedUrl, objectKey, fileUrl);

  /// Create a copy of GeneratedSignedUrlDataApiModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$GeneratedSignedUrlDataApiModelImplCopyWith<
          _$GeneratedSignedUrlDataApiModelImpl>
      get copyWith => __$$GeneratedSignedUrlDataApiModelImplCopyWithImpl<
          _$GeneratedSignedUrlDataApiModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$GeneratedSignedUrlDataApiModelImplToJson(
      this,
    );
  }
}

abstract class _GeneratedSignedUrlDataApiModel
    implements GeneratedSignedUrlDataApiModel {
  const factory _GeneratedSignedUrlDataApiModel(
      {required final String signedUrl,
      required final String objectKey,
      required final String fileUrl}) = _$GeneratedSignedUrlDataApiModelImpl;

  factory _GeneratedSignedUrlDataApiModel.fromJson(Map<String, dynamic> json) =
      _$GeneratedSignedUrlDataApiModelImpl.fromJson;

  @override
  String get signedUrl;
  @override
  String get objectKey;
  @override
  String get fileUrl;

  /// Create a copy of GeneratedSignedUrlDataApiModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$GeneratedSignedUrlDataApiModelImplCopyWith<
          _$GeneratedSignedUrlDataApiModelImpl>
      get copyWith => throw _privateConstructorUsedError;
}
