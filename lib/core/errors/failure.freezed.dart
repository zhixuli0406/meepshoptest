// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'failure.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$Failure {
  String? get message => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String? message, String? errorCode,
            List<ErrorDetail>? details, int? statusCode)
        serverError,
    required TResult Function(String? message) networkError,
    required TResult Function(String? message) unauthorized,
    required TResult Function(String? message) cacheError,
    required TResult Function(String? message) unexpectedError,
    required TResult Function(String message) customError,
    required TResult Function(String? message) notFound,
    required TResult Function(String? message, String? errorCode) conflict,
    required TResult Function(
            String? message, String? errorCode, List<ErrorDetail>? details)
        validationError,
    required TResult Function(String? message) forbidden,
    required TResult Function(String? message) localCacheError,
    required TResult Function(
            String? message, Object? error, StackTrace? stackTrace)
        unknownError,
    required TResult Function(String? message, Failure originalFailure)
        multiStageError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String? message, String? errorCode,
            List<ErrorDetail>? details, int? statusCode)?
        serverError,
    TResult? Function(String? message)? networkError,
    TResult? Function(String? message)? unauthorized,
    TResult? Function(String? message)? cacheError,
    TResult? Function(String? message)? unexpectedError,
    TResult? Function(String message)? customError,
    TResult? Function(String? message)? notFound,
    TResult? Function(String? message, String? errorCode)? conflict,
    TResult? Function(
            String? message, String? errorCode, List<ErrorDetail>? details)?
        validationError,
    TResult? Function(String? message)? forbidden,
    TResult? Function(String? message)? localCacheError,
    TResult? Function(String? message, Object? error, StackTrace? stackTrace)?
        unknownError,
    TResult? Function(String? message, Failure originalFailure)?
        multiStageError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String? message, String? errorCode,
            List<ErrorDetail>? details, int? statusCode)?
        serverError,
    TResult Function(String? message)? networkError,
    TResult Function(String? message)? unauthorized,
    TResult Function(String? message)? cacheError,
    TResult Function(String? message)? unexpectedError,
    TResult Function(String message)? customError,
    TResult Function(String? message)? notFound,
    TResult Function(String? message, String? errorCode)? conflict,
    TResult Function(
            String? message, String? errorCode, List<ErrorDetail>? details)?
        validationError,
    TResult Function(String? message)? forbidden,
    TResult Function(String? message)? localCacheError,
    TResult Function(String? message, Object? error, StackTrace? stackTrace)?
        unknownError,
    TResult Function(String? message, Failure originalFailure)? multiStageError,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ServerError value) serverError,
    required TResult Function(NetworkError value) networkError,
    required TResult Function(Unauthorized value) unauthorized,
    required TResult Function(CacheError value) cacheError,
    required TResult Function(UnexpectedError value) unexpectedError,
    required TResult Function(CustomError value) customError,
    required TResult Function(NotFoundFailure value) notFound,
    required TResult Function(ConflictError value) conflict,
    required TResult Function(ValidationError value) validationError,
    required TResult Function(ForbiddenFailure value) forbidden,
    required TResult Function(LocalCacheError value) localCacheError,
    required TResult Function(UnknownError value) unknownError,
    required TResult Function(MultiStageError value) multiStageError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ServerError value)? serverError,
    TResult? Function(NetworkError value)? networkError,
    TResult? Function(Unauthorized value)? unauthorized,
    TResult? Function(CacheError value)? cacheError,
    TResult? Function(UnexpectedError value)? unexpectedError,
    TResult? Function(CustomError value)? customError,
    TResult? Function(NotFoundFailure value)? notFound,
    TResult? Function(ConflictError value)? conflict,
    TResult? Function(ValidationError value)? validationError,
    TResult? Function(ForbiddenFailure value)? forbidden,
    TResult? Function(LocalCacheError value)? localCacheError,
    TResult? Function(UnknownError value)? unknownError,
    TResult? Function(MultiStageError value)? multiStageError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ServerError value)? serverError,
    TResult Function(NetworkError value)? networkError,
    TResult Function(Unauthorized value)? unauthorized,
    TResult Function(CacheError value)? cacheError,
    TResult Function(UnexpectedError value)? unexpectedError,
    TResult Function(CustomError value)? customError,
    TResult Function(NotFoundFailure value)? notFound,
    TResult Function(ConflictError value)? conflict,
    TResult Function(ValidationError value)? validationError,
    TResult Function(ForbiddenFailure value)? forbidden,
    TResult Function(LocalCacheError value)? localCacheError,
    TResult Function(UnknownError value)? unknownError,
    TResult Function(MultiStageError value)? multiStageError,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  /// Create a copy of Failure
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $FailureCopyWith<Failure> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FailureCopyWith<$Res> {
  factory $FailureCopyWith(Failure value, $Res Function(Failure) then) =
      _$FailureCopyWithImpl<$Res, Failure>;
  @useResult
  $Res call({String message});
}

/// @nodoc
class _$FailureCopyWithImpl<$Res, $Val extends Failure>
    implements $FailureCopyWith<$Res> {
  _$FailureCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Failure
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
  }) {
    return _then(_value.copyWith(
      message: null == message
          ? _value.message!
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ServerErrorImplCopyWith<$Res>
    implements $FailureCopyWith<$Res> {
  factory _$$ServerErrorImplCopyWith(
          _$ServerErrorImpl value, $Res Function(_$ServerErrorImpl) then) =
      __$$ServerErrorImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? message,
      String? errorCode,
      List<ErrorDetail>? details,
      int? statusCode});
}

/// @nodoc
class __$$ServerErrorImplCopyWithImpl<$Res>
    extends _$FailureCopyWithImpl<$Res, _$ServerErrorImpl>
    implements _$$ServerErrorImplCopyWith<$Res> {
  __$$ServerErrorImplCopyWithImpl(
      _$ServerErrorImpl _value, $Res Function(_$ServerErrorImpl) _then)
      : super(_value, _then);

  /// Create a copy of Failure
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = freezed,
    Object? errorCode = freezed,
    Object? details = freezed,
    Object? statusCode = freezed,
  }) {
    return _then(_$ServerErrorImpl(
      message: freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
      errorCode: freezed == errorCode
          ? _value.errorCode
          : errorCode // ignore: cast_nullable_to_non_nullable
              as String?,
      details: freezed == details
          ? _value._details
          : details // ignore: cast_nullable_to_non_nullable
              as List<ErrorDetail>?,
      statusCode: freezed == statusCode
          ? _value.statusCode
          : statusCode // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc

class _$ServerErrorImpl implements ServerError {
  const _$ServerErrorImpl(
      {this.message,
      this.errorCode,
      final List<ErrorDetail>? details,
      this.statusCode})
      : _details = details;

  @override
  final String? message;
  @override
  final String? errorCode;
  final List<ErrorDetail>? _details;
  @override
  List<ErrorDetail>? get details {
    final value = _details;
    if (value == null) return null;
    if (_details is EqualUnmodifiableListView) return _details;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  final int? statusCode;

  @override
  String toString() {
    return 'Failure.serverError(message: $message, errorCode: $errorCode, details: $details, statusCode: $statusCode)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ServerErrorImpl &&
            (identical(other.message, message) || other.message == message) &&
            (identical(other.errorCode, errorCode) ||
                other.errorCode == errorCode) &&
            const DeepCollectionEquality().equals(other._details, _details) &&
            (identical(other.statusCode, statusCode) ||
                other.statusCode == statusCode));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message, errorCode,
      const DeepCollectionEquality().hash(_details), statusCode);

  /// Create a copy of Failure
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ServerErrorImplCopyWith<_$ServerErrorImpl> get copyWith =>
      __$$ServerErrorImplCopyWithImpl<_$ServerErrorImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String? message, String? errorCode,
            List<ErrorDetail>? details, int? statusCode)
        serverError,
    required TResult Function(String? message) networkError,
    required TResult Function(String? message) unauthorized,
    required TResult Function(String? message) cacheError,
    required TResult Function(String? message) unexpectedError,
    required TResult Function(String message) customError,
    required TResult Function(String? message) notFound,
    required TResult Function(String? message, String? errorCode) conflict,
    required TResult Function(
            String? message, String? errorCode, List<ErrorDetail>? details)
        validationError,
    required TResult Function(String? message) forbidden,
    required TResult Function(String? message) localCacheError,
    required TResult Function(
            String? message, Object? error, StackTrace? stackTrace)
        unknownError,
    required TResult Function(String? message, Failure originalFailure)
        multiStageError,
  }) {
    return serverError(message, errorCode, details, statusCode);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String? message, String? errorCode,
            List<ErrorDetail>? details, int? statusCode)?
        serverError,
    TResult? Function(String? message)? networkError,
    TResult? Function(String? message)? unauthorized,
    TResult? Function(String? message)? cacheError,
    TResult? Function(String? message)? unexpectedError,
    TResult? Function(String message)? customError,
    TResult? Function(String? message)? notFound,
    TResult? Function(String? message, String? errorCode)? conflict,
    TResult? Function(
            String? message, String? errorCode, List<ErrorDetail>? details)?
        validationError,
    TResult? Function(String? message)? forbidden,
    TResult? Function(String? message)? localCacheError,
    TResult? Function(String? message, Object? error, StackTrace? stackTrace)?
        unknownError,
    TResult? Function(String? message, Failure originalFailure)?
        multiStageError,
  }) {
    return serverError?.call(message, errorCode, details, statusCode);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String? message, String? errorCode,
            List<ErrorDetail>? details, int? statusCode)?
        serverError,
    TResult Function(String? message)? networkError,
    TResult Function(String? message)? unauthorized,
    TResult Function(String? message)? cacheError,
    TResult Function(String? message)? unexpectedError,
    TResult Function(String message)? customError,
    TResult Function(String? message)? notFound,
    TResult Function(String? message, String? errorCode)? conflict,
    TResult Function(
            String? message, String? errorCode, List<ErrorDetail>? details)?
        validationError,
    TResult Function(String? message)? forbidden,
    TResult Function(String? message)? localCacheError,
    TResult Function(String? message, Object? error, StackTrace? stackTrace)?
        unknownError,
    TResult Function(String? message, Failure originalFailure)? multiStageError,
    required TResult orElse(),
  }) {
    if (serverError != null) {
      return serverError(message, errorCode, details, statusCode);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ServerError value) serverError,
    required TResult Function(NetworkError value) networkError,
    required TResult Function(Unauthorized value) unauthorized,
    required TResult Function(CacheError value) cacheError,
    required TResult Function(UnexpectedError value) unexpectedError,
    required TResult Function(CustomError value) customError,
    required TResult Function(NotFoundFailure value) notFound,
    required TResult Function(ConflictError value) conflict,
    required TResult Function(ValidationError value) validationError,
    required TResult Function(ForbiddenFailure value) forbidden,
    required TResult Function(LocalCacheError value) localCacheError,
    required TResult Function(UnknownError value) unknownError,
    required TResult Function(MultiStageError value) multiStageError,
  }) {
    return serverError(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ServerError value)? serverError,
    TResult? Function(NetworkError value)? networkError,
    TResult? Function(Unauthorized value)? unauthorized,
    TResult? Function(CacheError value)? cacheError,
    TResult? Function(UnexpectedError value)? unexpectedError,
    TResult? Function(CustomError value)? customError,
    TResult? Function(NotFoundFailure value)? notFound,
    TResult? Function(ConflictError value)? conflict,
    TResult? Function(ValidationError value)? validationError,
    TResult? Function(ForbiddenFailure value)? forbidden,
    TResult? Function(LocalCacheError value)? localCacheError,
    TResult? Function(UnknownError value)? unknownError,
    TResult? Function(MultiStageError value)? multiStageError,
  }) {
    return serverError?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ServerError value)? serverError,
    TResult Function(NetworkError value)? networkError,
    TResult Function(Unauthorized value)? unauthorized,
    TResult Function(CacheError value)? cacheError,
    TResult Function(UnexpectedError value)? unexpectedError,
    TResult Function(CustomError value)? customError,
    TResult Function(NotFoundFailure value)? notFound,
    TResult Function(ConflictError value)? conflict,
    TResult Function(ValidationError value)? validationError,
    TResult Function(ForbiddenFailure value)? forbidden,
    TResult Function(LocalCacheError value)? localCacheError,
    TResult Function(UnknownError value)? unknownError,
    TResult Function(MultiStageError value)? multiStageError,
    required TResult orElse(),
  }) {
    if (serverError != null) {
      return serverError(this);
    }
    return orElse();
  }
}

abstract class ServerError implements Failure {
  const factory ServerError(
      {final String? message,
      final String? errorCode,
      final List<ErrorDetail>? details,
      final int? statusCode}) = _$ServerErrorImpl;

  @override
  String? get message;
  String? get errorCode;
  List<ErrorDetail>? get details;
  int? get statusCode;

  /// Create a copy of Failure
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ServerErrorImplCopyWith<_$ServerErrorImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$NetworkErrorImplCopyWith<$Res>
    implements $FailureCopyWith<$Res> {
  factory _$$NetworkErrorImplCopyWith(
          _$NetworkErrorImpl value, $Res Function(_$NetworkErrorImpl) then) =
      __$$NetworkErrorImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? message});
}

/// @nodoc
class __$$NetworkErrorImplCopyWithImpl<$Res>
    extends _$FailureCopyWithImpl<$Res, _$NetworkErrorImpl>
    implements _$$NetworkErrorImplCopyWith<$Res> {
  __$$NetworkErrorImplCopyWithImpl(
      _$NetworkErrorImpl _value, $Res Function(_$NetworkErrorImpl) _then)
      : super(_value, _then);

  /// Create a copy of Failure
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = freezed,
  }) {
    return _then(_$NetworkErrorImpl(
      message: freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$NetworkErrorImpl implements NetworkError {
  const _$NetworkErrorImpl({this.message});

  @override
  final String? message;

  @override
  String toString() {
    return 'Failure.networkError(message: $message)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$NetworkErrorImpl &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message);

  /// Create a copy of Failure
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$NetworkErrorImplCopyWith<_$NetworkErrorImpl> get copyWith =>
      __$$NetworkErrorImplCopyWithImpl<_$NetworkErrorImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String? message, String? errorCode,
            List<ErrorDetail>? details, int? statusCode)
        serverError,
    required TResult Function(String? message) networkError,
    required TResult Function(String? message) unauthorized,
    required TResult Function(String? message) cacheError,
    required TResult Function(String? message) unexpectedError,
    required TResult Function(String message) customError,
    required TResult Function(String? message) notFound,
    required TResult Function(String? message, String? errorCode) conflict,
    required TResult Function(
            String? message, String? errorCode, List<ErrorDetail>? details)
        validationError,
    required TResult Function(String? message) forbidden,
    required TResult Function(String? message) localCacheError,
    required TResult Function(
            String? message, Object? error, StackTrace? stackTrace)
        unknownError,
    required TResult Function(String? message, Failure originalFailure)
        multiStageError,
  }) {
    return networkError(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String? message, String? errorCode,
            List<ErrorDetail>? details, int? statusCode)?
        serverError,
    TResult? Function(String? message)? networkError,
    TResult? Function(String? message)? unauthorized,
    TResult? Function(String? message)? cacheError,
    TResult? Function(String? message)? unexpectedError,
    TResult? Function(String message)? customError,
    TResult? Function(String? message)? notFound,
    TResult? Function(String? message, String? errorCode)? conflict,
    TResult? Function(
            String? message, String? errorCode, List<ErrorDetail>? details)?
        validationError,
    TResult? Function(String? message)? forbidden,
    TResult? Function(String? message)? localCacheError,
    TResult? Function(String? message, Object? error, StackTrace? stackTrace)?
        unknownError,
    TResult? Function(String? message, Failure originalFailure)?
        multiStageError,
  }) {
    return networkError?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String? message, String? errorCode,
            List<ErrorDetail>? details, int? statusCode)?
        serverError,
    TResult Function(String? message)? networkError,
    TResult Function(String? message)? unauthorized,
    TResult Function(String? message)? cacheError,
    TResult Function(String? message)? unexpectedError,
    TResult Function(String message)? customError,
    TResult Function(String? message)? notFound,
    TResult Function(String? message, String? errorCode)? conflict,
    TResult Function(
            String? message, String? errorCode, List<ErrorDetail>? details)?
        validationError,
    TResult Function(String? message)? forbidden,
    TResult Function(String? message)? localCacheError,
    TResult Function(String? message, Object? error, StackTrace? stackTrace)?
        unknownError,
    TResult Function(String? message, Failure originalFailure)? multiStageError,
    required TResult orElse(),
  }) {
    if (networkError != null) {
      return networkError(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ServerError value) serverError,
    required TResult Function(NetworkError value) networkError,
    required TResult Function(Unauthorized value) unauthorized,
    required TResult Function(CacheError value) cacheError,
    required TResult Function(UnexpectedError value) unexpectedError,
    required TResult Function(CustomError value) customError,
    required TResult Function(NotFoundFailure value) notFound,
    required TResult Function(ConflictError value) conflict,
    required TResult Function(ValidationError value) validationError,
    required TResult Function(ForbiddenFailure value) forbidden,
    required TResult Function(LocalCacheError value) localCacheError,
    required TResult Function(UnknownError value) unknownError,
    required TResult Function(MultiStageError value) multiStageError,
  }) {
    return networkError(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ServerError value)? serverError,
    TResult? Function(NetworkError value)? networkError,
    TResult? Function(Unauthorized value)? unauthorized,
    TResult? Function(CacheError value)? cacheError,
    TResult? Function(UnexpectedError value)? unexpectedError,
    TResult? Function(CustomError value)? customError,
    TResult? Function(NotFoundFailure value)? notFound,
    TResult? Function(ConflictError value)? conflict,
    TResult? Function(ValidationError value)? validationError,
    TResult? Function(ForbiddenFailure value)? forbidden,
    TResult? Function(LocalCacheError value)? localCacheError,
    TResult? Function(UnknownError value)? unknownError,
    TResult? Function(MultiStageError value)? multiStageError,
  }) {
    return networkError?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ServerError value)? serverError,
    TResult Function(NetworkError value)? networkError,
    TResult Function(Unauthorized value)? unauthorized,
    TResult Function(CacheError value)? cacheError,
    TResult Function(UnexpectedError value)? unexpectedError,
    TResult Function(CustomError value)? customError,
    TResult Function(NotFoundFailure value)? notFound,
    TResult Function(ConflictError value)? conflict,
    TResult Function(ValidationError value)? validationError,
    TResult Function(ForbiddenFailure value)? forbidden,
    TResult Function(LocalCacheError value)? localCacheError,
    TResult Function(UnknownError value)? unknownError,
    TResult Function(MultiStageError value)? multiStageError,
    required TResult orElse(),
  }) {
    if (networkError != null) {
      return networkError(this);
    }
    return orElse();
  }
}

abstract class NetworkError implements Failure {
  const factory NetworkError({final String? message}) = _$NetworkErrorImpl;

  @override
  String? get message;

  /// Create a copy of Failure
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$NetworkErrorImplCopyWith<_$NetworkErrorImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$UnauthorizedImplCopyWith<$Res>
    implements $FailureCopyWith<$Res> {
  factory _$$UnauthorizedImplCopyWith(
          _$UnauthorizedImpl value, $Res Function(_$UnauthorizedImpl) then) =
      __$$UnauthorizedImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? message});
}

/// @nodoc
class __$$UnauthorizedImplCopyWithImpl<$Res>
    extends _$FailureCopyWithImpl<$Res, _$UnauthorizedImpl>
    implements _$$UnauthorizedImplCopyWith<$Res> {
  __$$UnauthorizedImplCopyWithImpl(
      _$UnauthorizedImpl _value, $Res Function(_$UnauthorizedImpl) _then)
      : super(_value, _then);

  /// Create a copy of Failure
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = freezed,
  }) {
    return _then(_$UnauthorizedImpl(
      message: freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$UnauthorizedImpl implements Unauthorized {
  const _$UnauthorizedImpl({this.message});

  @override
  final String? message;

  @override
  String toString() {
    return 'Failure.unauthorized(message: $message)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UnauthorizedImpl &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message);

  /// Create a copy of Failure
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$UnauthorizedImplCopyWith<_$UnauthorizedImpl> get copyWith =>
      __$$UnauthorizedImplCopyWithImpl<_$UnauthorizedImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String? message, String? errorCode,
            List<ErrorDetail>? details, int? statusCode)
        serverError,
    required TResult Function(String? message) networkError,
    required TResult Function(String? message) unauthorized,
    required TResult Function(String? message) cacheError,
    required TResult Function(String? message) unexpectedError,
    required TResult Function(String message) customError,
    required TResult Function(String? message) notFound,
    required TResult Function(String? message, String? errorCode) conflict,
    required TResult Function(
            String? message, String? errorCode, List<ErrorDetail>? details)
        validationError,
    required TResult Function(String? message) forbidden,
    required TResult Function(String? message) localCacheError,
    required TResult Function(
            String? message, Object? error, StackTrace? stackTrace)
        unknownError,
    required TResult Function(String? message, Failure originalFailure)
        multiStageError,
  }) {
    return unauthorized(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String? message, String? errorCode,
            List<ErrorDetail>? details, int? statusCode)?
        serverError,
    TResult? Function(String? message)? networkError,
    TResult? Function(String? message)? unauthorized,
    TResult? Function(String? message)? cacheError,
    TResult? Function(String? message)? unexpectedError,
    TResult? Function(String message)? customError,
    TResult? Function(String? message)? notFound,
    TResult? Function(String? message, String? errorCode)? conflict,
    TResult? Function(
            String? message, String? errorCode, List<ErrorDetail>? details)?
        validationError,
    TResult? Function(String? message)? forbidden,
    TResult? Function(String? message)? localCacheError,
    TResult? Function(String? message, Object? error, StackTrace? stackTrace)?
        unknownError,
    TResult? Function(String? message, Failure originalFailure)?
        multiStageError,
  }) {
    return unauthorized?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String? message, String? errorCode,
            List<ErrorDetail>? details, int? statusCode)?
        serverError,
    TResult Function(String? message)? networkError,
    TResult Function(String? message)? unauthorized,
    TResult Function(String? message)? cacheError,
    TResult Function(String? message)? unexpectedError,
    TResult Function(String message)? customError,
    TResult Function(String? message)? notFound,
    TResult Function(String? message, String? errorCode)? conflict,
    TResult Function(
            String? message, String? errorCode, List<ErrorDetail>? details)?
        validationError,
    TResult Function(String? message)? forbidden,
    TResult Function(String? message)? localCacheError,
    TResult Function(String? message, Object? error, StackTrace? stackTrace)?
        unknownError,
    TResult Function(String? message, Failure originalFailure)? multiStageError,
    required TResult orElse(),
  }) {
    if (unauthorized != null) {
      return unauthorized(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ServerError value) serverError,
    required TResult Function(NetworkError value) networkError,
    required TResult Function(Unauthorized value) unauthorized,
    required TResult Function(CacheError value) cacheError,
    required TResult Function(UnexpectedError value) unexpectedError,
    required TResult Function(CustomError value) customError,
    required TResult Function(NotFoundFailure value) notFound,
    required TResult Function(ConflictError value) conflict,
    required TResult Function(ValidationError value) validationError,
    required TResult Function(ForbiddenFailure value) forbidden,
    required TResult Function(LocalCacheError value) localCacheError,
    required TResult Function(UnknownError value) unknownError,
    required TResult Function(MultiStageError value) multiStageError,
  }) {
    return unauthorized(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ServerError value)? serverError,
    TResult? Function(NetworkError value)? networkError,
    TResult? Function(Unauthorized value)? unauthorized,
    TResult? Function(CacheError value)? cacheError,
    TResult? Function(UnexpectedError value)? unexpectedError,
    TResult? Function(CustomError value)? customError,
    TResult? Function(NotFoundFailure value)? notFound,
    TResult? Function(ConflictError value)? conflict,
    TResult? Function(ValidationError value)? validationError,
    TResult? Function(ForbiddenFailure value)? forbidden,
    TResult? Function(LocalCacheError value)? localCacheError,
    TResult? Function(UnknownError value)? unknownError,
    TResult? Function(MultiStageError value)? multiStageError,
  }) {
    return unauthorized?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ServerError value)? serverError,
    TResult Function(NetworkError value)? networkError,
    TResult Function(Unauthorized value)? unauthorized,
    TResult Function(CacheError value)? cacheError,
    TResult Function(UnexpectedError value)? unexpectedError,
    TResult Function(CustomError value)? customError,
    TResult Function(NotFoundFailure value)? notFound,
    TResult Function(ConflictError value)? conflict,
    TResult Function(ValidationError value)? validationError,
    TResult Function(ForbiddenFailure value)? forbidden,
    TResult Function(LocalCacheError value)? localCacheError,
    TResult Function(UnknownError value)? unknownError,
    TResult Function(MultiStageError value)? multiStageError,
    required TResult orElse(),
  }) {
    if (unauthorized != null) {
      return unauthorized(this);
    }
    return orElse();
  }
}

abstract class Unauthorized implements Failure {
  const factory Unauthorized({final String? message}) = _$UnauthorizedImpl;

  @override
  String? get message;

  /// Create a copy of Failure
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$UnauthorizedImplCopyWith<_$UnauthorizedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$CacheErrorImplCopyWith<$Res>
    implements $FailureCopyWith<$Res> {
  factory _$$CacheErrorImplCopyWith(
          _$CacheErrorImpl value, $Res Function(_$CacheErrorImpl) then) =
      __$$CacheErrorImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? message});
}

/// @nodoc
class __$$CacheErrorImplCopyWithImpl<$Res>
    extends _$FailureCopyWithImpl<$Res, _$CacheErrorImpl>
    implements _$$CacheErrorImplCopyWith<$Res> {
  __$$CacheErrorImplCopyWithImpl(
      _$CacheErrorImpl _value, $Res Function(_$CacheErrorImpl) _then)
      : super(_value, _then);

  /// Create a copy of Failure
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = freezed,
  }) {
    return _then(_$CacheErrorImpl(
      message: freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$CacheErrorImpl implements CacheError {
  const _$CacheErrorImpl({this.message});

  @override
  final String? message;

  @override
  String toString() {
    return 'Failure.cacheError(message: $message)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CacheErrorImpl &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message);

  /// Create a copy of Failure
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$CacheErrorImplCopyWith<_$CacheErrorImpl> get copyWith =>
      __$$CacheErrorImplCopyWithImpl<_$CacheErrorImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String? message, String? errorCode,
            List<ErrorDetail>? details, int? statusCode)
        serverError,
    required TResult Function(String? message) networkError,
    required TResult Function(String? message) unauthorized,
    required TResult Function(String? message) cacheError,
    required TResult Function(String? message) unexpectedError,
    required TResult Function(String message) customError,
    required TResult Function(String? message) notFound,
    required TResult Function(String? message, String? errorCode) conflict,
    required TResult Function(
            String? message, String? errorCode, List<ErrorDetail>? details)
        validationError,
    required TResult Function(String? message) forbidden,
    required TResult Function(String? message) localCacheError,
    required TResult Function(
            String? message, Object? error, StackTrace? stackTrace)
        unknownError,
    required TResult Function(String? message, Failure originalFailure)
        multiStageError,
  }) {
    return cacheError(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String? message, String? errorCode,
            List<ErrorDetail>? details, int? statusCode)?
        serverError,
    TResult? Function(String? message)? networkError,
    TResult? Function(String? message)? unauthorized,
    TResult? Function(String? message)? cacheError,
    TResult? Function(String? message)? unexpectedError,
    TResult? Function(String message)? customError,
    TResult? Function(String? message)? notFound,
    TResult? Function(String? message, String? errorCode)? conflict,
    TResult? Function(
            String? message, String? errorCode, List<ErrorDetail>? details)?
        validationError,
    TResult? Function(String? message)? forbidden,
    TResult? Function(String? message)? localCacheError,
    TResult? Function(String? message, Object? error, StackTrace? stackTrace)?
        unknownError,
    TResult? Function(String? message, Failure originalFailure)?
        multiStageError,
  }) {
    return cacheError?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String? message, String? errorCode,
            List<ErrorDetail>? details, int? statusCode)?
        serverError,
    TResult Function(String? message)? networkError,
    TResult Function(String? message)? unauthorized,
    TResult Function(String? message)? cacheError,
    TResult Function(String? message)? unexpectedError,
    TResult Function(String message)? customError,
    TResult Function(String? message)? notFound,
    TResult Function(String? message, String? errorCode)? conflict,
    TResult Function(
            String? message, String? errorCode, List<ErrorDetail>? details)?
        validationError,
    TResult Function(String? message)? forbidden,
    TResult Function(String? message)? localCacheError,
    TResult Function(String? message, Object? error, StackTrace? stackTrace)?
        unknownError,
    TResult Function(String? message, Failure originalFailure)? multiStageError,
    required TResult orElse(),
  }) {
    if (cacheError != null) {
      return cacheError(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ServerError value) serverError,
    required TResult Function(NetworkError value) networkError,
    required TResult Function(Unauthorized value) unauthorized,
    required TResult Function(CacheError value) cacheError,
    required TResult Function(UnexpectedError value) unexpectedError,
    required TResult Function(CustomError value) customError,
    required TResult Function(NotFoundFailure value) notFound,
    required TResult Function(ConflictError value) conflict,
    required TResult Function(ValidationError value) validationError,
    required TResult Function(ForbiddenFailure value) forbidden,
    required TResult Function(LocalCacheError value) localCacheError,
    required TResult Function(UnknownError value) unknownError,
    required TResult Function(MultiStageError value) multiStageError,
  }) {
    return cacheError(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ServerError value)? serverError,
    TResult? Function(NetworkError value)? networkError,
    TResult? Function(Unauthorized value)? unauthorized,
    TResult? Function(CacheError value)? cacheError,
    TResult? Function(UnexpectedError value)? unexpectedError,
    TResult? Function(CustomError value)? customError,
    TResult? Function(NotFoundFailure value)? notFound,
    TResult? Function(ConflictError value)? conflict,
    TResult? Function(ValidationError value)? validationError,
    TResult? Function(ForbiddenFailure value)? forbidden,
    TResult? Function(LocalCacheError value)? localCacheError,
    TResult? Function(UnknownError value)? unknownError,
    TResult? Function(MultiStageError value)? multiStageError,
  }) {
    return cacheError?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ServerError value)? serverError,
    TResult Function(NetworkError value)? networkError,
    TResult Function(Unauthorized value)? unauthorized,
    TResult Function(CacheError value)? cacheError,
    TResult Function(UnexpectedError value)? unexpectedError,
    TResult Function(CustomError value)? customError,
    TResult Function(NotFoundFailure value)? notFound,
    TResult Function(ConflictError value)? conflict,
    TResult Function(ValidationError value)? validationError,
    TResult Function(ForbiddenFailure value)? forbidden,
    TResult Function(LocalCacheError value)? localCacheError,
    TResult Function(UnknownError value)? unknownError,
    TResult Function(MultiStageError value)? multiStageError,
    required TResult orElse(),
  }) {
    if (cacheError != null) {
      return cacheError(this);
    }
    return orElse();
  }
}

abstract class CacheError implements Failure {
  const factory CacheError({final String? message}) = _$CacheErrorImpl;

  @override
  String? get message;

  /// Create a copy of Failure
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CacheErrorImplCopyWith<_$CacheErrorImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$UnexpectedErrorImplCopyWith<$Res>
    implements $FailureCopyWith<$Res> {
  factory _$$UnexpectedErrorImplCopyWith(_$UnexpectedErrorImpl value,
          $Res Function(_$UnexpectedErrorImpl) then) =
      __$$UnexpectedErrorImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? message});
}

/// @nodoc
class __$$UnexpectedErrorImplCopyWithImpl<$Res>
    extends _$FailureCopyWithImpl<$Res, _$UnexpectedErrorImpl>
    implements _$$UnexpectedErrorImplCopyWith<$Res> {
  __$$UnexpectedErrorImplCopyWithImpl(
      _$UnexpectedErrorImpl _value, $Res Function(_$UnexpectedErrorImpl) _then)
      : super(_value, _then);

  /// Create a copy of Failure
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = freezed,
  }) {
    return _then(_$UnexpectedErrorImpl(
      message: freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$UnexpectedErrorImpl implements UnexpectedError {
  const _$UnexpectedErrorImpl({this.message});

  @override
  final String? message;

  @override
  String toString() {
    return 'Failure.unexpectedError(message: $message)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UnexpectedErrorImpl &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message);

  /// Create a copy of Failure
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$UnexpectedErrorImplCopyWith<_$UnexpectedErrorImpl> get copyWith =>
      __$$UnexpectedErrorImplCopyWithImpl<_$UnexpectedErrorImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String? message, String? errorCode,
            List<ErrorDetail>? details, int? statusCode)
        serverError,
    required TResult Function(String? message) networkError,
    required TResult Function(String? message) unauthorized,
    required TResult Function(String? message) cacheError,
    required TResult Function(String? message) unexpectedError,
    required TResult Function(String message) customError,
    required TResult Function(String? message) notFound,
    required TResult Function(String? message, String? errorCode) conflict,
    required TResult Function(
            String? message, String? errorCode, List<ErrorDetail>? details)
        validationError,
    required TResult Function(String? message) forbidden,
    required TResult Function(String? message) localCacheError,
    required TResult Function(
            String? message, Object? error, StackTrace? stackTrace)
        unknownError,
    required TResult Function(String? message, Failure originalFailure)
        multiStageError,
  }) {
    return unexpectedError(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String? message, String? errorCode,
            List<ErrorDetail>? details, int? statusCode)?
        serverError,
    TResult? Function(String? message)? networkError,
    TResult? Function(String? message)? unauthorized,
    TResult? Function(String? message)? cacheError,
    TResult? Function(String? message)? unexpectedError,
    TResult? Function(String message)? customError,
    TResult? Function(String? message)? notFound,
    TResult? Function(String? message, String? errorCode)? conflict,
    TResult? Function(
            String? message, String? errorCode, List<ErrorDetail>? details)?
        validationError,
    TResult? Function(String? message)? forbidden,
    TResult? Function(String? message)? localCacheError,
    TResult? Function(String? message, Object? error, StackTrace? stackTrace)?
        unknownError,
    TResult? Function(String? message, Failure originalFailure)?
        multiStageError,
  }) {
    return unexpectedError?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String? message, String? errorCode,
            List<ErrorDetail>? details, int? statusCode)?
        serverError,
    TResult Function(String? message)? networkError,
    TResult Function(String? message)? unauthorized,
    TResult Function(String? message)? cacheError,
    TResult Function(String? message)? unexpectedError,
    TResult Function(String message)? customError,
    TResult Function(String? message)? notFound,
    TResult Function(String? message, String? errorCode)? conflict,
    TResult Function(
            String? message, String? errorCode, List<ErrorDetail>? details)?
        validationError,
    TResult Function(String? message)? forbidden,
    TResult Function(String? message)? localCacheError,
    TResult Function(String? message, Object? error, StackTrace? stackTrace)?
        unknownError,
    TResult Function(String? message, Failure originalFailure)? multiStageError,
    required TResult orElse(),
  }) {
    if (unexpectedError != null) {
      return unexpectedError(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ServerError value) serverError,
    required TResult Function(NetworkError value) networkError,
    required TResult Function(Unauthorized value) unauthorized,
    required TResult Function(CacheError value) cacheError,
    required TResult Function(UnexpectedError value) unexpectedError,
    required TResult Function(CustomError value) customError,
    required TResult Function(NotFoundFailure value) notFound,
    required TResult Function(ConflictError value) conflict,
    required TResult Function(ValidationError value) validationError,
    required TResult Function(ForbiddenFailure value) forbidden,
    required TResult Function(LocalCacheError value) localCacheError,
    required TResult Function(UnknownError value) unknownError,
    required TResult Function(MultiStageError value) multiStageError,
  }) {
    return unexpectedError(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ServerError value)? serverError,
    TResult? Function(NetworkError value)? networkError,
    TResult? Function(Unauthorized value)? unauthorized,
    TResult? Function(CacheError value)? cacheError,
    TResult? Function(UnexpectedError value)? unexpectedError,
    TResult? Function(CustomError value)? customError,
    TResult? Function(NotFoundFailure value)? notFound,
    TResult? Function(ConflictError value)? conflict,
    TResult? Function(ValidationError value)? validationError,
    TResult? Function(ForbiddenFailure value)? forbidden,
    TResult? Function(LocalCacheError value)? localCacheError,
    TResult? Function(UnknownError value)? unknownError,
    TResult? Function(MultiStageError value)? multiStageError,
  }) {
    return unexpectedError?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ServerError value)? serverError,
    TResult Function(NetworkError value)? networkError,
    TResult Function(Unauthorized value)? unauthorized,
    TResult Function(CacheError value)? cacheError,
    TResult Function(UnexpectedError value)? unexpectedError,
    TResult Function(CustomError value)? customError,
    TResult Function(NotFoundFailure value)? notFound,
    TResult Function(ConflictError value)? conflict,
    TResult Function(ValidationError value)? validationError,
    TResult Function(ForbiddenFailure value)? forbidden,
    TResult Function(LocalCacheError value)? localCacheError,
    TResult Function(UnknownError value)? unknownError,
    TResult Function(MultiStageError value)? multiStageError,
    required TResult orElse(),
  }) {
    if (unexpectedError != null) {
      return unexpectedError(this);
    }
    return orElse();
  }
}

abstract class UnexpectedError implements Failure {
  const factory UnexpectedError({final String? message}) =
      _$UnexpectedErrorImpl;

  @override
  String? get message;

  /// Create a copy of Failure
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$UnexpectedErrorImplCopyWith<_$UnexpectedErrorImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$CustomErrorImplCopyWith<$Res>
    implements $FailureCopyWith<$Res> {
  factory _$$CustomErrorImplCopyWith(
          _$CustomErrorImpl value, $Res Function(_$CustomErrorImpl) then) =
      __$$CustomErrorImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String message});
}

/// @nodoc
class __$$CustomErrorImplCopyWithImpl<$Res>
    extends _$FailureCopyWithImpl<$Res, _$CustomErrorImpl>
    implements _$$CustomErrorImplCopyWith<$Res> {
  __$$CustomErrorImplCopyWithImpl(
      _$CustomErrorImpl _value, $Res Function(_$CustomErrorImpl) _then)
      : super(_value, _then);

  /// Create a copy of Failure
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
  }) {
    return _then(_$CustomErrorImpl(
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$CustomErrorImpl implements CustomError {
  const _$CustomErrorImpl({required this.message});

  @override
  final String message;

  @override
  String toString() {
    return 'Failure.customError(message: $message)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CustomErrorImpl &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message);

  /// Create a copy of Failure
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$CustomErrorImplCopyWith<_$CustomErrorImpl> get copyWith =>
      __$$CustomErrorImplCopyWithImpl<_$CustomErrorImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String? message, String? errorCode,
            List<ErrorDetail>? details, int? statusCode)
        serverError,
    required TResult Function(String? message) networkError,
    required TResult Function(String? message) unauthorized,
    required TResult Function(String? message) cacheError,
    required TResult Function(String? message) unexpectedError,
    required TResult Function(String message) customError,
    required TResult Function(String? message) notFound,
    required TResult Function(String? message, String? errorCode) conflict,
    required TResult Function(
            String? message, String? errorCode, List<ErrorDetail>? details)
        validationError,
    required TResult Function(String? message) forbidden,
    required TResult Function(String? message) localCacheError,
    required TResult Function(
            String? message, Object? error, StackTrace? stackTrace)
        unknownError,
    required TResult Function(String? message, Failure originalFailure)
        multiStageError,
  }) {
    return customError(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String? message, String? errorCode,
            List<ErrorDetail>? details, int? statusCode)?
        serverError,
    TResult? Function(String? message)? networkError,
    TResult? Function(String? message)? unauthorized,
    TResult? Function(String? message)? cacheError,
    TResult? Function(String? message)? unexpectedError,
    TResult? Function(String message)? customError,
    TResult? Function(String? message)? notFound,
    TResult? Function(String? message, String? errorCode)? conflict,
    TResult? Function(
            String? message, String? errorCode, List<ErrorDetail>? details)?
        validationError,
    TResult? Function(String? message)? forbidden,
    TResult? Function(String? message)? localCacheError,
    TResult? Function(String? message, Object? error, StackTrace? stackTrace)?
        unknownError,
    TResult? Function(String? message, Failure originalFailure)?
        multiStageError,
  }) {
    return customError?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String? message, String? errorCode,
            List<ErrorDetail>? details, int? statusCode)?
        serverError,
    TResult Function(String? message)? networkError,
    TResult Function(String? message)? unauthorized,
    TResult Function(String? message)? cacheError,
    TResult Function(String? message)? unexpectedError,
    TResult Function(String message)? customError,
    TResult Function(String? message)? notFound,
    TResult Function(String? message, String? errorCode)? conflict,
    TResult Function(
            String? message, String? errorCode, List<ErrorDetail>? details)?
        validationError,
    TResult Function(String? message)? forbidden,
    TResult Function(String? message)? localCacheError,
    TResult Function(String? message, Object? error, StackTrace? stackTrace)?
        unknownError,
    TResult Function(String? message, Failure originalFailure)? multiStageError,
    required TResult orElse(),
  }) {
    if (customError != null) {
      return customError(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ServerError value) serverError,
    required TResult Function(NetworkError value) networkError,
    required TResult Function(Unauthorized value) unauthorized,
    required TResult Function(CacheError value) cacheError,
    required TResult Function(UnexpectedError value) unexpectedError,
    required TResult Function(CustomError value) customError,
    required TResult Function(NotFoundFailure value) notFound,
    required TResult Function(ConflictError value) conflict,
    required TResult Function(ValidationError value) validationError,
    required TResult Function(ForbiddenFailure value) forbidden,
    required TResult Function(LocalCacheError value) localCacheError,
    required TResult Function(UnknownError value) unknownError,
    required TResult Function(MultiStageError value) multiStageError,
  }) {
    return customError(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ServerError value)? serverError,
    TResult? Function(NetworkError value)? networkError,
    TResult? Function(Unauthorized value)? unauthorized,
    TResult? Function(CacheError value)? cacheError,
    TResult? Function(UnexpectedError value)? unexpectedError,
    TResult? Function(CustomError value)? customError,
    TResult? Function(NotFoundFailure value)? notFound,
    TResult? Function(ConflictError value)? conflict,
    TResult? Function(ValidationError value)? validationError,
    TResult? Function(ForbiddenFailure value)? forbidden,
    TResult? Function(LocalCacheError value)? localCacheError,
    TResult? Function(UnknownError value)? unknownError,
    TResult? Function(MultiStageError value)? multiStageError,
  }) {
    return customError?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ServerError value)? serverError,
    TResult Function(NetworkError value)? networkError,
    TResult Function(Unauthorized value)? unauthorized,
    TResult Function(CacheError value)? cacheError,
    TResult Function(UnexpectedError value)? unexpectedError,
    TResult Function(CustomError value)? customError,
    TResult Function(NotFoundFailure value)? notFound,
    TResult Function(ConflictError value)? conflict,
    TResult Function(ValidationError value)? validationError,
    TResult Function(ForbiddenFailure value)? forbidden,
    TResult Function(LocalCacheError value)? localCacheError,
    TResult Function(UnknownError value)? unknownError,
    TResult Function(MultiStageError value)? multiStageError,
    required TResult orElse(),
  }) {
    if (customError != null) {
      return customError(this);
    }
    return orElse();
  }
}

abstract class CustomError implements Failure {
  const factory CustomError({required final String message}) =
      _$CustomErrorImpl;

  @override
  String get message;

  /// Create a copy of Failure
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CustomErrorImplCopyWith<_$CustomErrorImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$NotFoundFailureImplCopyWith<$Res>
    implements $FailureCopyWith<$Res> {
  factory _$$NotFoundFailureImplCopyWith(_$NotFoundFailureImpl value,
          $Res Function(_$NotFoundFailureImpl) then) =
      __$$NotFoundFailureImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? message});
}

/// @nodoc
class __$$NotFoundFailureImplCopyWithImpl<$Res>
    extends _$FailureCopyWithImpl<$Res, _$NotFoundFailureImpl>
    implements _$$NotFoundFailureImplCopyWith<$Res> {
  __$$NotFoundFailureImplCopyWithImpl(
      _$NotFoundFailureImpl _value, $Res Function(_$NotFoundFailureImpl) _then)
      : super(_value, _then);

  /// Create a copy of Failure
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = freezed,
  }) {
    return _then(_$NotFoundFailureImpl(
      message: freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$NotFoundFailureImpl implements NotFoundFailure {
  const _$NotFoundFailureImpl({this.message});

  @override
  final String? message;

  @override
  String toString() {
    return 'Failure.notFound(message: $message)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$NotFoundFailureImpl &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message);

  /// Create a copy of Failure
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$NotFoundFailureImplCopyWith<_$NotFoundFailureImpl> get copyWith =>
      __$$NotFoundFailureImplCopyWithImpl<_$NotFoundFailureImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String? message, String? errorCode,
            List<ErrorDetail>? details, int? statusCode)
        serverError,
    required TResult Function(String? message) networkError,
    required TResult Function(String? message) unauthorized,
    required TResult Function(String? message) cacheError,
    required TResult Function(String? message) unexpectedError,
    required TResult Function(String message) customError,
    required TResult Function(String? message) notFound,
    required TResult Function(String? message, String? errorCode) conflict,
    required TResult Function(
            String? message, String? errorCode, List<ErrorDetail>? details)
        validationError,
    required TResult Function(String? message) forbidden,
    required TResult Function(String? message) localCacheError,
    required TResult Function(
            String? message, Object? error, StackTrace? stackTrace)
        unknownError,
    required TResult Function(String? message, Failure originalFailure)
        multiStageError,
  }) {
    return notFound(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String? message, String? errorCode,
            List<ErrorDetail>? details, int? statusCode)?
        serverError,
    TResult? Function(String? message)? networkError,
    TResult? Function(String? message)? unauthorized,
    TResult? Function(String? message)? cacheError,
    TResult? Function(String? message)? unexpectedError,
    TResult? Function(String message)? customError,
    TResult? Function(String? message)? notFound,
    TResult? Function(String? message, String? errorCode)? conflict,
    TResult? Function(
            String? message, String? errorCode, List<ErrorDetail>? details)?
        validationError,
    TResult? Function(String? message)? forbidden,
    TResult? Function(String? message)? localCacheError,
    TResult? Function(String? message, Object? error, StackTrace? stackTrace)?
        unknownError,
    TResult? Function(String? message, Failure originalFailure)?
        multiStageError,
  }) {
    return notFound?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String? message, String? errorCode,
            List<ErrorDetail>? details, int? statusCode)?
        serverError,
    TResult Function(String? message)? networkError,
    TResult Function(String? message)? unauthorized,
    TResult Function(String? message)? cacheError,
    TResult Function(String? message)? unexpectedError,
    TResult Function(String message)? customError,
    TResult Function(String? message)? notFound,
    TResult Function(String? message, String? errorCode)? conflict,
    TResult Function(
            String? message, String? errorCode, List<ErrorDetail>? details)?
        validationError,
    TResult Function(String? message)? forbidden,
    TResult Function(String? message)? localCacheError,
    TResult Function(String? message, Object? error, StackTrace? stackTrace)?
        unknownError,
    TResult Function(String? message, Failure originalFailure)? multiStageError,
    required TResult orElse(),
  }) {
    if (notFound != null) {
      return notFound(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ServerError value) serverError,
    required TResult Function(NetworkError value) networkError,
    required TResult Function(Unauthorized value) unauthorized,
    required TResult Function(CacheError value) cacheError,
    required TResult Function(UnexpectedError value) unexpectedError,
    required TResult Function(CustomError value) customError,
    required TResult Function(NotFoundFailure value) notFound,
    required TResult Function(ConflictError value) conflict,
    required TResult Function(ValidationError value) validationError,
    required TResult Function(ForbiddenFailure value) forbidden,
    required TResult Function(LocalCacheError value) localCacheError,
    required TResult Function(UnknownError value) unknownError,
    required TResult Function(MultiStageError value) multiStageError,
  }) {
    return notFound(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ServerError value)? serverError,
    TResult? Function(NetworkError value)? networkError,
    TResult? Function(Unauthorized value)? unauthorized,
    TResult? Function(CacheError value)? cacheError,
    TResult? Function(UnexpectedError value)? unexpectedError,
    TResult? Function(CustomError value)? customError,
    TResult? Function(NotFoundFailure value)? notFound,
    TResult? Function(ConflictError value)? conflict,
    TResult? Function(ValidationError value)? validationError,
    TResult? Function(ForbiddenFailure value)? forbidden,
    TResult? Function(LocalCacheError value)? localCacheError,
    TResult? Function(UnknownError value)? unknownError,
    TResult? Function(MultiStageError value)? multiStageError,
  }) {
    return notFound?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ServerError value)? serverError,
    TResult Function(NetworkError value)? networkError,
    TResult Function(Unauthorized value)? unauthorized,
    TResult Function(CacheError value)? cacheError,
    TResult Function(UnexpectedError value)? unexpectedError,
    TResult Function(CustomError value)? customError,
    TResult Function(NotFoundFailure value)? notFound,
    TResult Function(ConflictError value)? conflict,
    TResult Function(ValidationError value)? validationError,
    TResult Function(ForbiddenFailure value)? forbidden,
    TResult Function(LocalCacheError value)? localCacheError,
    TResult Function(UnknownError value)? unknownError,
    TResult Function(MultiStageError value)? multiStageError,
    required TResult orElse(),
  }) {
    if (notFound != null) {
      return notFound(this);
    }
    return orElse();
  }
}

abstract class NotFoundFailure implements Failure {
  const factory NotFoundFailure({final String? message}) =
      _$NotFoundFailureImpl;

  @override
  String? get message;

  /// Create a copy of Failure
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$NotFoundFailureImplCopyWith<_$NotFoundFailureImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ConflictErrorImplCopyWith<$Res>
    implements $FailureCopyWith<$Res> {
  factory _$$ConflictErrorImplCopyWith(
          _$ConflictErrorImpl value, $Res Function(_$ConflictErrorImpl) then) =
      __$$ConflictErrorImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? message, String? errorCode});
}

/// @nodoc
class __$$ConflictErrorImplCopyWithImpl<$Res>
    extends _$FailureCopyWithImpl<$Res, _$ConflictErrorImpl>
    implements _$$ConflictErrorImplCopyWith<$Res> {
  __$$ConflictErrorImplCopyWithImpl(
      _$ConflictErrorImpl _value, $Res Function(_$ConflictErrorImpl) _then)
      : super(_value, _then);

  /// Create a copy of Failure
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = freezed,
    Object? errorCode = freezed,
  }) {
    return _then(_$ConflictErrorImpl(
      message: freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
      errorCode: freezed == errorCode
          ? _value.errorCode
          : errorCode // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$ConflictErrorImpl implements ConflictError {
  const _$ConflictErrorImpl({this.message, this.errorCode});

  @override
  final String? message;
  @override
  final String? errorCode;

  @override
  String toString() {
    return 'Failure.conflict(message: $message, errorCode: $errorCode)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ConflictErrorImpl &&
            (identical(other.message, message) || other.message == message) &&
            (identical(other.errorCode, errorCode) ||
                other.errorCode == errorCode));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message, errorCode);

  /// Create a copy of Failure
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ConflictErrorImplCopyWith<_$ConflictErrorImpl> get copyWith =>
      __$$ConflictErrorImplCopyWithImpl<_$ConflictErrorImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String? message, String? errorCode,
            List<ErrorDetail>? details, int? statusCode)
        serverError,
    required TResult Function(String? message) networkError,
    required TResult Function(String? message) unauthorized,
    required TResult Function(String? message) cacheError,
    required TResult Function(String? message) unexpectedError,
    required TResult Function(String message) customError,
    required TResult Function(String? message) notFound,
    required TResult Function(String? message, String? errorCode) conflict,
    required TResult Function(
            String? message, String? errorCode, List<ErrorDetail>? details)
        validationError,
    required TResult Function(String? message) forbidden,
    required TResult Function(String? message) localCacheError,
    required TResult Function(
            String? message, Object? error, StackTrace? stackTrace)
        unknownError,
    required TResult Function(String? message, Failure originalFailure)
        multiStageError,
  }) {
    return conflict(message, errorCode);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String? message, String? errorCode,
            List<ErrorDetail>? details, int? statusCode)?
        serverError,
    TResult? Function(String? message)? networkError,
    TResult? Function(String? message)? unauthorized,
    TResult? Function(String? message)? cacheError,
    TResult? Function(String? message)? unexpectedError,
    TResult? Function(String message)? customError,
    TResult? Function(String? message)? notFound,
    TResult? Function(String? message, String? errorCode)? conflict,
    TResult? Function(
            String? message, String? errorCode, List<ErrorDetail>? details)?
        validationError,
    TResult? Function(String? message)? forbidden,
    TResult? Function(String? message)? localCacheError,
    TResult? Function(String? message, Object? error, StackTrace? stackTrace)?
        unknownError,
    TResult? Function(String? message, Failure originalFailure)?
        multiStageError,
  }) {
    return conflict?.call(message, errorCode);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String? message, String? errorCode,
            List<ErrorDetail>? details, int? statusCode)?
        serverError,
    TResult Function(String? message)? networkError,
    TResult Function(String? message)? unauthorized,
    TResult Function(String? message)? cacheError,
    TResult Function(String? message)? unexpectedError,
    TResult Function(String message)? customError,
    TResult Function(String? message)? notFound,
    TResult Function(String? message, String? errorCode)? conflict,
    TResult Function(
            String? message, String? errorCode, List<ErrorDetail>? details)?
        validationError,
    TResult Function(String? message)? forbidden,
    TResult Function(String? message)? localCacheError,
    TResult Function(String? message, Object? error, StackTrace? stackTrace)?
        unknownError,
    TResult Function(String? message, Failure originalFailure)? multiStageError,
    required TResult orElse(),
  }) {
    if (conflict != null) {
      return conflict(message, errorCode);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ServerError value) serverError,
    required TResult Function(NetworkError value) networkError,
    required TResult Function(Unauthorized value) unauthorized,
    required TResult Function(CacheError value) cacheError,
    required TResult Function(UnexpectedError value) unexpectedError,
    required TResult Function(CustomError value) customError,
    required TResult Function(NotFoundFailure value) notFound,
    required TResult Function(ConflictError value) conflict,
    required TResult Function(ValidationError value) validationError,
    required TResult Function(ForbiddenFailure value) forbidden,
    required TResult Function(LocalCacheError value) localCacheError,
    required TResult Function(UnknownError value) unknownError,
    required TResult Function(MultiStageError value) multiStageError,
  }) {
    return conflict(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ServerError value)? serverError,
    TResult? Function(NetworkError value)? networkError,
    TResult? Function(Unauthorized value)? unauthorized,
    TResult? Function(CacheError value)? cacheError,
    TResult? Function(UnexpectedError value)? unexpectedError,
    TResult? Function(CustomError value)? customError,
    TResult? Function(NotFoundFailure value)? notFound,
    TResult? Function(ConflictError value)? conflict,
    TResult? Function(ValidationError value)? validationError,
    TResult? Function(ForbiddenFailure value)? forbidden,
    TResult? Function(LocalCacheError value)? localCacheError,
    TResult? Function(UnknownError value)? unknownError,
    TResult? Function(MultiStageError value)? multiStageError,
  }) {
    return conflict?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ServerError value)? serverError,
    TResult Function(NetworkError value)? networkError,
    TResult Function(Unauthorized value)? unauthorized,
    TResult Function(CacheError value)? cacheError,
    TResult Function(UnexpectedError value)? unexpectedError,
    TResult Function(CustomError value)? customError,
    TResult Function(NotFoundFailure value)? notFound,
    TResult Function(ConflictError value)? conflict,
    TResult Function(ValidationError value)? validationError,
    TResult Function(ForbiddenFailure value)? forbidden,
    TResult Function(LocalCacheError value)? localCacheError,
    TResult Function(UnknownError value)? unknownError,
    TResult Function(MultiStageError value)? multiStageError,
    required TResult orElse(),
  }) {
    if (conflict != null) {
      return conflict(this);
    }
    return orElse();
  }
}

abstract class ConflictError implements Failure {
  const factory ConflictError(
      {final String? message, final String? errorCode}) = _$ConflictErrorImpl;

  @override
  String? get message;
  String? get errorCode;

  /// Create a copy of Failure
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ConflictErrorImplCopyWith<_$ConflictErrorImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ValidationErrorImplCopyWith<$Res>
    implements $FailureCopyWith<$Res> {
  factory _$$ValidationErrorImplCopyWith(_$ValidationErrorImpl value,
          $Res Function(_$ValidationErrorImpl) then) =
      __$$ValidationErrorImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? message, String? errorCode, List<ErrorDetail>? details});
}

/// @nodoc
class __$$ValidationErrorImplCopyWithImpl<$Res>
    extends _$FailureCopyWithImpl<$Res, _$ValidationErrorImpl>
    implements _$$ValidationErrorImplCopyWith<$Res> {
  __$$ValidationErrorImplCopyWithImpl(
      _$ValidationErrorImpl _value, $Res Function(_$ValidationErrorImpl) _then)
      : super(_value, _then);

  /// Create a copy of Failure
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = freezed,
    Object? errorCode = freezed,
    Object? details = freezed,
  }) {
    return _then(_$ValidationErrorImpl(
      message: freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
      errorCode: freezed == errorCode
          ? _value.errorCode
          : errorCode // ignore: cast_nullable_to_non_nullable
              as String?,
      details: freezed == details
          ? _value._details
          : details // ignore: cast_nullable_to_non_nullable
              as List<ErrorDetail>?,
    ));
  }
}

/// @nodoc

class _$ValidationErrorImpl implements ValidationError {
  const _$ValidationErrorImpl(
      {this.message, this.errorCode, final List<ErrorDetail>? details})
      : _details = details;

  @override
  final String? message;
  @override
  final String? errorCode;
  final List<ErrorDetail>? _details;
  @override
  List<ErrorDetail>? get details {
    final value = _details;
    if (value == null) return null;
    if (_details is EqualUnmodifiableListView) return _details;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'Failure.validationError(message: $message, errorCode: $errorCode, details: $details)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ValidationErrorImpl &&
            (identical(other.message, message) || other.message == message) &&
            (identical(other.errorCode, errorCode) ||
                other.errorCode == errorCode) &&
            const DeepCollectionEquality().equals(other._details, _details));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message, errorCode,
      const DeepCollectionEquality().hash(_details));

  /// Create a copy of Failure
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ValidationErrorImplCopyWith<_$ValidationErrorImpl> get copyWith =>
      __$$ValidationErrorImplCopyWithImpl<_$ValidationErrorImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String? message, String? errorCode,
            List<ErrorDetail>? details, int? statusCode)
        serverError,
    required TResult Function(String? message) networkError,
    required TResult Function(String? message) unauthorized,
    required TResult Function(String? message) cacheError,
    required TResult Function(String? message) unexpectedError,
    required TResult Function(String message) customError,
    required TResult Function(String? message) notFound,
    required TResult Function(String? message, String? errorCode) conflict,
    required TResult Function(
            String? message, String? errorCode, List<ErrorDetail>? details)
        validationError,
    required TResult Function(String? message) forbidden,
    required TResult Function(String? message) localCacheError,
    required TResult Function(
            String? message, Object? error, StackTrace? stackTrace)
        unknownError,
    required TResult Function(String? message, Failure originalFailure)
        multiStageError,
  }) {
    return validationError(message, errorCode, details);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String? message, String? errorCode,
            List<ErrorDetail>? details, int? statusCode)?
        serverError,
    TResult? Function(String? message)? networkError,
    TResult? Function(String? message)? unauthorized,
    TResult? Function(String? message)? cacheError,
    TResult? Function(String? message)? unexpectedError,
    TResult? Function(String message)? customError,
    TResult? Function(String? message)? notFound,
    TResult? Function(String? message, String? errorCode)? conflict,
    TResult? Function(
            String? message, String? errorCode, List<ErrorDetail>? details)?
        validationError,
    TResult? Function(String? message)? forbidden,
    TResult? Function(String? message)? localCacheError,
    TResult? Function(String? message, Object? error, StackTrace? stackTrace)?
        unknownError,
    TResult? Function(String? message, Failure originalFailure)?
        multiStageError,
  }) {
    return validationError?.call(message, errorCode, details);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String? message, String? errorCode,
            List<ErrorDetail>? details, int? statusCode)?
        serverError,
    TResult Function(String? message)? networkError,
    TResult Function(String? message)? unauthorized,
    TResult Function(String? message)? cacheError,
    TResult Function(String? message)? unexpectedError,
    TResult Function(String message)? customError,
    TResult Function(String? message)? notFound,
    TResult Function(String? message, String? errorCode)? conflict,
    TResult Function(
            String? message, String? errorCode, List<ErrorDetail>? details)?
        validationError,
    TResult Function(String? message)? forbidden,
    TResult Function(String? message)? localCacheError,
    TResult Function(String? message, Object? error, StackTrace? stackTrace)?
        unknownError,
    TResult Function(String? message, Failure originalFailure)? multiStageError,
    required TResult orElse(),
  }) {
    if (validationError != null) {
      return validationError(message, errorCode, details);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ServerError value) serverError,
    required TResult Function(NetworkError value) networkError,
    required TResult Function(Unauthorized value) unauthorized,
    required TResult Function(CacheError value) cacheError,
    required TResult Function(UnexpectedError value) unexpectedError,
    required TResult Function(CustomError value) customError,
    required TResult Function(NotFoundFailure value) notFound,
    required TResult Function(ConflictError value) conflict,
    required TResult Function(ValidationError value) validationError,
    required TResult Function(ForbiddenFailure value) forbidden,
    required TResult Function(LocalCacheError value) localCacheError,
    required TResult Function(UnknownError value) unknownError,
    required TResult Function(MultiStageError value) multiStageError,
  }) {
    return validationError(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ServerError value)? serverError,
    TResult? Function(NetworkError value)? networkError,
    TResult? Function(Unauthorized value)? unauthorized,
    TResult? Function(CacheError value)? cacheError,
    TResult? Function(UnexpectedError value)? unexpectedError,
    TResult? Function(CustomError value)? customError,
    TResult? Function(NotFoundFailure value)? notFound,
    TResult? Function(ConflictError value)? conflict,
    TResult? Function(ValidationError value)? validationError,
    TResult? Function(ForbiddenFailure value)? forbidden,
    TResult? Function(LocalCacheError value)? localCacheError,
    TResult? Function(UnknownError value)? unknownError,
    TResult? Function(MultiStageError value)? multiStageError,
  }) {
    return validationError?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ServerError value)? serverError,
    TResult Function(NetworkError value)? networkError,
    TResult Function(Unauthorized value)? unauthorized,
    TResult Function(CacheError value)? cacheError,
    TResult Function(UnexpectedError value)? unexpectedError,
    TResult Function(CustomError value)? customError,
    TResult Function(NotFoundFailure value)? notFound,
    TResult Function(ConflictError value)? conflict,
    TResult Function(ValidationError value)? validationError,
    TResult Function(ForbiddenFailure value)? forbidden,
    TResult Function(LocalCacheError value)? localCacheError,
    TResult Function(UnknownError value)? unknownError,
    TResult Function(MultiStageError value)? multiStageError,
    required TResult orElse(),
  }) {
    if (validationError != null) {
      return validationError(this);
    }
    return orElse();
  }
}

abstract class ValidationError implements Failure {
  const factory ValidationError(
      {final String? message,
      final String? errorCode,
      final List<ErrorDetail>? details}) = _$ValidationErrorImpl;

  @override
  String? get message;
  String? get errorCode;
  List<ErrorDetail>? get details;

  /// Create a copy of Failure
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ValidationErrorImplCopyWith<_$ValidationErrorImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ForbiddenFailureImplCopyWith<$Res>
    implements $FailureCopyWith<$Res> {
  factory _$$ForbiddenFailureImplCopyWith(_$ForbiddenFailureImpl value,
          $Res Function(_$ForbiddenFailureImpl) then) =
      __$$ForbiddenFailureImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? message});
}

/// @nodoc
class __$$ForbiddenFailureImplCopyWithImpl<$Res>
    extends _$FailureCopyWithImpl<$Res, _$ForbiddenFailureImpl>
    implements _$$ForbiddenFailureImplCopyWith<$Res> {
  __$$ForbiddenFailureImplCopyWithImpl(_$ForbiddenFailureImpl _value,
      $Res Function(_$ForbiddenFailureImpl) _then)
      : super(_value, _then);

  /// Create a copy of Failure
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = freezed,
  }) {
    return _then(_$ForbiddenFailureImpl(
      message: freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$ForbiddenFailureImpl implements ForbiddenFailure {
  const _$ForbiddenFailureImpl({this.message});

  @override
  final String? message;

  @override
  String toString() {
    return 'Failure.forbidden(message: $message)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ForbiddenFailureImpl &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message);

  /// Create a copy of Failure
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ForbiddenFailureImplCopyWith<_$ForbiddenFailureImpl> get copyWith =>
      __$$ForbiddenFailureImplCopyWithImpl<_$ForbiddenFailureImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String? message, String? errorCode,
            List<ErrorDetail>? details, int? statusCode)
        serverError,
    required TResult Function(String? message) networkError,
    required TResult Function(String? message) unauthorized,
    required TResult Function(String? message) cacheError,
    required TResult Function(String? message) unexpectedError,
    required TResult Function(String message) customError,
    required TResult Function(String? message) notFound,
    required TResult Function(String? message, String? errorCode) conflict,
    required TResult Function(
            String? message, String? errorCode, List<ErrorDetail>? details)
        validationError,
    required TResult Function(String? message) forbidden,
    required TResult Function(String? message) localCacheError,
    required TResult Function(
            String? message, Object? error, StackTrace? stackTrace)
        unknownError,
    required TResult Function(String? message, Failure originalFailure)
        multiStageError,
  }) {
    return forbidden(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String? message, String? errorCode,
            List<ErrorDetail>? details, int? statusCode)?
        serverError,
    TResult? Function(String? message)? networkError,
    TResult? Function(String? message)? unauthorized,
    TResult? Function(String? message)? cacheError,
    TResult? Function(String? message)? unexpectedError,
    TResult? Function(String message)? customError,
    TResult? Function(String? message)? notFound,
    TResult? Function(String? message, String? errorCode)? conflict,
    TResult? Function(
            String? message, String? errorCode, List<ErrorDetail>? details)?
        validationError,
    TResult? Function(String? message)? forbidden,
    TResult? Function(String? message)? localCacheError,
    TResult? Function(String? message, Object? error, StackTrace? stackTrace)?
        unknownError,
    TResult? Function(String? message, Failure originalFailure)?
        multiStageError,
  }) {
    return forbidden?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String? message, String? errorCode,
            List<ErrorDetail>? details, int? statusCode)?
        serverError,
    TResult Function(String? message)? networkError,
    TResult Function(String? message)? unauthorized,
    TResult Function(String? message)? cacheError,
    TResult Function(String? message)? unexpectedError,
    TResult Function(String message)? customError,
    TResult Function(String? message)? notFound,
    TResult Function(String? message, String? errorCode)? conflict,
    TResult Function(
            String? message, String? errorCode, List<ErrorDetail>? details)?
        validationError,
    TResult Function(String? message)? forbidden,
    TResult Function(String? message)? localCacheError,
    TResult Function(String? message, Object? error, StackTrace? stackTrace)?
        unknownError,
    TResult Function(String? message, Failure originalFailure)? multiStageError,
    required TResult orElse(),
  }) {
    if (forbidden != null) {
      return forbidden(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ServerError value) serverError,
    required TResult Function(NetworkError value) networkError,
    required TResult Function(Unauthorized value) unauthorized,
    required TResult Function(CacheError value) cacheError,
    required TResult Function(UnexpectedError value) unexpectedError,
    required TResult Function(CustomError value) customError,
    required TResult Function(NotFoundFailure value) notFound,
    required TResult Function(ConflictError value) conflict,
    required TResult Function(ValidationError value) validationError,
    required TResult Function(ForbiddenFailure value) forbidden,
    required TResult Function(LocalCacheError value) localCacheError,
    required TResult Function(UnknownError value) unknownError,
    required TResult Function(MultiStageError value) multiStageError,
  }) {
    return forbidden(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ServerError value)? serverError,
    TResult? Function(NetworkError value)? networkError,
    TResult? Function(Unauthorized value)? unauthorized,
    TResult? Function(CacheError value)? cacheError,
    TResult? Function(UnexpectedError value)? unexpectedError,
    TResult? Function(CustomError value)? customError,
    TResult? Function(NotFoundFailure value)? notFound,
    TResult? Function(ConflictError value)? conflict,
    TResult? Function(ValidationError value)? validationError,
    TResult? Function(ForbiddenFailure value)? forbidden,
    TResult? Function(LocalCacheError value)? localCacheError,
    TResult? Function(UnknownError value)? unknownError,
    TResult? Function(MultiStageError value)? multiStageError,
  }) {
    return forbidden?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ServerError value)? serverError,
    TResult Function(NetworkError value)? networkError,
    TResult Function(Unauthorized value)? unauthorized,
    TResult Function(CacheError value)? cacheError,
    TResult Function(UnexpectedError value)? unexpectedError,
    TResult Function(CustomError value)? customError,
    TResult Function(NotFoundFailure value)? notFound,
    TResult Function(ConflictError value)? conflict,
    TResult Function(ValidationError value)? validationError,
    TResult Function(ForbiddenFailure value)? forbidden,
    TResult Function(LocalCacheError value)? localCacheError,
    TResult Function(UnknownError value)? unknownError,
    TResult Function(MultiStageError value)? multiStageError,
    required TResult orElse(),
  }) {
    if (forbidden != null) {
      return forbidden(this);
    }
    return orElse();
  }
}

abstract class ForbiddenFailure implements Failure {
  const factory ForbiddenFailure({final String? message}) =
      _$ForbiddenFailureImpl;

  @override
  String? get message;

  /// Create a copy of Failure
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ForbiddenFailureImplCopyWith<_$ForbiddenFailureImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$LocalCacheErrorImplCopyWith<$Res>
    implements $FailureCopyWith<$Res> {
  factory _$$LocalCacheErrorImplCopyWith(_$LocalCacheErrorImpl value,
          $Res Function(_$LocalCacheErrorImpl) then) =
      __$$LocalCacheErrorImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? message});
}

/// @nodoc
class __$$LocalCacheErrorImplCopyWithImpl<$Res>
    extends _$FailureCopyWithImpl<$Res, _$LocalCacheErrorImpl>
    implements _$$LocalCacheErrorImplCopyWith<$Res> {
  __$$LocalCacheErrorImplCopyWithImpl(
      _$LocalCacheErrorImpl _value, $Res Function(_$LocalCacheErrorImpl) _then)
      : super(_value, _then);

  /// Create a copy of Failure
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = freezed,
  }) {
    return _then(_$LocalCacheErrorImpl(
      message: freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$LocalCacheErrorImpl implements LocalCacheError {
  const _$LocalCacheErrorImpl({this.message});

  @override
  final String? message;

  @override
  String toString() {
    return 'Failure.localCacheError(message: $message)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LocalCacheErrorImpl &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message);

  /// Create a copy of Failure
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$LocalCacheErrorImplCopyWith<_$LocalCacheErrorImpl> get copyWith =>
      __$$LocalCacheErrorImplCopyWithImpl<_$LocalCacheErrorImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String? message, String? errorCode,
            List<ErrorDetail>? details, int? statusCode)
        serverError,
    required TResult Function(String? message) networkError,
    required TResult Function(String? message) unauthorized,
    required TResult Function(String? message) cacheError,
    required TResult Function(String? message) unexpectedError,
    required TResult Function(String message) customError,
    required TResult Function(String? message) notFound,
    required TResult Function(String? message, String? errorCode) conflict,
    required TResult Function(
            String? message, String? errorCode, List<ErrorDetail>? details)
        validationError,
    required TResult Function(String? message) forbidden,
    required TResult Function(String? message) localCacheError,
    required TResult Function(
            String? message, Object? error, StackTrace? stackTrace)
        unknownError,
    required TResult Function(String? message, Failure originalFailure)
        multiStageError,
  }) {
    return localCacheError(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String? message, String? errorCode,
            List<ErrorDetail>? details, int? statusCode)?
        serverError,
    TResult? Function(String? message)? networkError,
    TResult? Function(String? message)? unauthorized,
    TResult? Function(String? message)? cacheError,
    TResult? Function(String? message)? unexpectedError,
    TResult? Function(String message)? customError,
    TResult? Function(String? message)? notFound,
    TResult? Function(String? message, String? errorCode)? conflict,
    TResult? Function(
            String? message, String? errorCode, List<ErrorDetail>? details)?
        validationError,
    TResult? Function(String? message)? forbidden,
    TResult? Function(String? message)? localCacheError,
    TResult? Function(String? message, Object? error, StackTrace? stackTrace)?
        unknownError,
    TResult? Function(String? message, Failure originalFailure)?
        multiStageError,
  }) {
    return localCacheError?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String? message, String? errorCode,
            List<ErrorDetail>? details, int? statusCode)?
        serverError,
    TResult Function(String? message)? networkError,
    TResult Function(String? message)? unauthorized,
    TResult Function(String? message)? cacheError,
    TResult Function(String? message)? unexpectedError,
    TResult Function(String message)? customError,
    TResult Function(String? message)? notFound,
    TResult Function(String? message, String? errorCode)? conflict,
    TResult Function(
            String? message, String? errorCode, List<ErrorDetail>? details)?
        validationError,
    TResult Function(String? message)? forbidden,
    TResult Function(String? message)? localCacheError,
    TResult Function(String? message, Object? error, StackTrace? stackTrace)?
        unknownError,
    TResult Function(String? message, Failure originalFailure)? multiStageError,
    required TResult orElse(),
  }) {
    if (localCacheError != null) {
      return localCacheError(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ServerError value) serverError,
    required TResult Function(NetworkError value) networkError,
    required TResult Function(Unauthorized value) unauthorized,
    required TResult Function(CacheError value) cacheError,
    required TResult Function(UnexpectedError value) unexpectedError,
    required TResult Function(CustomError value) customError,
    required TResult Function(NotFoundFailure value) notFound,
    required TResult Function(ConflictError value) conflict,
    required TResult Function(ValidationError value) validationError,
    required TResult Function(ForbiddenFailure value) forbidden,
    required TResult Function(LocalCacheError value) localCacheError,
    required TResult Function(UnknownError value) unknownError,
    required TResult Function(MultiStageError value) multiStageError,
  }) {
    return localCacheError(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ServerError value)? serverError,
    TResult? Function(NetworkError value)? networkError,
    TResult? Function(Unauthorized value)? unauthorized,
    TResult? Function(CacheError value)? cacheError,
    TResult? Function(UnexpectedError value)? unexpectedError,
    TResult? Function(CustomError value)? customError,
    TResult? Function(NotFoundFailure value)? notFound,
    TResult? Function(ConflictError value)? conflict,
    TResult? Function(ValidationError value)? validationError,
    TResult? Function(ForbiddenFailure value)? forbidden,
    TResult? Function(LocalCacheError value)? localCacheError,
    TResult? Function(UnknownError value)? unknownError,
    TResult? Function(MultiStageError value)? multiStageError,
  }) {
    return localCacheError?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ServerError value)? serverError,
    TResult Function(NetworkError value)? networkError,
    TResult Function(Unauthorized value)? unauthorized,
    TResult Function(CacheError value)? cacheError,
    TResult Function(UnexpectedError value)? unexpectedError,
    TResult Function(CustomError value)? customError,
    TResult Function(NotFoundFailure value)? notFound,
    TResult Function(ConflictError value)? conflict,
    TResult Function(ValidationError value)? validationError,
    TResult Function(ForbiddenFailure value)? forbidden,
    TResult Function(LocalCacheError value)? localCacheError,
    TResult Function(UnknownError value)? unknownError,
    TResult Function(MultiStageError value)? multiStageError,
    required TResult orElse(),
  }) {
    if (localCacheError != null) {
      return localCacheError(this);
    }
    return orElse();
  }
}

abstract class LocalCacheError implements Failure {
  const factory LocalCacheError({final String? message}) =
      _$LocalCacheErrorImpl;

  @override
  String? get message;

  /// Create a copy of Failure
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$LocalCacheErrorImplCopyWith<_$LocalCacheErrorImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$UnknownErrorImplCopyWith<$Res>
    implements $FailureCopyWith<$Res> {
  factory _$$UnknownErrorImplCopyWith(
          _$UnknownErrorImpl value, $Res Function(_$UnknownErrorImpl) then) =
      __$$UnknownErrorImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? message, Object? error, StackTrace? stackTrace});
}

/// @nodoc
class __$$UnknownErrorImplCopyWithImpl<$Res>
    extends _$FailureCopyWithImpl<$Res, _$UnknownErrorImpl>
    implements _$$UnknownErrorImplCopyWith<$Res> {
  __$$UnknownErrorImplCopyWithImpl(
      _$UnknownErrorImpl _value, $Res Function(_$UnknownErrorImpl) _then)
      : super(_value, _then);

  /// Create a copy of Failure
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = freezed,
    Object? error = freezed,
    Object? stackTrace = freezed,
  }) {
    return _then(_$UnknownErrorImpl(
      message: freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
      error: freezed == error ? _value.error : error,
      stackTrace: freezed == stackTrace
          ? _value.stackTrace
          : stackTrace // ignore: cast_nullable_to_non_nullable
              as StackTrace?,
    ));
  }
}

/// @nodoc

class _$UnknownErrorImpl implements UnknownError {
  const _$UnknownErrorImpl({this.message, this.error, this.stackTrace});

  @override
  final String? message;
  @override
  final Object? error;
  @override
  final StackTrace? stackTrace;

  @override
  String toString() {
    return 'Failure.unknownError(message: $message, error: $error, stackTrace: $stackTrace)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UnknownErrorImpl &&
            (identical(other.message, message) || other.message == message) &&
            const DeepCollectionEquality().equals(other.error, error) &&
            (identical(other.stackTrace, stackTrace) ||
                other.stackTrace == stackTrace));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message,
      const DeepCollectionEquality().hash(error), stackTrace);

  /// Create a copy of Failure
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$UnknownErrorImplCopyWith<_$UnknownErrorImpl> get copyWith =>
      __$$UnknownErrorImplCopyWithImpl<_$UnknownErrorImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String? message, String? errorCode,
            List<ErrorDetail>? details, int? statusCode)
        serverError,
    required TResult Function(String? message) networkError,
    required TResult Function(String? message) unauthorized,
    required TResult Function(String? message) cacheError,
    required TResult Function(String? message) unexpectedError,
    required TResult Function(String message) customError,
    required TResult Function(String? message) notFound,
    required TResult Function(String? message, String? errorCode) conflict,
    required TResult Function(
            String? message, String? errorCode, List<ErrorDetail>? details)
        validationError,
    required TResult Function(String? message) forbidden,
    required TResult Function(String? message) localCacheError,
    required TResult Function(
            String? message, Object? error, StackTrace? stackTrace)
        unknownError,
    required TResult Function(String? message, Failure originalFailure)
        multiStageError,
  }) {
    return unknownError(message, error, stackTrace);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String? message, String? errorCode,
            List<ErrorDetail>? details, int? statusCode)?
        serverError,
    TResult? Function(String? message)? networkError,
    TResult? Function(String? message)? unauthorized,
    TResult? Function(String? message)? cacheError,
    TResult? Function(String? message)? unexpectedError,
    TResult? Function(String message)? customError,
    TResult? Function(String? message)? notFound,
    TResult? Function(String? message, String? errorCode)? conflict,
    TResult? Function(
            String? message, String? errorCode, List<ErrorDetail>? details)?
        validationError,
    TResult? Function(String? message)? forbidden,
    TResult? Function(String? message)? localCacheError,
    TResult? Function(String? message, Object? error, StackTrace? stackTrace)?
        unknownError,
    TResult? Function(String? message, Failure originalFailure)?
        multiStageError,
  }) {
    return unknownError?.call(message, error, stackTrace);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String? message, String? errorCode,
            List<ErrorDetail>? details, int? statusCode)?
        serverError,
    TResult Function(String? message)? networkError,
    TResult Function(String? message)? unauthorized,
    TResult Function(String? message)? cacheError,
    TResult Function(String? message)? unexpectedError,
    TResult Function(String message)? customError,
    TResult Function(String? message)? notFound,
    TResult Function(String? message, String? errorCode)? conflict,
    TResult Function(
            String? message, String? errorCode, List<ErrorDetail>? details)?
        validationError,
    TResult Function(String? message)? forbidden,
    TResult Function(String? message)? localCacheError,
    TResult Function(String? message, Object? error, StackTrace? stackTrace)?
        unknownError,
    TResult Function(String? message, Failure originalFailure)? multiStageError,
    required TResult orElse(),
  }) {
    if (unknownError != null) {
      return unknownError(message, error, stackTrace);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ServerError value) serverError,
    required TResult Function(NetworkError value) networkError,
    required TResult Function(Unauthorized value) unauthorized,
    required TResult Function(CacheError value) cacheError,
    required TResult Function(UnexpectedError value) unexpectedError,
    required TResult Function(CustomError value) customError,
    required TResult Function(NotFoundFailure value) notFound,
    required TResult Function(ConflictError value) conflict,
    required TResult Function(ValidationError value) validationError,
    required TResult Function(ForbiddenFailure value) forbidden,
    required TResult Function(LocalCacheError value) localCacheError,
    required TResult Function(UnknownError value) unknownError,
    required TResult Function(MultiStageError value) multiStageError,
  }) {
    return unknownError(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ServerError value)? serverError,
    TResult? Function(NetworkError value)? networkError,
    TResult? Function(Unauthorized value)? unauthorized,
    TResult? Function(CacheError value)? cacheError,
    TResult? Function(UnexpectedError value)? unexpectedError,
    TResult? Function(CustomError value)? customError,
    TResult? Function(NotFoundFailure value)? notFound,
    TResult? Function(ConflictError value)? conflict,
    TResult? Function(ValidationError value)? validationError,
    TResult? Function(ForbiddenFailure value)? forbidden,
    TResult? Function(LocalCacheError value)? localCacheError,
    TResult? Function(UnknownError value)? unknownError,
    TResult? Function(MultiStageError value)? multiStageError,
  }) {
    return unknownError?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ServerError value)? serverError,
    TResult Function(NetworkError value)? networkError,
    TResult Function(Unauthorized value)? unauthorized,
    TResult Function(CacheError value)? cacheError,
    TResult Function(UnexpectedError value)? unexpectedError,
    TResult Function(CustomError value)? customError,
    TResult Function(NotFoundFailure value)? notFound,
    TResult Function(ConflictError value)? conflict,
    TResult Function(ValidationError value)? validationError,
    TResult Function(ForbiddenFailure value)? forbidden,
    TResult Function(LocalCacheError value)? localCacheError,
    TResult Function(UnknownError value)? unknownError,
    TResult Function(MultiStageError value)? multiStageError,
    required TResult orElse(),
  }) {
    if (unknownError != null) {
      return unknownError(this);
    }
    return orElse();
  }
}

abstract class UnknownError implements Failure {
  const factory UnknownError(
      {final String? message,
      final Object? error,
      final StackTrace? stackTrace}) = _$UnknownErrorImpl;

  @override
  String? get message;
  Object? get error;
  StackTrace? get stackTrace;

  /// Create a copy of Failure
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$UnknownErrorImplCopyWith<_$UnknownErrorImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$MultiStageErrorImplCopyWith<$Res>
    implements $FailureCopyWith<$Res> {
  factory _$$MultiStageErrorImplCopyWith(_$MultiStageErrorImpl value,
          $Res Function(_$MultiStageErrorImpl) then) =
      __$$MultiStageErrorImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? message, Failure originalFailure});

  $FailureCopyWith<$Res> get originalFailure;
}

/// @nodoc
class __$$MultiStageErrorImplCopyWithImpl<$Res>
    extends _$FailureCopyWithImpl<$Res, _$MultiStageErrorImpl>
    implements _$$MultiStageErrorImplCopyWith<$Res> {
  __$$MultiStageErrorImplCopyWithImpl(
      _$MultiStageErrorImpl _value, $Res Function(_$MultiStageErrorImpl) _then)
      : super(_value, _then);

  /// Create a copy of Failure
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = freezed,
    Object? originalFailure = null,
  }) {
    return _then(_$MultiStageErrorImpl(
      message: freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
      originalFailure: null == originalFailure
          ? _value.originalFailure
          : originalFailure // ignore: cast_nullable_to_non_nullable
              as Failure,
    ));
  }

  /// Create a copy of Failure
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $FailureCopyWith<$Res> get originalFailure {
    return $FailureCopyWith<$Res>(_value.originalFailure, (value) {
      return _then(_value.copyWith(originalFailure: value));
    });
  }
}

/// @nodoc

class _$MultiStageErrorImpl implements MultiStageError {
  const _$MultiStageErrorImpl({this.message, required this.originalFailure});

  @override
  final String? message;
  @override
  final Failure originalFailure;

  @override
  String toString() {
    return 'Failure.multiStageError(message: $message, originalFailure: $originalFailure)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MultiStageErrorImpl &&
            (identical(other.message, message) || other.message == message) &&
            (identical(other.originalFailure, originalFailure) ||
                other.originalFailure == originalFailure));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message, originalFailure);

  /// Create a copy of Failure
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$MultiStageErrorImplCopyWith<_$MultiStageErrorImpl> get copyWith =>
      __$$MultiStageErrorImplCopyWithImpl<_$MultiStageErrorImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String? message, String? errorCode,
            List<ErrorDetail>? details, int? statusCode)
        serverError,
    required TResult Function(String? message) networkError,
    required TResult Function(String? message) unauthorized,
    required TResult Function(String? message) cacheError,
    required TResult Function(String? message) unexpectedError,
    required TResult Function(String message) customError,
    required TResult Function(String? message) notFound,
    required TResult Function(String? message, String? errorCode) conflict,
    required TResult Function(
            String? message, String? errorCode, List<ErrorDetail>? details)
        validationError,
    required TResult Function(String? message) forbidden,
    required TResult Function(String? message) localCacheError,
    required TResult Function(
            String? message, Object? error, StackTrace? stackTrace)
        unknownError,
    required TResult Function(String? message, Failure originalFailure)
        multiStageError,
  }) {
    return multiStageError(message, originalFailure);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String? message, String? errorCode,
            List<ErrorDetail>? details, int? statusCode)?
        serverError,
    TResult? Function(String? message)? networkError,
    TResult? Function(String? message)? unauthorized,
    TResult? Function(String? message)? cacheError,
    TResult? Function(String? message)? unexpectedError,
    TResult? Function(String message)? customError,
    TResult? Function(String? message)? notFound,
    TResult? Function(String? message, String? errorCode)? conflict,
    TResult? Function(
            String? message, String? errorCode, List<ErrorDetail>? details)?
        validationError,
    TResult? Function(String? message)? forbidden,
    TResult? Function(String? message)? localCacheError,
    TResult? Function(String? message, Object? error, StackTrace? stackTrace)?
        unknownError,
    TResult? Function(String? message, Failure originalFailure)?
        multiStageError,
  }) {
    return multiStageError?.call(message, originalFailure);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String? message, String? errorCode,
            List<ErrorDetail>? details, int? statusCode)?
        serverError,
    TResult Function(String? message)? networkError,
    TResult Function(String? message)? unauthorized,
    TResult Function(String? message)? cacheError,
    TResult Function(String? message)? unexpectedError,
    TResult Function(String message)? customError,
    TResult Function(String? message)? notFound,
    TResult Function(String? message, String? errorCode)? conflict,
    TResult Function(
            String? message, String? errorCode, List<ErrorDetail>? details)?
        validationError,
    TResult Function(String? message)? forbidden,
    TResult Function(String? message)? localCacheError,
    TResult Function(String? message, Object? error, StackTrace? stackTrace)?
        unknownError,
    TResult Function(String? message, Failure originalFailure)? multiStageError,
    required TResult orElse(),
  }) {
    if (multiStageError != null) {
      return multiStageError(message, originalFailure);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ServerError value) serverError,
    required TResult Function(NetworkError value) networkError,
    required TResult Function(Unauthorized value) unauthorized,
    required TResult Function(CacheError value) cacheError,
    required TResult Function(UnexpectedError value) unexpectedError,
    required TResult Function(CustomError value) customError,
    required TResult Function(NotFoundFailure value) notFound,
    required TResult Function(ConflictError value) conflict,
    required TResult Function(ValidationError value) validationError,
    required TResult Function(ForbiddenFailure value) forbidden,
    required TResult Function(LocalCacheError value) localCacheError,
    required TResult Function(UnknownError value) unknownError,
    required TResult Function(MultiStageError value) multiStageError,
  }) {
    return multiStageError(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ServerError value)? serverError,
    TResult? Function(NetworkError value)? networkError,
    TResult? Function(Unauthorized value)? unauthorized,
    TResult? Function(CacheError value)? cacheError,
    TResult? Function(UnexpectedError value)? unexpectedError,
    TResult? Function(CustomError value)? customError,
    TResult? Function(NotFoundFailure value)? notFound,
    TResult? Function(ConflictError value)? conflict,
    TResult? Function(ValidationError value)? validationError,
    TResult? Function(ForbiddenFailure value)? forbidden,
    TResult? Function(LocalCacheError value)? localCacheError,
    TResult? Function(UnknownError value)? unknownError,
    TResult? Function(MultiStageError value)? multiStageError,
  }) {
    return multiStageError?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ServerError value)? serverError,
    TResult Function(NetworkError value)? networkError,
    TResult Function(Unauthorized value)? unauthorized,
    TResult Function(CacheError value)? cacheError,
    TResult Function(UnexpectedError value)? unexpectedError,
    TResult Function(CustomError value)? customError,
    TResult Function(NotFoundFailure value)? notFound,
    TResult Function(ConflictError value)? conflict,
    TResult Function(ValidationError value)? validationError,
    TResult Function(ForbiddenFailure value)? forbidden,
    TResult Function(LocalCacheError value)? localCacheError,
    TResult Function(UnknownError value)? unknownError,
    TResult Function(MultiStageError value)? multiStageError,
    required TResult orElse(),
  }) {
    if (multiStageError != null) {
      return multiStageError(this);
    }
    return orElse();
  }
}

abstract class MultiStageError implements Failure {
  const factory MultiStageError(
      {final String? message,
      required final Failure originalFailure}) = _$MultiStageErrorImpl;

  @override
  String? get message;
  Failure get originalFailure;

  /// Create a copy of Failure
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$MultiStageErrorImplCopyWith<_$MultiStageErrorImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

ErrorDetail _$ErrorDetailFromJson(Map<String, dynamic> json) {
  return _ErrorDetail.fromJson(json);
}

/// @nodoc
mixin _$ErrorDetail {
  String? get field => throw _privateConstructorUsedError;
  String? get message => throw _privateConstructorUsedError;

  /// Serializes this ErrorDetail to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ErrorDetail
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ErrorDetailCopyWith<ErrorDetail> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ErrorDetailCopyWith<$Res> {
  factory $ErrorDetailCopyWith(
          ErrorDetail value, $Res Function(ErrorDetail) then) =
      _$ErrorDetailCopyWithImpl<$Res, ErrorDetail>;
  @useResult
  $Res call({String? field, String? message});
}

/// @nodoc
class _$ErrorDetailCopyWithImpl<$Res, $Val extends ErrorDetail>
    implements $ErrorDetailCopyWith<$Res> {
  _$ErrorDetailCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ErrorDetail
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
abstract class _$$ErrorDetailImplCopyWith<$Res>
    implements $ErrorDetailCopyWith<$Res> {
  factory _$$ErrorDetailImplCopyWith(
          _$ErrorDetailImpl value, $Res Function(_$ErrorDetailImpl) then) =
      __$$ErrorDetailImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? field, String? message});
}

/// @nodoc
class __$$ErrorDetailImplCopyWithImpl<$Res>
    extends _$ErrorDetailCopyWithImpl<$Res, _$ErrorDetailImpl>
    implements _$$ErrorDetailImplCopyWith<$Res> {
  __$$ErrorDetailImplCopyWithImpl(
      _$ErrorDetailImpl _value, $Res Function(_$ErrorDetailImpl) _then)
      : super(_value, _then);

  /// Create a copy of ErrorDetail
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? field = freezed,
    Object? message = freezed,
  }) {
    return _then(_$ErrorDetailImpl(
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
class _$ErrorDetailImpl implements _ErrorDetail {
  const _$ErrorDetailImpl({this.field, this.message});

  factory _$ErrorDetailImpl.fromJson(Map<String, dynamic> json) =>
      _$$ErrorDetailImplFromJson(json);

  @override
  final String? field;
  @override
  final String? message;

  @override
  String toString() {
    return 'ErrorDetail(field: $field, message: $message)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ErrorDetailImpl &&
            (identical(other.field, field) || other.field == field) &&
            (identical(other.message, message) || other.message == message));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, field, message);

  /// Create a copy of ErrorDetail
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ErrorDetailImplCopyWith<_$ErrorDetailImpl> get copyWith =>
      __$$ErrorDetailImplCopyWithImpl<_$ErrorDetailImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ErrorDetailImplToJson(
      this,
    );
  }
}

abstract class _ErrorDetail implements ErrorDetail {
  const factory _ErrorDetail({final String? field, final String? message}) =
      _$ErrorDetailImpl;

  factory _ErrorDetail.fromJson(Map<String, dynamic> json) =
      _$ErrorDetailImpl.fromJson;

  @override
  String? get field;
  @override
  String? get message;

  /// Create a copy of ErrorDetail
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ErrorDetailImplCopyWith<_$ErrorDetailImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
