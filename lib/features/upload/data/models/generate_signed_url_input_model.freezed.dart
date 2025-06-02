// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'generate_signed_url_input_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

GenerateSignedUrlInputModel _$GenerateSignedUrlInputModelFromJson(
    Map<String, dynamic> json) {
  return _GenerateSignedUrlInputModel.fromJson(json);
}

/// @nodoc
mixin _$GenerateSignedUrlInputModel {
  String get fileName => throw _privateConstructorUsedError;
  String get fileType => throw _privateConstructorUsedError;
  String? get directory => throw _privateConstructorUsedError;

  /// Serializes this GenerateSignedUrlInputModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of GenerateSignedUrlInputModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $GenerateSignedUrlInputModelCopyWith<GenerateSignedUrlInputModel>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GenerateSignedUrlInputModelCopyWith<$Res> {
  factory $GenerateSignedUrlInputModelCopyWith(
          GenerateSignedUrlInputModel value,
          $Res Function(GenerateSignedUrlInputModel) then) =
      _$GenerateSignedUrlInputModelCopyWithImpl<$Res,
          GenerateSignedUrlInputModel>;
  @useResult
  $Res call({String fileName, String fileType, String? directory});
}

/// @nodoc
class _$GenerateSignedUrlInputModelCopyWithImpl<$Res,
        $Val extends GenerateSignedUrlInputModel>
    implements $GenerateSignedUrlInputModelCopyWith<$Res> {
  _$GenerateSignedUrlInputModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of GenerateSignedUrlInputModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? fileName = null,
    Object? fileType = null,
    Object? directory = freezed,
  }) {
    return _then(_value.copyWith(
      fileName: null == fileName
          ? _value.fileName
          : fileName // ignore: cast_nullable_to_non_nullable
              as String,
      fileType: null == fileType
          ? _value.fileType
          : fileType // ignore: cast_nullable_to_non_nullable
              as String,
      directory: freezed == directory
          ? _value.directory
          : directory // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$GenerateSignedUrlInputModelImplCopyWith<$Res>
    implements $GenerateSignedUrlInputModelCopyWith<$Res> {
  factory _$$GenerateSignedUrlInputModelImplCopyWith(
          _$GenerateSignedUrlInputModelImpl value,
          $Res Function(_$GenerateSignedUrlInputModelImpl) then) =
      __$$GenerateSignedUrlInputModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String fileName, String fileType, String? directory});
}

/// @nodoc
class __$$GenerateSignedUrlInputModelImplCopyWithImpl<$Res>
    extends _$GenerateSignedUrlInputModelCopyWithImpl<$Res,
        _$GenerateSignedUrlInputModelImpl>
    implements _$$GenerateSignedUrlInputModelImplCopyWith<$Res> {
  __$$GenerateSignedUrlInputModelImplCopyWithImpl(
      _$GenerateSignedUrlInputModelImpl _value,
      $Res Function(_$GenerateSignedUrlInputModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of GenerateSignedUrlInputModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? fileName = null,
    Object? fileType = null,
    Object? directory = freezed,
  }) {
    return _then(_$GenerateSignedUrlInputModelImpl(
      fileName: null == fileName
          ? _value.fileName
          : fileName // ignore: cast_nullable_to_non_nullable
              as String,
      fileType: null == fileType
          ? _value.fileType
          : fileType // ignore: cast_nullable_to_non_nullable
              as String,
      directory: freezed == directory
          ? _value.directory
          : directory // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

@JsonSerializable(fieldRename: FieldRename.snake, explicitToJson: true)
class _$GenerateSignedUrlInputModelImpl
    implements _GenerateSignedUrlInputModel {
  const _$GenerateSignedUrlInputModelImpl(
      {required this.fileName, required this.fileType, this.directory});

  factory _$GenerateSignedUrlInputModelImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$GenerateSignedUrlInputModelImplFromJson(json);

  @override
  final String fileName;
  @override
  final String fileType;
  @override
  final String? directory;

  @override
  String toString() {
    return 'GenerateSignedUrlInputModel(fileName: $fileName, fileType: $fileType, directory: $directory)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GenerateSignedUrlInputModelImpl &&
            (identical(other.fileName, fileName) ||
                other.fileName == fileName) &&
            (identical(other.fileType, fileType) ||
                other.fileType == fileType) &&
            (identical(other.directory, directory) ||
                other.directory == directory));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, fileName, fileType, directory);

  /// Create a copy of GenerateSignedUrlInputModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$GenerateSignedUrlInputModelImplCopyWith<_$GenerateSignedUrlInputModelImpl>
      get copyWith => __$$GenerateSignedUrlInputModelImplCopyWithImpl<
          _$GenerateSignedUrlInputModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$GenerateSignedUrlInputModelImplToJson(
      this,
    );
  }
}

abstract class _GenerateSignedUrlInputModel
    implements GenerateSignedUrlInputModel {
  const factory _GenerateSignedUrlInputModel(
      {required final String fileName,
      required final String fileType,
      final String? directory}) = _$GenerateSignedUrlInputModelImpl;

  factory _GenerateSignedUrlInputModel.fromJson(Map<String, dynamic> json) =
      _$GenerateSignedUrlInputModelImpl.fromJson;

  @override
  String get fileName;
  @override
  String get fileType;
  @override
  String? get directory;

  /// Create a copy of GenerateSignedUrlInputModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$GenerateSignedUrlInputModelImplCopyWith<_$GenerateSignedUrlInputModelImpl>
      get copyWith => throw _privateConstructorUsedError;
}
