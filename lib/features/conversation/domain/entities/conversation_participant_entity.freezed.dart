// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'conversation_participant_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$ConversationParticipantEntity {
  String get userId => throw _privateConstructorUsedError;
  String? get username => throw _privateConstructorUsedError;
  String? get avatarUrl => throw _privateConstructorUsedError;

  /// Create a copy of ConversationParticipantEntity
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ConversationParticipantEntityCopyWith<ConversationParticipantEntity>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ConversationParticipantEntityCopyWith<$Res> {
  factory $ConversationParticipantEntityCopyWith(
          ConversationParticipantEntity value,
          $Res Function(ConversationParticipantEntity) then) =
      _$ConversationParticipantEntityCopyWithImpl<$Res,
          ConversationParticipantEntity>;
  @useResult
  $Res call({String userId, String? username, String? avatarUrl});
}

/// @nodoc
class _$ConversationParticipantEntityCopyWithImpl<$Res,
        $Val extends ConversationParticipantEntity>
    implements $ConversationParticipantEntityCopyWith<$Res> {
  _$ConversationParticipantEntityCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ConversationParticipantEntity
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
abstract class _$$ConversationParticipantEntityImplCopyWith<$Res>
    implements $ConversationParticipantEntityCopyWith<$Res> {
  factory _$$ConversationParticipantEntityImplCopyWith(
          _$ConversationParticipantEntityImpl value,
          $Res Function(_$ConversationParticipantEntityImpl) then) =
      __$$ConversationParticipantEntityImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String userId, String? username, String? avatarUrl});
}

/// @nodoc
class __$$ConversationParticipantEntityImplCopyWithImpl<$Res>
    extends _$ConversationParticipantEntityCopyWithImpl<$Res,
        _$ConversationParticipantEntityImpl>
    implements _$$ConversationParticipantEntityImplCopyWith<$Res> {
  __$$ConversationParticipantEntityImplCopyWithImpl(
      _$ConversationParticipantEntityImpl _value,
      $Res Function(_$ConversationParticipantEntityImpl) _then)
      : super(_value, _then);

  /// Create a copy of ConversationParticipantEntity
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userId = null,
    Object? username = freezed,
    Object? avatarUrl = freezed,
  }) {
    return _then(_$ConversationParticipantEntityImpl(
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

class _$ConversationParticipantEntityImpl
    implements _ConversationParticipantEntity {
  const _$ConversationParticipantEntityImpl(
      {required this.userId, this.username, this.avatarUrl});

  @override
  final String userId;
  @override
  final String? username;
  @override
  final String? avatarUrl;

  @override
  String toString() {
    return 'ConversationParticipantEntity(userId: $userId, username: $username, avatarUrl: $avatarUrl)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ConversationParticipantEntityImpl &&
            (identical(other.userId, userId) || other.userId == userId) &&
            (identical(other.username, username) ||
                other.username == username) &&
            (identical(other.avatarUrl, avatarUrl) ||
                other.avatarUrl == avatarUrl));
  }

  @override
  int get hashCode => Object.hash(runtimeType, userId, username, avatarUrl);

  /// Create a copy of ConversationParticipantEntity
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ConversationParticipantEntityImplCopyWith<
          _$ConversationParticipantEntityImpl>
      get copyWith => __$$ConversationParticipantEntityImplCopyWithImpl<
          _$ConversationParticipantEntityImpl>(this, _$identity);
}

abstract class _ConversationParticipantEntity
    implements ConversationParticipantEntity {
  const factory _ConversationParticipantEntity(
      {required final String userId,
      final String? username,
      final String? avatarUrl}) = _$ConversationParticipantEntityImpl;

  @override
  String get userId;
  @override
  String? get username;
  @override
  String? get avatarUrl;

  /// Create a copy of ConversationParticipantEntity
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ConversationParticipantEntityImplCopyWith<
          _$ConversationParticipantEntityImpl>
      get copyWith => throw _privateConstructorUsedError;
}
