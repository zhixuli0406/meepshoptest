// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'auth_response_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$AuthResponseDataEntity {
  UserEntity get user => throw _privateConstructorUsedError;

  /// Create a copy of AuthResponseDataEntity
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $AuthResponseDataEntityCopyWith<AuthResponseDataEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AuthResponseDataEntityCopyWith<$Res> {
  factory $AuthResponseDataEntityCopyWith(AuthResponseDataEntity value,
          $Res Function(AuthResponseDataEntity) then) =
      _$AuthResponseDataEntityCopyWithImpl<$Res, AuthResponseDataEntity>;
  @useResult
  $Res call({UserEntity user});

  $UserEntityCopyWith<$Res> get user;
}

/// @nodoc
class _$AuthResponseDataEntityCopyWithImpl<$Res,
        $Val extends AuthResponseDataEntity>
    implements $AuthResponseDataEntityCopyWith<$Res> {
  _$AuthResponseDataEntityCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of AuthResponseDataEntity
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? user = null,
  }) {
    return _then(_value.copyWith(
      user: null == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as UserEntity,
    ) as $Val);
  }

  /// Create a copy of AuthResponseDataEntity
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $UserEntityCopyWith<$Res> get user {
    return $UserEntityCopyWith<$Res>(_value.user, (value) {
      return _then(_value.copyWith(user: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$AuthResponseDataEntityImplCopyWith<$Res>
    implements $AuthResponseDataEntityCopyWith<$Res> {
  factory _$$AuthResponseDataEntityImplCopyWith(
          _$AuthResponseDataEntityImpl value,
          $Res Function(_$AuthResponseDataEntityImpl) then) =
      __$$AuthResponseDataEntityImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({UserEntity user});

  @override
  $UserEntityCopyWith<$Res> get user;
}

/// @nodoc
class __$$AuthResponseDataEntityImplCopyWithImpl<$Res>
    extends _$AuthResponseDataEntityCopyWithImpl<$Res,
        _$AuthResponseDataEntityImpl>
    implements _$$AuthResponseDataEntityImplCopyWith<$Res> {
  __$$AuthResponseDataEntityImplCopyWithImpl(
      _$AuthResponseDataEntityImpl _value,
      $Res Function(_$AuthResponseDataEntityImpl) _then)
      : super(_value, _then);

  /// Create a copy of AuthResponseDataEntity
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? user = null,
  }) {
    return _then(_$AuthResponseDataEntityImpl(
      user: null == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as UserEntity,
    ));
  }
}

/// @nodoc

class _$AuthResponseDataEntityImpl implements _AuthResponseDataEntity {
  const _$AuthResponseDataEntityImpl({required this.user});

  @override
  final UserEntity user;

  @override
  String toString() {
    return 'AuthResponseDataEntity(user: $user)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AuthResponseDataEntityImpl &&
            (identical(other.user, user) || other.user == user));
  }

  @override
  int get hashCode => Object.hash(runtimeType, user);

  /// Create a copy of AuthResponseDataEntity
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$AuthResponseDataEntityImplCopyWith<_$AuthResponseDataEntityImpl>
      get copyWith => __$$AuthResponseDataEntityImplCopyWithImpl<
          _$AuthResponseDataEntityImpl>(this, _$identity);
}

abstract class _AuthResponseDataEntity implements AuthResponseDataEntity {
  const factory _AuthResponseDataEntity({required final UserEntity user}) =
      _$AuthResponseDataEntityImpl;

  @override
  UserEntity get user;

  /// Create a copy of AuthResponseDataEntity
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$AuthResponseDataEntityImplCopyWith<_$AuthResponseDataEntityImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$AuthResponseEntity {
  String get status =>
      throw _privateConstructorUsedError; // Or consider if domain layer needs 'status' string, often just token and user entity are enough
  String get token => throw _privateConstructorUsedError;
  AuthResponseDataEntity get data => throw _privateConstructorUsedError;

  /// Create a copy of AuthResponseEntity
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $AuthResponseEntityCopyWith<AuthResponseEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AuthResponseEntityCopyWith<$Res> {
  factory $AuthResponseEntityCopyWith(
          AuthResponseEntity value, $Res Function(AuthResponseEntity) then) =
      _$AuthResponseEntityCopyWithImpl<$Res, AuthResponseEntity>;
  @useResult
  $Res call({String status, String token, AuthResponseDataEntity data});

  $AuthResponseDataEntityCopyWith<$Res> get data;
}

/// @nodoc
class _$AuthResponseEntityCopyWithImpl<$Res, $Val extends AuthResponseEntity>
    implements $AuthResponseEntityCopyWith<$Res> {
  _$AuthResponseEntityCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of AuthResponseEntity
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? token = null,
    Object? data = null,
  }) {
    return _then(_value.copyWith(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String,
      token: null == token
          ? _value.token
          : token // ignore: cast_nullable_to_non_nullable
              as String,
      data: null == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as AuthResponseDataEntity,
    ) as $Val);
  }

  /// Create a copy of AuthResponseEntity
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $AuthResponseDataEntityCopyWith<$Res> get data {
    return $AuthResponseDataEntityCopyWith<$Res>(_value.data, (value) {
      return _then(_value.copyWith(data: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$AuthResponseEntityImplCopyWith<$Res>
    implements $AuthResponseEntityCopyWith<$Res> {
  factory _$$AuthResponseEntityImplCopyWith(_$AuthResponseEntityImpl value,
          $Res Function(_$AuthResponseEntityImpl) then) =
      __$$AuthResponseEntityImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String status, String token, AuthResponseDataEntity data});

  @override
  $AuthResponseDataEntityCopyWith<$Res> get data;
}

/// @nodoc
class __$$AuthResponseEntityImplCopyWithImpl<$Res>
    extends _$AuthResponseEntityCopyWithImpl<$Res, _$AuthResponseEntityImpl>
    implements _$$AuthResponseEntityImplCopyWith<$Res> {
  __$$AuthResponseEntityImplCopyWithImpl(_$AuthResponseEntityImpl _value,
      $Res Function(_$AuthResponseEntityImpl) _then)
      : super(_value, _then);

  /// Create a copy of AuthResponseEntity
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? token = null,
    Object? data = null,
  }) {
    return _then(_$AuthResponseEntityImpl(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String,
      token: null == token
          ? _value.token
          : token // ignore: cast_nullable_to_non_nullable
              as String,
      data: null == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as AuthResponseDataEntity,
    ));
  }
}

/// @nodoc

class _$AuthResponseEntityImpl implements _AuthResponseEntity {
  const _$AuthResponseEntityImpl(
      {required this.status, required this.token, required this.data});

  @override
  final String status;
// Or consider if domain layer needs 'status' string, often just token and user entity are enough
  @override
  final String token;
  @override
  final AuthResponseDataEntity data;

  @override
  String toString() {
    return 'AuthResponseEntity(status: $status, token: $token, data: $data)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AuthResponseEntityImpl &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.token, token) || other.token == token) &&
            (identical(other.data, data) || other.data == data));
  }

  @override
  int get hashCode => Object.hash(runtimeType, status, token, data);

  /// Create a copy of AuthResponseEntity
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$AuthResponseEntityImplCopyWith<_$AuthResponseEntityImpl> get copyWith =>
      __$$AuthResponseEntityImplCopyWithImpl<_$AuthResponseEntityImpl>(
          this, _$identity);
}

abstract class _AuthResponseEntity implements AuthResponseEntity {
  const factory _AuthResponseEntity(
      {required final String status,
      required final String token,
      required final AuthResponseDataEntity data}) = _$AuthResponseEntityImpl;

  @override
  String
      get status; // Or consider if domain layer needs 'status' string, often just token and user entity are enough
  @override
  String get token;
  @override
  AuthResponseDataEntity get data;

  /// Create a copy of AuthResponseEntity
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$AuthResponseEntityImplCopyWith<_$AuthResponseEntityImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
