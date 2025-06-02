// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'auth_response_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

AuthResponseDataModel _$AuthResponseDataModelFromJson(
    Map<String, dynamic> json) {
  return _AuthResponseDataModel.fromJson(json);
}

/// @nodoc
mixin _$AuthResponseDataModel {
  UserModel get user => throw _privateConstructorUsedError;

  /// Serializes this AuthResponseDataModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of AuthResponseDataModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $AuthResponseDataModelCopyWith<AuthResponseDataModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AuthResponseDataModelCopyWith<$Res> {
  factory $AuthResponseDataModelCopyWith(AuthResponseDataModel value,
          $Res Function(AuthResponseDataModel) then) =
      _$AuthResponseDataModelCopyWithImpl<$Res, AuthResponseDataModel>;
  @useResult
  $Res call({UserModel user});

  $UserModelCopyWith<$Res> get user;
}

/// @nodoc
class _$AuthResponseDataModelCopyWithImpl<$Res,
        $Val extends AuthResponseDataModel>
    implements $AuthResponseDataModelCopyWith<$Res> {
  _$AuthResponseDataModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of AuthResponseDataModel
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
              as UserModel,
    ) as $Val);
  }

  /// Create a copy of AuthResponseDataModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $UserModelCopyWith<$Res> get user {
    return $UserModelCopyWith<$Res>(_value.user, (value) {
      return _then(_value.copyWith(user: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$AuthResponseDataModelImplCopyWith<$Res>
    implements $AuthResponseDataModelCopyWith<$Res> {
  factory _$$AuthResponseDataModelImplCopyWith(
          _$AuthResponseDataModelImpl value,
          $Res Function(_$AuthResponseDataModelImpl) then) =
      __$$AuthResponseDataModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({UserModel user});

  @override
  $UserModelCopyWith<$Res> get user;
}

/// @nodoc
class __$$AuthResponseDataModelImplCopyWithImpl<$Res>
    extends _$AuthResponseDataModelCopyWithImpl<$Res,
        _$AuthResponseDataModelImpl>
    implements _$$AuthResponseDataModelImplCopyWith<$Res> {
  __$$AuthResponseDataModelImplCopyWithImpl(_$AuthResponseDataModelImpl _value,
      $Res Function(_$AuthResponseDataModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of AuthResponseDataModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? user = null,
  }) {
    return _then(_$AuthResponseDataModelImpl(
      user: null == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as UserModel,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$AuthResponseDataModelImpl implements _AuthResponseDataModel {
  const _$AuthResponseDataModelImpl({required this.user});

  factory _$AuthResponseDataModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$AuthResponseDataModelImplFromJson(json);

  @override
  final UserModel user;

  @override
  String toString() {
    return 'AuthResponseDataModel(user: $user)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AuthResponseDataModelImpl &&
            (identical(other.user, user) || other.user == user));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, user);

  /// Create a copy of AuthResponseDataModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$AuthResponseDataModelImplCopyWith<_$AuthResponseDataModelImpl>
      get copyWith => __$$AuthResponseDataModelImplCopyWithImpl<
          _$AuthResponseDataModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$AuthResponseDataModelImplToJson(
      this,
    );
  }
}

abstract class _AuthResponseDataModel implements AuthResponseDataModel {
  const factory _AuthResponseDataModel({required final UserModel user}) =
      _$AuthResponseDataModelImpl;

  factory _AuthResponseDataModel.fromJson(Map<String, dynamic> json) =
      _$AuthResponseDataModelImpl.fromJson;

  @override
  UserModel get user;

  /// Create a copy of AuthResponseDataModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$AuthResponseDataModelImplCopyWith<_$AuthResponseDataModelImpl>
      get copyWith => throw _privateConstructorUsedError;
}

AuthResponseModel _$AuthResponseModelFromJson(Map<String, dynamic> json) {
  return _AuthResponseModel.fromJson(json);
}

/// @nodoc
mixin _$AuthResponseModel {
  String get status => throw _privateConstructorUsedError;
  String get token => throw _privateConstructorUsedError;
  AuthResponseDataModel get data => throw _privateConstructorUsedError;

  /// Serializes this AuthResponseModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of AuthResponseModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $AuthResponseModelCopyWith<AuthResponseModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AuthResponseModelCopyWith<$Res> {
  factory $AuthResponseModelCopyWith(
          AuthResponseModel value, $Res Function(AuthResponseModel) then) =
      _$AuthResponseModelCopyWithImpl<$Res, AuthResponseModel>;
  @useResult
  $Res call({String status, String token, AuthResponseDataModel data});

  $AuthResponseDataModelCopyWith<$Res> get data;
}

/// @nodoc
class _$AuthResponseModelCopyWithImpl<$Res, $Val extends AuthResponseModel>
    implements $AuthResponseModelCopyWith<$Res> {
  _$AuthResponseModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of AuthResponseModel
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
              as AuthResponseDataModel,
    ) as $Val);
  }

  /// Create a copy of AuthResponseModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $AuthResponseDataModelCopyWith<$Res> get data {
    return $AuthResponseDataModelCopyWith<$Res>(_value.data, (value) {
      return _then(_value.copyWith(data: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$AuthResponseModelImplCopyWith<$Res>
    implements $AuthResponseModelCopyWith<$Res> {
  factory _$$AuthResponseModelImplCopyWith(_$AuthResponseModelImpl value,
          $Res Function(_$AuthResponseModelImpl) then) =
      __$$AuthResponseModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String status, String token, AuthResponseDataModel data});

  @override
  $AuthResponseDataModelCopyWith<$Res> get data;
}

/// @nodoc
class __$$AuthResponseModelImplCopyWithImpl<$Res>
    extends _$AuthResponseModelCopyWithImpl<$Res, _$AuthResponseModelImpl>
    implements _$$AuthResponseModelImplCopyWith<$Res> {
  __$$AuthResponseModelImplCopyWithImpl(_$AuthResponseModelImpl _value,
      $Res Function(_$AuthResponseModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of AuthResponseModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? token = null,
    Object? data = null,
  }) {
    return _then(_$AuthResponseModelImpl(
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
              as AuthResponseDataModel,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$AuthResponseModelImpl implements _AuthResponseModel {
  const _$AuthResponseModelImpl(
      {required this.status, required this.token, required this.data});

  factory _$AuthResponseModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$AuthResponseModelImplFromJson(json);

  @override
  final String status;
  @override
  final String token;
  @override
  final AuthResponseDataModel data;

  @override
  String toString() {
    return 'AuthResponseModel(status: $status, token: $token, data: $data)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AuthResponseModelImpl &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.token, token) || other.token == token) &&
            (identical(other.data, data) || other.data == data));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, status, token, data);

  /// Create a copy of AuthResponseModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$AuthResponseModelImplCopyWith<_$AuthResponseModelImpl> get copyWith =>
      __$$AuthResponseModelImplCopyWithImpl<_$AuthResponseModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$AuthResponseModelImplToJson(
      this,
    );
  }
}

abstract class _AuthResponseModel implements AuthResponseModel {
  const factory _AuthResponseModel(
      {required final String status,
      required final String token,
      required final AuthResponseDataModel data}) = _$AuthResponseModelImpl;

  factory _AuthResponseModel.fromJson(Map<String, dynamic> json) =
      _$AuthResponseModelImpl.fromJson;

  @override
  String get status;
  @override
  String get token;
  @override
  AuthResponseDataModel get data;

  /// Create a copy of AuthResponseModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$AuthResponseModelImplCopyWith<_$AuthResponseModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
