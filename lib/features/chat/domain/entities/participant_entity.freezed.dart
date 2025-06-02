// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'participant_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$ParticipantEntity {
  String get userId => throw _privateConstructorUsedError;
  String get user => throw _privateConstructorUsedError;
  String get avatar => throw _privateConstructorUsedError;

  /// Create a copy of ParticipantEntity
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ParticipantEntityCopyWith<ParticipantEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ParticipantEntityCopyWith<$Res> {
  factory $ParticipantEntityCopyWith(
          ParticipantEntity value, $Res Function(ParticipantEntity) then) =
      _$ParticipantEntityCopyWithImpl<$Res, ParticipantEntity>;
  @useResult
  $Res call({String userId, String user, String avatar});
}

/// @nodoc
class _$ParticipantEntityCopyWithImpl<$Res, $Val extends ParticipantEntity>
    implements $ParticipantEntityCopyWith<$Res> {
  _$ParticipantEntityCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ParticipantEntity
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userId = null,
    Object? user = null,
    Object? avatar = null,
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
      avatar: null == avatar
          ? _value.avatar
          : avatar // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ParticipantEntityImplCopyWith<$Res>
    implements $ParticipantEntityCopyWith<$Res> {
  factory _$$ParticipantEntityImplCopyWith(_$ParticipantEntityImpl value,
          $Res Function(_$ParticipantEntityImpl) then) =
      __$$ParticipantEntityImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String userId, String user, String avatar});
}

/// @nodoc
class __$$ParticipantEntityImplCopyWithImpl<$Res>
    extends _$ParticipantEntityCopyWithImpl<$Res, _$ParticipantEntityImpl>
    implements _$$ParticipantEntityImplCopyWith<$Res> {
  __$$ParticipantEntityImplCopyWithImpl(_$ParticipantEntityImpl _value,
      $Res Function(_$ParticipantEntityImpl) _then)
      : super(_value, _then);

  /// Create a copy of ParticipantEntity
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userId = null,
    Object? user = null,
    Object? avatar = null,
  }) {
    return _then(_$ParticipantEntityImpl(
      userId: null == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String,
      user: null == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as String,
      avatar: null == avatar
          ? _value.avatar
          : avatar // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$ParticipantEntityImpl implements _ParticipantEntity {
  const _$ParticipantEntityImpl(
      {required this.userId, required this.user, required this.avatar});

  @override
  final String userId;
  @override
  final String user;
  @override
  final String avatar;

  @override
  String toString() {
    return 'ParticipantEntity(userId: $userId, user: $user, avatar: $avatar)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ParticipantEntityImpl &&
            (identical(other.userId, userId) || other.userId == userId) &&
            (identical(other.user, user) || other.user == user) &&
            (identical(other.avatar, avatar) || other.avatar == avatar));
  }

  @override
  int get hashCode => Object.hash(runtimeType, userId, user, avatar);

  /// Create a copy of ParticipantEntity
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ParticipantEntityImplCopyWith<_$ParticipantEntityImpl> get copyWith =>
      __$$ParticipantEntityImplCopyWithImpl<_$ParticipantEntityImpl>(
          this, _$identity);
}

abstract class _ParticipantEntity implements ParticipantEntity {
  const factory _ParticipantEntity(
      {required final String userId,
      required final String user,
      required final String avatar}) = _$ParticipantEntityImpl;

  @override
  String get userId;
  @override
  String get user;
  @override
  String get avatar;

  /// Create a copy of ParticipantEntity
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ParticipantEntityImplCopyWith<_$ParticipantEntityImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
