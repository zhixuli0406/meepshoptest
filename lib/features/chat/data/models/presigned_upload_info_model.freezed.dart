// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'presigned_upload_info_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

PresignedUploadInfoModel _$PresignedUploadInfoModelFromJson(
    Map<String, dynamic> json) {
  return _PresignedUploadInfoModel.fromJson(json);
}

/// @nodoc
mixin _$PresignedUploadInfoModel {
  String get presignedUrl => throw _privateConstructorUsedError;
  String get fileKey => throw _privateConstructorUsedError;
  String? get publicUrl => throw _privateConstructorUsedError;

  /// Serializes this PresignedUploadInfoModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of PresignedUploadInfoModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $PresignedUploadInfoModelCopyWith<PresignedUploadInfoModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PresignedUploadInfoModelCopyWith<$Res> {
  factory $PresignedUploadInfoModelCopyWith(PresignedUploadInfoModel value,
          $Res Function(PresignedUploadInfoModel) then) =
      _$PresignedUploadInfoModelCopyWithImpl<$Res, PresignedUploadInfoModel>;
  @useResult
  $Res call({String presignedUrl, String fileKey, String? publicUrl});
}

/// @nodoc
class _$PresignedUploadInfoModelCopyWithImpl<$Res,
        $Val extends PresignedUploadInfoModel>
    implements $PresignedUploadInfoModelCopyWith<$Res> {
  _$PresignedUploadInfoModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of PresignedUploadInfoModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? presignedUrl = null,
    Object? fileKey = null,
    Object? publicUrl = freezed,
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
      publicUrl: freezed == publicUrl
          ? _value.publicUrl
          : publicUrl // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$PresignedUploadInfoModelImplCopyWith<$Res>
    implements $PresignedUploadInfoModelCopyWith<$Res> {
  factory _$$PresignedUploadInfoModelImplCopyWith(
          _$PresignedUploadInfoModelImpl value,
          $Res Function(_$PresignedUploadInfoModelImpl) then) =
      __$$PresignedUploadInfoModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String presignedUrl, String fileKey, String? publicUrl});
}

/// @nodoc
class __$$PresignedUploadInfoModelImplCopyWithImpl<$Res>
    extends _$PresignedUploadInfoModelCopyWithImpl<$Res,
        _$PresignedUploadInfoModelImpl>
    implements _$$PresignedUploadInfoModelImplCopyWith<$Res> {
  __$$PresignedUploadInfoModelImplCopyWithImpl(
      _$PresignedUploadInfoModelImpl _value,
      $Res Function(_$PresignedUploadInfoModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of PresignedUploadInfoModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? presignedUrl = null,
    Object? fileKey = null,
    Object? publicUrl = freezed,
  }) {
    return _then(_$PresignedUploadInfoModelImpl(
      presignedUrl: null == presignedUrl
          ? _value.presignedUrl
          : presignedUrl // ignore: cast_nullable_to_non_nullable
              as String,
      fileKey: null == fileKey
          ? _value.fileKey
          : fileKey // ignore: cast_nullable_to_non_nullable
              as String,
      publicUrl: freezed == publicUrl
          ? _value.publicUrl
          : publicUrl // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

@JsonSerializable(fieldRename: FieldRename.none)
class _$PresignedUploadInfoModelImpl implements _PresignedUploadInfoModel {
  const _$PresignedUploadInfoModelImpl(
      {required this.presignedUrl, required this.fileKey, this.publicUrl});

  factory _$PresignedUploadInfoModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$PresignedUploadInfoModelImplFromJson(json);

  @override
  final String presignedUrl;
  @override
  final String fileKey;
  @override
  final String? publicUrl;

  @override
  String toString() {
    return 'PresignedUploadInfoModel(presignedUrl: $presignedUrl, fileKey: $fileKey, publicUrl: $publicUrl)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PresignedUploadInfoModelImpl &&
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

  /// Create a copy of PresignedUploadInfoModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$PresignedUploadInfoModelImplCopyWith<_$PresignedUploadInfoModelImpl>
      get copyWith => __$$PresignedUploadInfoModelImplCopyWithImpl<
          _$PresignedUploadInfoModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$PresignedUploadInfoModelImplToJson(
      this,
    );
  }
}

abstract class _PresignedUploadInfoModel implements PresignedUploadInfoModel {
  const factory _PresignedUploadInfoModel(
      {required final String presignedUrl,
      required final String fileKey,
      final String? publicUrl}) = _$PresignedUploadInfoModelImpl;

  factory _PresignedUploadInfoModel.fromJson(Map<String, dynamic> json) =
      _$PresignedUploadInfoModelImpl.fromJson;

  @override
  String get presignedUrl;
  @override
  String get fileKey;
  @override
  String? get publicUrl;

  /// Create a copy of PresignedUploadInfoModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$PresignedUploadInfoModelImplCopyWith<_$PresignedUploadInfoModelImpl>
      get copyWith => throw _privateConstructorUsedError;
}
