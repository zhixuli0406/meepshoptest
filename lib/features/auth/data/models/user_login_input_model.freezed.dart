// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'user_login_input_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

UserLoginInputModel _$UserLoginInputModelFromJson(Map<String, dynamic> json) {
  return _UserLoginInputModel.fromJson(json);
}

/// @nodoc
mixin _$UserLoginInputModel {
  String get username => throw _privateConstructorUsedError;
  String get password => throw _privateConstructorUsedError;

  /// Serializes this UserLoginInputModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of UserLoginInputModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $UserLoginInputModelCopyWith<UserLoginInputModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserLoginInputModelCopyWith<$Res> {
  factory $UserLoginInputModelCopyWith(
          UserLoginInputModel value, $Res Function(UserLoginInputModel) then) =
      _$UserLoginInputModelCopyWithImpl<$Res, UserLoginInputModel>;
  @useResult
  $Res call({String username, String password});
}

/// @nodoc
class _$UserLoginInputModelCopyWithImpl<$Res, $Val extends UserLoginInputModel>
    implements $UserLoginInputModelCopyWith<$Res> {
  _$UserLoginInputModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of UserLoginInputModel
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
abstract class _$$UserLoginInputModelImplCopyWith<$Res>
    implements $UserLoginInputModelCopyWith<$Res> {
  factory _$$UserLoginInputModelImplCopyWith(_$UserLoginInputModelImpl value,
          $Res Function(_$UserLoginInputModelImpl) then) =
      __$$UserLoginInputModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String username, String password});
}

/// @nodoc
class __$$UserLoginInputModelImplCopyWithImpl<$Res>
    extends _$UserLoginInputModelCopyWithImpl<$Res, _$UserLoginInputModelImpl>
    implements _$$UserLoginInputModelImplCopyWith<$Res> {
  __$$UserLoginInputModelImplCopyWithImpl(_$UserLoginInputModelImpl _value,
      $Res Function(_$UserLoginInputModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of UserLoginInputModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? username = null,
    Object? password = null,
  }) {
    return _then(_$UserLoginInputModelImpl(
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
@JsonSerializable()
class _$UserLoginInputModelImpl implements _UserLoginInputModel {
  const _$UserLoginInputModelImpl(
      {required this.username, required this.password});

  factory _$UserLoginInputModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$UserLoginInputModelImplFromJson(json);

  @override
  final String username;
  @override
  final String password;

  @override
  String toString() {
    return 'UserLoginInputModel(username: $username, password: $password)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UserLoginInputModelImpl &&
            (identical(other.username, username) ||
                other.username == username) &&
            (identical(other.password, password) ||
                other.password == password));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, username, password);

  /// Create a copy of UserLoginInputModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$UserLoginInputModelImplCopyWith<_$UserLoginInputModelImpl> get copyWith =>
      __$$UserLoginInputModelImplCopyWithImpl<_$UserLoginInputModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$UserLoginInputModelImplToJson(
      this,
    );
  }
}

abstract class _UserLoginInputModel implements UserLoginInputModel {
  const factory _UserLoginInputModel(
      {required final String username,
      required final String password}) = _$UserLoginInputModelImpl;

  factory _UserLoginInputModel.fromJson(Map<String, dynamic> json) =
      _$UserLoginInputModelImpl.fromJson;

  @override
  String get username;
  @override
  String get password;

  /// Create a copy of UserLoginInputModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$UserLoginInputModelImplCopyWith<_$UserLoginInputModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
