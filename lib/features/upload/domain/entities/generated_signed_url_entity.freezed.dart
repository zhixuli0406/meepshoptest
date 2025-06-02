// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'generated_signed_url_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$GeneratedSignedUrlEntity {
  String get signedUrl => throw _privateConstructorUsedError;
  String get objectKey => throw _privateConstructorUsedError;
  String get fileUrl => throw _privateConstructorUsedError;

  /// Create a copy of GeneratedSignedUrlEntity
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $GeneratedSignedUrlEntityCopyWith<GeneratedSignedUrlEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GeneratedSignedUrlEntityCopyWith<$Res> {
  factory $GeneratedSignedUrlEntityCopyWith(GeneratedSignedUrlEntity value,
          $Res Function(GeneratedSignedUrlEntity) then) =
      _$GeneratedSignedUrlEntityCopyWithImpl<$Res, GeneratedSignedUrlEntity>;
  @useResult
  $Res call({String signedUrl, String objectKey, String fileUrl});
}

/// @nodoc
class _$GeneratedSignedUrlEntityCopyWithImpl<$Res,
        $Val extends GeneratedSignedUrlEntity>
    implements $GeneratedSignedUrlEntityCopyWith<$Res> {
  _$GeneratedSignedUrlEntityCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of GeneratedSignedUrlEntity
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
abstract class _$$GeneratedSignedUrlEntityImplCopyWith<$Res>
    implements $GeneratedSignedUrlEntityCopyWith<$Res> {
  factory _$$GeneratedSignedUrlEntityImplCopyWith(
          _$GeneratedSignedUrlEntityImpl value,
          $Res Function(_$GeneratedSignedUrlEntityImpl) then) =
      __$$GeneratedSignedUrlEntityImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String signedUrl, String objectKey, String fileUrl});
}

/// @nodoc
class __$$GeneratedSignedUrlEntityImplCopyWithImpl<$Res>
    extends _$GeneratedSignedUrlEntityCopyWithImpl<$Res,
        _$GeneratedSignedUrlEntityImpl>
    implements _$$GeneratedSignedUrlEntityImplCopyWith<$Res> {
  __$$GeneratedSignedUrlEntityImplCopyWithImpl(
      _$GeneratedSignedUrlEntityImpl _value,
      $Res Function(_$GeneratedSignedUrlEntityImpl) _then)
      : super(_value, _then);

  /// Create a copy of GeneratedSignedUrlEntity
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? signedUrl = null,
    Object? objectKey = null,
    Object? fileUrl = null,
  }) {
    return _then(_$GeneratedSignedUrlEntityImpl(
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

class _$GeneratedSignedUrlEntityImpl implements _GeneratedSignedUrlEntity {
  const _$GeneratedSignedUrlEntityImpl(
      {required this.signedUrl,
      required this.objectKey,
      required this.fileUrl});

  @override
  final String signedUrl;
  @override
  final String objectKey;
  @override
  final String fileUrl;

  @override
  String toString() {
    return 'GeneratedSignedUrlEntity(signedUrl: $signedUrl, objectKey: $objectKey, fileUrl: $fileUrl)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GeneratedSignedUrlEntityImpl &&
            (identical(other.signedUrl, signedUrl) ||
                other.signedUrl == signedUrl) &&
            (identical(other.objectKey, objectKey) ||
                other.objectKey == objectKey) &&
            (identical(other.fileUrl, fileUrl) || other.fileUrl == fileUrl));
  }

  @override
  int get hashCode => Object.hash(runtimeType, signedUrl, objectKey, fileUrl);

  /// Create a copy of GeneratedSignedUrlEntity
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$GeneratedSignedUrlEntityImplCopyWith<_$GeneratedSignedUrlEntityImpl>
      get copyWith => __$$GeneratedSignedUrlEntityImplCopyWithImpl<
          _$GeneratedSignedUrlEntityImpl>(this, _$identity);
}

abstract class _GeneratedSignedUrlEntity implements GeneratedSignedUrlEntity {
  const factory _GeneratedSignedUrlEntity(
      {required final String signedUrl,
      required final String objectKey,
      required final String fileUrl}) = _$GeneratedSignedUrlEntityImpl;

  @override
  String get signedUrl;
  @override
  String get objectKey;
  @override
  String get fileUrl;

  /// Create a copy of GeneratedSignedUrlEntity
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$GeneratedSignedUrlEntityImplCopyWith<_$GeneratedSignedUrlEntityImpl>
      get copyWith => throw _privateConstructorUsedError;
}
