// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'user_update_input_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

UserUpdateInputModel _$UserUpdateInputModelFromJson(Map<String, dynamic> json) {
  return _UserUpdateInputModel.fromJson(json);
}

/// @nodoc
mixin _$UserUpdateInputModel {
  String? get username => throw _privateConstructorUsedError;
  String? get avatar => throw _privateConstructorUsedError;

  /// Serializes this UserUpdateInputModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of UserUpdateInputModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $UserUpdateInputModelCopyWith<UserUpdateInputModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserUpdateInputModelCopyWith<$Res> {
  factory $UserUpdateInputModelCopyWith(UserUpdateInputModel value,
          $Res Function(UserUpdateInputModel) then) =
      _$UserUpdateInputModelCopyWithImpl<$Res, UserUpdateInputModel>;
  @useResult
  $Res call({String? username, String? avatar});
}

/// @nodoc
class _$UserUpdateInputModelCopyWithImpl<$Res,
        $Val extends UserUpdateInputModel>
    implements $UserUpdateInputModelCopyWith<$Res> {
  _$UserUpdateInputModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of UserUpdateInputModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? username = freezed,
    Object? avatar = freezed,
  }) {
    return _then(_value.copyWith(
      username: freezed == username
          ? _value.username
          : username // ignore: cast_nullable_to_non_nullable
              as String?,
      avatar: freezed == avatar
          ? _value.avatar
          : avatar // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$UserUpdateInputModelImplCopyWith<$Res>
    implements $UserUpdateInputModelCopyWith<$Res> {
  factory _$$UserUpdateInputModelImplCopyWith(_$UserUpdateInputModelImpl value,
          $Res Function(_$UserUpdateInputModelImpl) then) =
      __$$UserUpdateInputModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? username, String? avatar});
}

/// @nodoc
class __$$UserUpdateInputModelImplCopyWithImpl<$Res>
    extends _$UserUpdateInputModelCopyWithImpl<$Res, _$UserUpdateInputModelImpl>
    implements _$$UserUpdateInputModelImplCopyWith<$Res> {
  __$$UserUpdateInputModelImplCopyWithImpl(_$UserUpdateInputModelImpl _value,
      $Res Function(_$UserUpdateInputModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of UserUpdateInputModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? username = freezed,
    Object? avatar = freezed,
  }) {
    return _then(_$UserUpdateInputModelImpl(
      username: freezed == username
          ? _value.username
          : username // ignore: cast_nullable_to_non_nullable
              as String?,
      avatar: freezed == avatar
          ? _value.avatar
          : avatar // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$UserUpdateInputModelImpl implements _UserUpdateInputModel {
  const _$UserUpdateInputModelImpl({this.username, this.avatar});

  factory _$UserUpdateInputModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$UserUpdateInputModelImplFromJson(json);

  @override
  final String? username;
  @override
  final String? avatar;

  @override
  String toString() {
    return 'UserUpdateInputModel(username: $username, avatar: $avatar)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UserUpdateInputModelImpl &&
            (identical(other.username, username) ||
                other.username == username) &&
            (identical(other.avatar, avatar) || other.avatar == avatar));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, username, avatar);

  /// Create a copy of UserUpdateInputModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$UserUpdateInputModelImplCopyWith<_$UserUpdateInputModelImpl>
      get copyWith =>
          __$$UserUpdateInputModelImplCopyWithImpl<_$UserUpdateInputModelImpl>(
              this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$UserUpdateInputModelImplToJson(
      this,
    );
  }
}

abstract class _UserUpdateInputModel implements UserUpdateInputModel {
  const factory _UserUpdateInputModel(
      {final String? username,
      final String? avatar}) = _$UserUpdateInputModelImpl;

  factory _UserUpdateInputModel.fromJson(Map<String, dynamic> json) =
      _$UserUpdateInputModelImpl.fromJson;

  @override
  String? get username;
  @override
  String? get avatar;

  /// Create a copy of UserUpdateInputModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$UserUpdateInputModelImplCopyWith<_$UserUpdateInputModelImpl>
      get copyWith => throw _privateConstructorUsedError;
}
