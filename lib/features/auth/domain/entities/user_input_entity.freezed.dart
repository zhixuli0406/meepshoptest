// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'user_input_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$UserInputEntity {
  String get username => throw _privateConstructorUsedError;
  String get password => throw _privateConstructorUsedError;
  String get passwordConfirm => throw _privateConstructorUsedError;
  String? get avatar => throw _privateConstructorUsedError;
  int? get legacyUserId => throw _privateConstructorUsedError;

  /// Create a copy of UserInputEntity
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $UserInputEntityCopyWith<UserInputEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserInputEntityCopyWith<$Res> {
  factory $UserInputEntityCopyWith(
          UserInputEntity value, $Res Function(UserInputEntity) then) =
      _$UserInputEntityCopyWithImpl<$Res, UserInputEntity>;
  @useResult
  $Res call(
      {String username,
      String password,
      String passwordConfirm,
      String? avatar,
      int? legacyUserId});
}

/// @nodoc
class _$UserInputEntityCopyWithImpl<$Res, $Val extends UserInputEntity>
    implements $UserInputEntityCopyWith<$Res> {
  _$UserInputEntityCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of UserInputEntity
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? username = null,
    Object? password = null,
    Object? passwordConfirm = null,
    Object? avatar = freezed,
    Object? legacyUserId = freezed,
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
      passwordConfirm: null == passwordConfirm
          ? _value.passwordConfirm
          : passwordConfirm // ignore: cast_nullable_to_non_nullable
              as String,
      avatar: freezed == avatar
          ? _value.avatar
          : avatar // ignore: cast_nullable_to_non_nullable
              as String?,
      legacyUserId: freezed == legacyUserId
          ? _value.legacyUserId
          : legacyUserId // ignore: cast_nullable_to_non_nullable
              as int?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$UserInputEntityImplCopyWith<$Res>
    implements $UserInputEntityCopyWith<$Res> {
  factory _$$UserInputEntityImplCopyWith(_$UserInputEntityImpl value,
          $Res Function(_$UserInputEntityImpl) then) =
      __$$UserInputEntityImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String username,
      String password,
      String passwordConfirm,
      String? avatar,
      int? legacyUserId});
}

/// @nodoc
class __$$UserInputEntityImplCopyWithImpl<$Res>
    extends _$UserInputEntityCopyWithImpl<$Res, _$UserInputEntityImpl>
    implements _$$UserInputEntityImplCopyWith<$Res> {
  __$$UserInputEntityImplCopyWithImpl(
      _$UserInputEntityImpl _value, $Res Function(_$UserInputEntityImpl) _then)
      : super(_value, _then);

  /// Create a copy of UserInputEntity
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? username = null,
    Object? password = null,
    Object? passwordConfirm = null,
    Object? avatar = freezed,
    Object? legacyUserId = freezed,
  }) {
    return _then(_$UserInputEntityImpl(
      username: null == username
          ? _value.username
          : username // ignore: cast_nullable_to_non_nullable
              as String,
      password: null == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String,
      passwordConfirm: null == passwordConfirm
          ? _value.passwordConfirm
          : passwordConfirm // ignore: cast_nullable_to_non_nullable
              as String,
      avatar: freezed == avatar
          ? _value.avatar
          : avatar // ignore: cast_nullable_to_non_nullable
              as String?,
      legacyUserId: freezed == legacyUserId
          ? _value.legacyUserId
          : legacyUserId // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc

class _$UserInputEntityImpl implements _UserInputEntity {
  const _$UserInputEntityImpl(
      {required this.username,
      required this.password,
      required this.passwordConfirm,
      this.avatar,
      this.legacyUserId});

  @override
  final String username;
  @override
  final String password;
  @override
  final String passwordConfirm;
  @override
  final String? avatar;
  @override
  final int? legacyUserId;

  @override
  String toString() {
    return 'UserInputEntity(username: $username, password: $password, passwordConfirm: $passwordConfirm, avatar: $avatar, legacyUserId: $legacyUserId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UserInputEntityImpl &&
            (identical(other.username, username) ||
                other.username == username) &&
            (identical(other.password, password) ||
                other.password == password) &&
            (identical(other.passwordConfirm, passwordConfirm) ||
                other.passwordConfirm == passwordConfirm) &&
            (identical(other.avatar, avatar) || other.avatar == avatar) &&
            (identical(other.legacyUserId, legacyUserId) ||
                other.legacyUserId == legacyUserId));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, username, password, passwordConfirm, avatar, legacyUserId);

  /// Create a copy of UserInputEntity
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$UserInputEntityImplCopyWith<_$UserInputEntityImpl> get copyWith =>
      __$$UserInputEntityImplCopyWithImpl<_$UserInputEntityImpl>(
          this, _$identity);
}

abstract class _UserInputEntity implements UserInputEntity {
  const factory _UserInputEntity(
      {required final String username,
      required final String password,
      required final String passwordConfirm,
      final String? avatar,
      final int? legacyUserId}) = _$UserInputEntityImpl;

  @override
  String get username;
  @override
  String get password;
  @override
  String get passwordConfirm;
  @override
  String? get avatar;
  @override
  int? get legacyUserId;

  /// Create a copy of UserInputEntity
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$UserInputEntityImplCopyWith<_$UserInputEntityImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
