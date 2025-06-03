// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'sender_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

SenderModel _$SenderModelFromJson(Map<String, dynamic> json) {
  return _SenderModel.fromJson(json);
}

/// @nodoc
mixin _$SenderModel {
  @JsonKey(name: '_id')
  String get userId => throw _privateConstructorUsedError;
  @JsonKey(name: 'username')
  String get user => throw _privateConstructorUsedError;
  String? get avatar => throw _privateConstructorUsedError;
  int? get legacyUserId => throw _privateConstructorUsedError;

  /// Serializes this SenderModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of SenderModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $SenderModelCopyWith<SenderModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SenderModelCopyWith<$Res> {
  factory $SenderModelCopyWith(
          SenderModel value, $Res Function(SenderModel) then) =
      _$SenderModelCopyWithImpl<$Res, SenderModel>;
  @useResult
  $Res call(
      {@JsonKey(name: '_id') String userId,
      @JsonKey(name: 'username') String user,
      String? avatar,
      int? legacyUserId});
}

/// @nodoc
class _$SenderModelCopyWithImpl<$Res, $Val extends SenderModel>
    implements $SenderModelCopyWith<$Res> {
  _$SenderModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of SenderModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userId = null,
    Object? user = null,
    Object? avatar = freezed,
    Object? legacyUserId = freezed,
  }) {
    return _then(_value.copyWith(
      userId: null == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String,
      user: null == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
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
abstract class _$$SenderModelImplCopyWith<$Res>
    implements $SenderModelCopyWith<$Res> {
  factory _$$SenderModelImplCopyWith(
          _$SenderModelImpl value, $Res Function(_$SenderModelImpl) then) =
      __$$SenderModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: '_id') String userId,
      @JsonKey(name: 'username') String user,
      String? avatar,
      int? legacyUserId});
}

/// @nodoc
class __$$SenderModelImplCopyWithImpl<$Res>
    extends _$SenderModelCopyWithImpl<$Res, _$SenderModelImpl>
    implements _$$SenderModelImplCopyWith<$Res> {
  __$$SenderModelImplCopyWithImpl(
      _$SenderModelImpl _value, $Res Function(_$SenderModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of SenderModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userId = null,
    Object? user = null,
    Object? avatar = freezed,
    Object? legacyUserId = freezed,
  }) {
    return _then(_$SenderModelImpl(
      userId: null == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String,
      user: null == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
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
class _$SenderModelImpl implements _SenderModel {
  const _$SenderModelImpl(
      {@JsonKey(name: '_id') required this.userId,
      @JsonKey(name: 'username') required this.user,
      this.avatar,
      this.legacyUserId});

  factory _$SenderModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$SenderModelImplFromJson(json);

  @override
  @JsonKey(name: '_id')
  final String userId;
  @override
  @JsonKey(name: 'username')
  final String user;
  @override
  final String? avatar;
  @override
  final int? legacyUserId;

  @override
  String toString() {
    return 'SenderModel(userId: $userId, user: $user, avatar: $avatar, legacyUserId: $legacyUserId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SenderModelImpl &&
            (identical(other.userId, userId) || other.userId == userId) &&
            (identical(other.user, user) || other.user == user) &&
            (identical(other.avatar, avatar) || other.avatar == avatar) &&
            (identical(other.legacyUserId, legacyUserId) ||
                other.legacyUserId == legacyUserId));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, userId, user, avatar, legacyUserId);

  /// Create a copy of SenderModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SenderModelImplCopyWith<_$SenderModelImpl> get copyWith =>
      __$$SenderModelImplCopyWithImpl<_$SenderModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$SenderModelImplToJson(
      this,
    );
  }
}

abstract class _SenderModel implements SenderModel {
  const factory _SenderModel(
      {@JsonKey(name: '_id') required final String userId,
      @JsonKey(name: 'username') required final String user,
      final String? avatar,
      final int? legacyUserId}) = _$SenderModelImpl;

  factory _SenderModel.fromJson(Map<String, dynamic> json) =
      _$SenderModelImpl.fromJson;

  @override
  @JsonKey(name: '_id')
  String get userId;
  @override
  @JsonKey(name: 'username')
  String get user;
  @override
  String? get avatar;
  @override
  int? get legacyUserId;

  /// Create a copy of SenderModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SenderModelImplCopyWith<_$SenderModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
