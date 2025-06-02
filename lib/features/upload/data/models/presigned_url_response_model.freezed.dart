// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'presigned_url_response_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

PresignedUrlResponseModel _$PresignedUrlResponseModelFromJson(
    Map<String, dynamic> json) {
  return _PresignedUrlResponseModel.fromJson(json);
}

/// @nodoc
mixin _$PresignedUrlResponseModel {
  String get presignedUrl => throw _privateConstructorUsedError;
  String get fileKey => throw _privateConstructorUsedError;
  String get publicUrl => throw _privateConstructorUsedError;

  /// Serializes this PresignedUrlResponseModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of PresignedUrlResponseModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $PresignedUrlResponseModelCopyWith<PresignedUrlResponseModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PresignedUrlResponseModelCopyWith<$Res> {
  factory $PresignedUrlResponseModelCopyWith(PresignedUrlResponseModel value,
          $Res Function(PresignedUrlResponseModel) then) =
      _$PresignedUrlResponseModelCopyWithImpl<$Res, PresignedUrlResponseModel>;
  @useResult
  $Res call({String presignedUrl, String fileKey, String publicUrl});
}

/// @nodoc
class _$PresignedUrlResponseModelCopyWithImpl<$Res,
        $Val extends PresignedUrlResponseModel>
    implements $PresignedUrlResponseModelCopyWith<$Res> {
  _$PresignedUrlResponseModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of PresignedUrlResponseModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? presignedUrl = null,
    Object? fileKey = null,
    Object? publicUrl = null,
  }) {
    return _then(_value.copyWith(
      presignedUrl: null == presignedUrl
          ? _value.presignedUrl
          : presignedUrl // ignore: cast_nullable_to_non_nullable
              as String,
      fileKey: null == fileKey
          ? _value.fileKey
          : fileKey // ignore: cast_nullable_to_non_nullable
              as String,
      publicUrl: null == publicUrl
          ? _value.publicUrl
          : publicUrl // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$PresignedUrlResponseModelImplCopyWith<$Res>
    implements $PresignedUrlResponseModelCopyWith<$Res> {
  factory _$$PresignedUrlResponseModelImplCopyWith(
          _$PresignedUrlResponseModelImpl value,
          $Res Function(_$PresignedUrlResponseModelImpl) then) =
      __$$PresignedUrlResponseModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String presignedUrl, String fileKey, String publicUrl});
}

/// @nodoc
class __$$PresignedUrlResponseModelImplCopyWithImpl<$Res>
    extends _$PresignedUrlResponseModelCopyWithImpl<$Res,
        _$PresignedUrlResponseModelImpl>
    implements _$$PresignedUrlResponseModelImplCopyWith<$Res> {
  __$$PresignedUrlResponseModelImplCopyWithImpl(
      _$PresignedUrlResponseModelImpl _value,
      $Res Function(_$PresignedUrlResponseModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of PresignedUrlResponseModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? presignedUrl = null,
    Object? fileKey = null,
    Object? publicUrl = null,
  }) {
    return _then(_$PresignedUrlResponseModelImpl(
      presignedUrl: null == presignedUrl
          ? _value.presignedUrl
          : presignedUrl // ignore: cast_nullable_to_non_nullable
              as String,
      fileKey: null == fileKey
          ? _value.fileKey
          : fileKey // ignore: cast_nullable_to_non_nullable
              as String,
      publicUrl: null == publicUrl
          ? _value.publicUrl
          : publicUrl // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$PresignedUrlResponseModelImpl implements _PresignedUrlResponseModel {
  const _$PresignedUrlResponseModelImpl(
      {required this.presignedUrl,
      required this.fileKey,
      required this.publicUrl});

  factory _$PresignedUrlResponseModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$PresignedUrlResponseModelImplFromJson(json);

  @override
  final String presignedUrl;
  @override
  final String fileKey;
  @override
  final String publicUrl;

  @override
  String toString() {
    return 'PresignedUrlResponseModel(presignedUrl: $presignedUrl, fileKey: $fileKey, publicUrl: $publicUrl)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PresignedUrlResponseModelImpl &&
            (identical(other.presignedUrl, presignedUrl) ||
                other.presignedUrl == presignedUrl) &&
            (identical(other.fileKey, fileKey) || other.fileKey == fileKey) &&
            (identical(other.publicUrl, publicUrl) ||
                other.publicUrl == publicUrl));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, presignedUrl, fileKey, publicUrl);

  /// Create a copy of PresignedUrlResponseModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$PresignedUrlResponseModelImplCopyWith<_$PresignedUrlResponseModelImpl>
      get copyWith => __$$PresignedUrlResponseModelImplCopyWithImpl<
          _$PresignedUrlResponseModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$PresignedUrlResponseModelImplToJson(
      this,
    );
  }
}

abstract class _PresignedUrlResponseModel implements PresignedUrlResponseModel {
  const factory _PresignedUrlResponseModel(
      {required final String presignedUrl,
      required final String fileKey,
      required final String publicUrl}) = _$PresignedUrlResponseModelImpl;

  factory _PresignedUrlResponseModel.fromJson(Map<String, dynamic> json) =
      _$PresignedUrlResponseModelImpl.fromJson;

  @override
  String get presignedUrl;
  @override
  String get fileKey;
  @override
  String get publicUrl;

  /// Create a copy of PresignedUrlResponseModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$PresignedUrlResponseModelImplCopyWith<_$PresignedUrlResponseModelImpl>
      get copyWith => throw _privateConstructorUsedError;
}
