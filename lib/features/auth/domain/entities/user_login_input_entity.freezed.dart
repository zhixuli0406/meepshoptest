// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'user_login_input_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$UserLoginInputEntity {
  String get username => throw _privateConstructorUsedError;
  String get password => throw _privateConstructorUsedError;

  /// Create a copy of UserLoginInputEntity
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $UserLoginInputEntityCopyWith<UserLoginInputEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserLoginInputEntityCopyWith<$Res> {
  factory $UserLoginInputEntityCopyWith(UserLoginInputEntity value,
          $Res Function(UserLoginInputEntity) then) =
      _$UserLoginInputEntityCopyWithImpl<$Res, UserLoginInputEntity>;
  @useResult
  $Res call({String username, String password});
}

/// @nodoc
class _$UserLoginInputEntityCopyWithImpl<$Res,
        $Val extends UserLoginInputEntity>
    implements $UserLoginInputEntityCopyWith<$Res> {
  _$UserLoginInputEntityCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of UserLoginInputEntity
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? username = null,
    Object? password = null,
  }) {
    return _then(_value.copyWith(
      username: null == username
          ? _value.username
          : username // ignore: cast_nullable_to_non_nullable
              as String,
      password: null == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$UserLoginInputEntityImplCopyWith<$Res>
    implements $UserLoginInputEntityCopyWith<$Res> {
  factory _$$UserLoginInputEntityImplCopyWith(_$UserLoginInputEntityImpl value,
          $Res Function(_$UserLoginInputEntityImpl) then) =
      __$$UserLoginInputEntityImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String username, String password});
}

/// @nodoc
class __$$UserLoginInputEntityImplCopyWithImpl<$Res>
    extends _$UserLoginInputEntityCopyWithImpl<$Res, _$UserLoginInputEntityImpl>
    implements _$$UserLoginInputEntityImplCopyWith<$Res> {
  __$$UserLoginInputEntityImplCopyWithImpl(_$UserLoginInputEntityImpl _value,
      $Res Function(_$UserLoginInputEntityImpl) _then)
      : super(_value, _then);

  /// Create a copy of UserLoginInputEntity
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? username = null,
    Object? password = null,
  }) {
    return _then(_$UserLoginInputEntityImpl(
      username: null == username
          ? _value.username
          : username // ignore: cast_nullable_to_non_nullable
              as String,
      password: null == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$UserLoginInputEntityImpl implements _UserLoginInputEntity {
  const _$UserLoginInputEntityImpl(
      {required this.username, required this.password});

  @override
  final String username;
  @override
  final String password;

  @override
  String toString() {
    return 'UserLoginInputEntity(username: $username, password: $password)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UserLoginInputEntityImpl &&
            (identical(other.username, username) ||
                other.username == username) &&
            (identical(other.password, password) ||
                other.password == password));
  }

  @override
  int get hashCode => Object.hash(runtimeType, username, password);

  /// Create a copy of UserLoginInputEntity
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$UserLoginInputEntityImplCopyWith<_$UserLoginInputEntityImpl>
      get copyWith =>
          __$$UserLoginInputEntityImplCopyWithImpl<_$UserLoginInputEntityImpl>(
              this, _$identity);
}

abstract class _UserLoginInputEntity implements UserLoginInputEntity {
  const factory _UserLoginInputEntity(
      {required final String username,
      required final String password}) = _$UserLoginInputEntityImpl;

  @override
  String get username;
  @override
  String get password;

  /// Create a copy of UserLoginInputEntity
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$UserLoginInputEntityImplCopyWith<_$UserLoginInputEntityImpl>
      get copyWith => throw _privateConstructorUsedError;
}
