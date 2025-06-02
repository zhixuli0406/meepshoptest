// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'user_input_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

UserInputModel _$UserInputModelFromJson(Map<String, dynamic> json) {
  return _UserInputModel.fromJson(json);
}

/// @nodoc
mixin _$UserInputModel {
  String get username => throw _privateConstructorUsedError;
  String get password => throw _privateConstructorUsedError;
  String get passwordConfirm => throw _privateConstructorUsedError;
  String? get avatar =>
      throw _privateConstructorUsedError; // This will be the S3 public URL for the avatar
  int? get legacyUserId => throw _privateConstructorUsedError;

  /// Serializes this UserInputModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of UserInputModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $UserInputModelCopyWith<UserInputModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserInputModelCopyWith<$Res> {
  factory $UserInputModelCopyWith(
          UserInputModel value, $Res Function(UserInputModel) then) =
      _$UserInputModelCopyWithImpl<$Res, UserInputModel>;
  @useResult
  $Res call(
      {String username,
      String password,
      String passwordConfirm,
      String? avatar,
      int? legacyUserId});
}

/// @nodoc
class _$UserInputModelCopyWithImpl<$Res, $Val extends UserInputModel>
    implements $UserInputModelCopyWith<$Res> {
  _$UserInputModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of UserInputModel
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
abstract class _$$UserInputModelImplCopyWith<$Res>
    implements $UserInputModelCopyWith<$Res> {
  factory _$$UserInputModelImplCopyWith(_$UserInputModelImpl value,
          $Res Function(_$UserInputModelImpl) then) =
      __$$UserInputModelImplCopyWithImpl<$Res>;
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
class __$$UserInputModelImplCopyWithImpl<$Res>
    extends _$UserInputModelCopyWithImpl<$Res, _$UserInputModelImpl>
    implements _$$UserInputModelImplCopyWith<$Res> {
  __$$UserInputModelImplCopyWithImpl(
      _$UserInputModelImpl _value, $Res Function(_$UserInputModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of UserInputModel
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
    return _then(_$UserInputModelImpl(
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
@JsonSerializable()
class _$UserInputModelImpl implements _UserInputModel {
  const _$UserInputModelImpl(
      {required this.username,
      required this.password,
      required this.passwordConfirm,
      this.avatar,
      this.legacyUserId});

  factory _$UserInputModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$UserInputModelImplFromJson(json);

  @override
  final String username;
  @override
  final String password;
  @override
  final String passwordConfirm;
  @override
  final String? avatar;
// This will be the S3 public URL for the avatar
  @override
  final int? legacyUserId;

  @override
  String toString() {
    return 'UserInputModel(username: $username, password: $password, passwordConfirm: $passwordConfirm, avatar: $avatar, legacyUserId: $legacyUserId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UserInputModelImpl &&
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

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType, username, password, passwordConfirm, avatar, legacyUserId);

  /// Create a copy of UserInputModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$UserInputModelImplCopyWith<_$UserInputModelImpl> get copyWith =>
      __$$UserInputModelImplCopyWithImpl<_$UserInputModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$UserInputModelImplToJson(
      this,
    );
  }
}

abstract class _UserInputModel implements UserInputModel {
  const factory _UserInputModel(
      {required final String username,
      required final String password,
      required final String passwordConfirm,
      final String? avatar,
      final int? legacyUserId}) = _$UserInputModelImpl;

  factory _UserInputModel.fromJson(Map<String, dynamic> json) =
      _$UserInputModelImpl.fromJson;

  @override
  String get username;
  @override
  String get password;
  @override
  String get passwordConfirm;
  @override
  String? get avatar; // This will be the S3 public URL for the avatar
  @override
  int? get legacyUserId;

  /// Create a copy of UserInputModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$UserInputModelImplCopyWith<_$UserInputModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
