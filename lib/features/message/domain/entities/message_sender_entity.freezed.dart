// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'message_sender_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$MessageSenderEntity {
  String get userId => throw _privateConstructorUsedError;
  String? get username => throw _privateConstructorUsedError;
  String? get avatarUrl => throw _privateConstructorUsedError;

  /// Create a copy of MessageSenderEntity
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $MessageSenderEntityCopyWith<MessageSenderEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MessageSenderEntityCopyWith<$Res> {
  factory $MessageSenderEntityCopyWith(
          MessageSenderEntity value, $Res Function(MessageSenderEntity) then) =
      _$MessageSenderEntityCopyWithImpl<$Res, MessageSenderEntity>;
  @useResult
  $Res call({String userId, String? username, String? avatarUrl});
}

/// @nodoc
class _$MessageSenderEntityCopyWithImpl<$Res, $Val extends MessageSenderEntity>
    implements $MessageSenderEntityCopyWith<$Res> {
  _$MessageSenderEntityCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of MessageSenderEntity
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userId = null,
    Object? username = freezed,
    Object? avatarUrl = freezed,
  }) {
    return _then(_value.copyWith(
      userId: null == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String,
      username: freezed == username
          ? _value.username
          : username // ignore: cast_nullable_to_non_nullable
              as String?,
      avatarUrl: freezed == avatarUrl
          ? _value.avatarUrl
          : avatarUrl // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$MessageSenderEntityImplCopyWith<$Res>
    implements $MessageSenderEntityCopyWith<$Res> {
  factory _$$MessageSenderEntityImplCopyWith(_$MessageSenderEntityImpl value,
          $Res Function(_$MessageSenderEntityImpl) then) =
      __$$MessageSenderEntityImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String userId, String? username, String? avatarUrl});
}

/// @nodoc
class __$$MessageSenderEntityImplCopyWithImpl<$Res>
    extends _$MessageSenderEntityCopyWithImpl<$Res, _$MessageSenderEntityImpl>
    implements _$$MessageSenderEntityImplCopyWith<$Res> {
  __$$MessageSenderEntityImplCopyWithImpl(_$MessageSenderEntityImpl _value,
      $Res Function(_$MessageSenderEntityImpl) _then)
      : super(_value, _then);

  /// Create a copy of MessageSenderEntity
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userId = null,
    Object? username = freezed,
    Object? avatarUrl = freezed,
  }) {
    return _then(_$MessageSenderEntityImpl(
      userId: null == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String,
      username: freezed == username
          ? _value.username
          : username // ignore: cast_nullable_to_non_nullable
              as String?,
      avatarUrl: freezed == avatarUrl
          ? _value.avatarUrl
          : avatarUrl // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$MessageSenderEntityImpl implements _MessageSenderEntity {
  const _$MessageSenderEntityImpl(
      {required this.userId, this.username, this.avatarUrl});

  @override
  final String userId;
  @override
  final String? username;
  @override
  final String? avatarUrl;

  @override
  String toString() {
    return 'MessageSenderEntity(userId: $userId, username: $username, avatarUrl: $avatarUrl)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MessageSenderEntityImpl &&
            (identical(other.userId, userId) || other.userId == userId) &&
            (identical(other.username, username) ||
                other.username == username) &&
            (identical(other.avatarUrl, avatarUrl) ||
                other.avatarUrl == avatarUrl));
  }

  @override
  int get hashCode => Object.hash(runtimeType, userId, username, avatarUrl);

  /// Create a copy of MessageSenderEntity
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$MessageSenderEntityImplCopyWith<_$MessageSenderEntityImpl> get copyWith =>
      __$$MessageSenderEntityImplCopyWithImpl<_$MessageSenderEntityImpl>(
          this, _$identity);
}

abstract class _MessageSenderEntity implements MessageSenderEntity {
  const factory _MessageSenderEntity(
      {required final String userId,
      final String? username,
      final String? avatarUrl}) = _$MessageSenderEntityImpl;

  @override
  String get userId;
  @override
  String? get username;
  @override
  String? get avatarUrl;

  /// Create a copy of MessageSenderEntity
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$MessageSenderEntityImplCopyWith<_$MessageSenderEntityImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
