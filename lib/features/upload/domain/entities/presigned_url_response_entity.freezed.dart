// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'presigned_url_response_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$PresignedUrlResponseEntity {
  String get presignedUrl => throw _privateConstructorUsedError;
  String get fileKey => throw _privateConstructorUsedError;
  String get publicUrl => throw _privateConstructorUsedError;

  /// Create a copy of PresignedUrlResponseEntity
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $PresignedUrlResponseEntityCopyWith<PresignedUrlResponseEntity>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PresignedUrlResponseEntityCopyWith<$Res> {
  factory $PresignedUrlResponseEntityCopyWith(PresignedUrlResponseEntity value,
          $Res Function(PresignedUrlResponseEntity) then) =
      _$PresignedUrlResponseEntityCopyWithImpl<$Res,
          PresignedUrlResponseEntity>;
  @useResult
  $Res call({String presignedUrl, String fileKey, String publicUrl});
}

/// @nodoc
class _$PresignedUrlResponseEntityCopyWithImpl<$Res,
        $Val extends PresignedUrlResponseEntity>
    implements $PresignedUrlResponseEntityCopyWith<$Res> {
  _$PresignedUrlResponseEntityCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of PresignedUrlResponseEntity
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
abstract class _$$PresignedUrlResponseEntityImplCopyWith<$Res>
    implements $PresignedUrlResponseEntityCopyWith<$Res> {
  factory _$$PresignedUrlResponseEntityImplCopyWith(
          _$PresignedUrlResponseEntityImpl value,
          $Res Function(_$PresignedUrlResponseEntityImpl) then) =
      __$$PresignedUrlResponseEntityImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String presignedUrl, String fileKey, String publicUrl});
}

/// @nodoc
class __$$PresignedUrlResponseEntityImplCopyWithImpl<$Res>
    extends _$PresignedUrlResponseEntityCopyWithImpl<$Res,
        _$PresignedUrlResponseEntityImpl>
    implements _$$PresignedUrlResponseEntityImplCopyWith<$Res> {
  __$$PresignedUrlResponseEntityImplCopyWithImpl(
      _$PresignedUrlResponseEntityImpl _value,
      $Res Function(_$PresignedUrlResponseEntityImpl) _then)
      : super(_value, _then);

  /// Create a copy of PresignedUrlResponseEntity
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? presignedUrl = null,
    Object? fileKey = null,
    Object? publicUrl = null,
  }) {
    return _then(_$PresignedUrlResponseEntityImpl(
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

class _$PresignedUrlResponseEntityImpl implements _PresignedUrlResponseEntity {
  const _$PresignedUrlResponseEntityImpl(
      {required this.presignedUrl,
      required this.fileKey,
      required this.publicUrl});

  @override
  final String presignedUrl;
  @override
  final String fileKey;
  @override
  final String publicUrl;

  @override
  String toString() {
    return 'PresignedUrlResponseEntity(presignedUrl: $presignedUrl, fileKey: $fileKey, publicUrl: $publicUrl)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PresignedUrlResponseEntityImpl &&
            (identical(other.presignedUrl, presignedUrl) ||
                other.presignedUrl == presignedUrl) &&
            (identical(other.fileKey, fileKey) || other.fileKey == fileKey) &&
            (identical(other.publicUrl, publicUrl) ||
                other.publicUrl == publicUrl));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, presignedUrl, fileKey, publicUrl);

  /// Create a copy of PresignedUrlResponseEntity
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$PresignedUrlResponseEntityImplCopyWith<_$PresignedUrlResponseEntityImpl>
      get copyWith => __$$PresignedUrlResponseEntityImplCopyWithImpl<
          _$PresignedUrlResponseEntityImpl>(this, _$identity);
}

abstract class _PresignedUrlResponseEntity
    implements PresignedUrlResponseEntity {
  const factory _PresignedUrlResponseEntity(
      {required final String presignedUrl,
      required final String fileKey,
      required final String publicUrl}) = _$PresignedUrlResponseEntityImpl;

  @override
  String get presignedUrl;
  @override
  String get fileKey;
  @override
  String get publicUrl;

  /// Create a copy of PresignedUrlResponseEntity
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$PresignedUrlResponseEntityImplCopyWith<_$PresignedUrlResponseEntityImpl>
      get copyWith => throw _privateConstructorUsedError;
}
