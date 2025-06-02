// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'api_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

StatusResponse _$StatusResponseFromJson(Map<String, dynamic> json) {
  return _StatusResponse.fromJson(json);
}

/// @nodoc
mixin _$StatusResponse {
  String get status => throw _privateConstructorUsedError;
  String? get message => throw _privateConstructorUsedError;

  /// Serializes this StatusResponse to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of StatusResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $StatusResponseCopyWith<StatusResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $StatusResponseCopyWith<$Res> {
  factory $StatusResponseCopyWith(
          StatusResponse value, $Res Function(StatusResponse) then) =
      _$StatusResponseCopyWithImpl<$Res, StatusResponse>;
  @useResult
  $Res call({String status, String? message});
}

/// @nodoc
class _$StatusResponseCopyWithImpl<$Res, $Val extends StatusResponse>
    implements $StatusResponseCopyWith<$Res> {
  _$StatusResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of StatusResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? message = freezed,
  }) {
    return _then(_value.copyWith(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String,
      message: freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$StatusResponseImplCopyWith<$Res>
    implements $StatusResponseCopyWith<$Res> {
  factory _$$StatusResponseImplCopyWith(_$StatusResponseImpl value,
          $Res Function(_$StatusResponseImpl) then) =
      __$$StatusResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String status, String? message});
}

/// @nodoc
class __$$StatusResponseImplCopyWithImpl<$Res>
    extends _$StatusResponseCopyWithImpl<$Res, _$StatusResponseImpl>
    implements _$$StatusResponseImplCopyWith<$Res> {
  __$$StatusResponseImplCopyWithImpl(
      _$StatusResponseImpl _value, $Res Function(_$StatusResponseImpl) _then)
      : super(_value, _then);

  /// Create a copy of StatusResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? message = freezed,
  }) {
    return _then(_$StatusResponseImpl(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String,
      message: freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$StatusResponseImpl implements _StatusResponse {
  const _$StatusResponseImpl({required this.status, this.message});

  factory _$StatusResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$StatusResponseImplFromJson(json);

  @override
  final String status;
  @override
  final String? message;

  @override
  String toString() {
    return 'StatusResponse(status: $status, message: $message)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$StatusResponseImpl &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.message, message) || other.message == message));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, status, message);

  /// Create a copy of StatusResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$StatusResponseImplCopyWith<_$StatusResponseImpl> get copyWith =>
      __$$StatusResponseImplCopyWithImpl<_$StatusResponseImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$StatusResponseImplToJson(
      this,
    );
  }
}

abstract class _StatusResponse implements StatusResponse {
  const factory _StatusResponse(
      {required final String status,
      final String? message}) = _$StatusResponseImpl;

  factory _StatusResponse.fromJson(Map<String, dynamic> json) =
      _$StatusResponseImpl.fromJson;

  @override
  String get status;
  @override
  String? get message;

  /// Create a copy of StatusResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$StatusResponseImplCopyWith<_$StatusResponseImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

ApiResponse<T> _$ApiResponseFromJson<T>(
    Map<String, dynamic> json, T Function(Object?) fromJsonT) {
  return _ApiResponse<T>.fromJson(json, fromJsonT);
}

/// @nodoc
mixin _$ApiResponse<T> {
  String get status => throw _privateConstructorUsedError;
  String? get message => throw _privateConstructorUsedError;
  T? get data => throw _privateConstructorUsedError;
  String? get errorCode =>
      throw _privateConstructorUsedError; // For ErrorResponse compatibility
  List<ErrorDetailResponse>? get details => throw _privateConstructorUsedError;

  /// Serializes this ApiResponse to a JSON map.
  Map<String, dynamic> toJson(Object? Function(T) toJsonT) =>
      throw _privateConstructorUsedError;

  /// Create a copy of ApiResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ApiResponseCopyWith<T, ApiResponse<T>> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ApiResponseCopyWith<T, $Res> {
  factory $ApiResponseCopyWith(
          ApiResponse<T> value, $Res Function(ApiResponse<T>) then) =
      _$ApiResponseCopyWithImpl<T, $Res, ApiResponse<T>>;
  @useResult
  $Res call(
      {String status,
      String? message,
      T? data,
      String? errorCode,
      List<ErrorDetailResponse>? details});
}

/// @nodoc
class _$ApiResponseCopyWithImpl<T, $Res, $Val extends ApiResponse<T>>
    implements $ApiResponseCopyWith<T, $Res> {
  _$ApiResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ApiResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? message = freezed,
    Object? data = freezed,
    Object? errorCode = freezed,
    Object? details = freezed,
  }) {
    return _then(_value.copyWith(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String,
      message: freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
      data: freezed == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as T?,
      errorCode: freezed == errorCode
          ? _value.errorCode
          : errorCode // ignore: cast_nullable_to_non_nullable
              as String?,
      details: freezed == details
          ? _value.details
          : details // ignore: cast_nullable_to_non_nullable
              as List<ErrorDetailResponse>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ApiResponseImplCopyWith<T, $Res>
    implements $ApiResponseCopyWith<T, $Res> {
  factory _$$ApiResponseImplCopyWith(_$ApiResponseImpl<T> value,
          $Res Function(_$ApiResponseImpl<T>) then) =
      __$$ApiResponseImplCopyWithImpl<T, $Res>;
  @override
  @useResult
  $Res call(
      {String status,
      String? message,
      T? data,
      String? errorCode,
      List<ErrorDetailResponse>? details});
}

/// @nodoc
class __$$ApiResponseImplCopyWithImpl<T, $Res>
    extends _$ApiResponseCopyWithImpl<T, $Res, _$ApiResponseImpl<T>>
    implements _$$ApiResponseImplCopyWith<T, $Res> {
  __$$ApiResponseImplCopyWithImpl(
      _$ApiResponseImpl<T> _value, $Res Function(_$ApiResponseImpl<T>) _then)
      : super(_value, _then);

  /// Create a copy of ApiResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? message = freezed,
    Object? data = freezed,
    Object? errorCode = freezed,
    Object? details = freezed,
  }) {
    return _then(_$ApiResponseImpl<T>(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String,
      message: freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
      data: freezed == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as T?,
      errorCode: freezed == errorCode
          ? _value.errorCode
          : errorCode // ignore: cast_nullable_to_non_nullable
              as String?,
      details: freezed == details
          ? _value._details
          : details // ignore: cast_nullable_to_non_nullable
              as List<ErrorDetailResponse>?,
    ));
  }
}

/// @nodoc
@JsonSerializable(genericArgumentFactories: true)
class _$ApiResponseImpl<T> implements _ApiResponse<T> {
  const _$ApiResponseImpl(
      {required this.status,
      this.message,
      this.data,
      this.errorCode,
      final List<ErrorDetailResponse>? details})
      : _details = details;

  factory _$ApiResponseImpl.fromJson(
          Map<String, dynamic> json, T Function(Object?) fromJsonT) =>
      _$$ApiResponseImplFromJson(json, fromJsonT);

  @override
  final String status;
  @override
  final String? message;
  @override
  final T? data;
  @override
  final String? errorCode;
// For ErrorResponse compatibility
  final List<ErrorDetailResponse>? _details;
// For ErrorResponse compatibility
  @override
  List<ErrorDetailResponse>? get details {
    final value = _details;
    if (value == null) return null;
    if (_details is EqualUnmodifiableListView) return _details;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'ApiResponse<$T>(status: $status, message: $message, data: $data, errorCode: $errorCode, details: $details)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ApiResponseImpl<T> &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.message, message) || other.message == message) &&
            const DeepCollectionEquality().equals(other.data, data) &&
            (identical(other.errorCode, errorCode) ||
                other.errorCode == errorCode) &&
            const DeepCollectionEquality().equals(other._details, _details));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      status,
      message,
      const DeepCollectionEquality().hash(data),
      errorCode,
      const DeepCollectionEquality().hash(_details));

  /// Create a copy of ApiResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ApiResponseImplCopyWith<T, _$ApiResponseImpl<T>> get copyWith =>
      __$$ApiResponseImplCopyWithImpl<T, _$ApiResponseImpl<T>>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson(Object? Function(T) toJsonT) {
    return _$$ApiResponseImplToJson<T>(this, toJsonT);
  }
}

abstract class _ApiResponse<T> implements ApiResponse<T> {
  const factory _ApiResponse(
      {required final String status,
      final String? message,
      final T? data,
      final String? errorCode,
      final List<ErrorDetailResponse>? details}) = _$ApiResponseImpl<T>;

  factory _ApiResponse.fromJson(
          Map<String, dynamic> json, T Function(Object?) fromJsonT) =
      _$ApiResponseImpl<T>.fromJson;

  @override
  String get status;
  @override
  String? get message;
  @override
  T? get data;
  @override
  String? get errorCode; // For ErrorResponse compatibility
  @override
  List<ErrorDetailResponse>? get details;

  /// Create a copy of ApiResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ApiResponseImplCopyWith<T, _$ApiResponseImpl<T>> get copyWith =>
      throw _privateConstructorUsedError;
}

ErrorDetailResponse _$ErrorDetailResponseFromJson(Map<String, dynamic> json) {
  return _ErrorDetailResponse.fromJson(json);
}

/// @nodoc
mixin _$ErrorDetailResponse {
  String? get field => throw _privateConstructorUsedError;
  String? get message => throw _privateConstructorUsedError;

  /// Serializes this ErrorDetailResponse to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ErrorDetailResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ErrorDetailResponseCopyWith<ErrorDetailResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ErrorDetailResponseCopyWith<$Res> {
  factory $ErrorDetailResponseCopyWith(
          ErrorDetailResponse value, $Res Function(ErrorDetailResponse) then) =
      _$ErrorDetailResponseCopyWithImpl<$Res, ErrorDetailResponse>;
  @useResult
  $Res call({String? field, String? message});
}

/// @nodoc
class _$ErrorDetailResponseCopyWithImpl<$Res, $Val extends ErrorDetailResponse>
    implements $ErrorDetailResponseCopyWith<$Res> {
  _$ErrorDetailResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ErrorDetailResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? field = freezed,
    Object? message = freezed,
  }) {
    return _then(_value.copyWith(
      field: freezed == field
          ? _value.field
          : field // ignore: cast_nullable_to_non_nullable
              as String?,
      message: freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ErrorDetailResponseImplCopyWith<$Res>
    implements $ErrorDetailResponseCopyWith<$Res> {
  factory _$$ErrorDetailResponseImplCopyWith(_$ErrorDetailResponseImpl value,
          $Res Function(_$ErrorDetailResponseImpl) then) =
      __$$ErrorDetailResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? field, String? message});
}

/// @nodoc
class __$$ErrorDetailResponseImplCopyWithImpl<$Res>
    extends _$ErrorDetailResponseCopyWithImpl<$Res, _$ErrorDetailResponseImpl>
    implements _$$ErrorDetailResponseImplCopyWith<$Res> {
  __$$ErrorDetailResponseImplCopyWithImpl(_$ErrorDetailResponseImpl _value,
      $Res Function(_$ErrorDetailResponseImpl) _then)
      : super(_value, _then);

  /// Create a copy of ErrorDetailResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? field = freezed,
    Object? message = freezed,
  }) {
    return _then(_$ErrorDetailResponseImpl(
      field: freezed == field
          ? _value.field
          : field // ignore: cast_nullable_to_non_nullable
              as String?,
      message: freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ErrorDetailResponseImpl implements _ErrorDetailResponse {
  const _$ErrorDetailResponseImpl({this.field, this.message});

  factory _$ErrorDetailResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$ErrorDetailResponseImplFromJson(json);

  @override
  final String? field;
  @override
  final String? message;

  @override
  String toString() {
    return 'ErrorDetailResponse(field: $field, message: $message)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ErrorDetailResponseImpl &&
            (identical(other.field, field) || other.field == field) &&
            (identical(other.message, message) || other.message == message));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, field, message);

  /// Create a copy of ErrorDetailResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ErrorDetailResponseImplCopyWith<_$ErrorDetailResponseImpl> get copyWith =>
      __$$ErrorDetailResponseImplCopyWithImpl<_$ErrorDetailResponseImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ErrorDetailResponseImplToJson(
      this,
    );
  }
}

abstract class _ErrorDetailResponse implements ErrorDetailResponse {
  const factory _ErrorDetailResponse(
      {final String? field, final String? message}) = _$ErrorDetailResponseImpl;

  factory _ErrorDetailResponse.fromJson(Map<String, dynamic> json) =
      _$ErrorDetailResponseImpl.fromJson;

  @override
  String? get field;
  @override
  String? get message;

  /// Create a copy of ErrorDetailResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ErrorDetailResponseImplCopyWith<_$ErrorDetailResponseImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
