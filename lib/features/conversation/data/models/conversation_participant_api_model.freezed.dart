// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'conversation_participant_api_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

ConversationParticipantApiModel _$ConversationParticipantApiModelFromJson(
    Map<String, dynamic> json) {
  return _ConversationParticipantApiModel.fromJson(json);
}

/// @nodoc
mixin _$ConversationParticipantApiModel {
  String get userId => throw _privateConstructorUsedError;
  String? get user =>
      throw _privateConstructorUsedError; // In swagger this is 'user', assuming it's username
  String? get avatar => throw _privateConstructorUsedError;

  /// Serializes this ConversationParticipantApiModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ConversationParticipantApiModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ConversationParticipantApiModelCopyWith<ConversationParticipantApiModel>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ConversationParticipantApiModelCopyWith<$Res> {
  factory $ConversationParticipantApiModelCopyWith(
          ConversationParticipantApiModel value,
          $Res Function(ConversationParticipantApiModel) then) =
      _$ConversationParticipantApiModelCopyWithImpl<$Res,
          ConversationParticipantApiModel>;
  @useResult
  $Res call({String userId, String? user, String? avatar});
}

/// @nodoc
class _$ConversationParticipantApiModelCopyWithImpl<$Res,
        $Val extends ConversationParticipantApiModel>
    implements $ConversationParticipantApiModelCopyWith<$Res> {
  _$ConversationParticipantApiModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ConversationParticipantApiModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userId = null,
    Object? user = freezed,
    Object? avatar = freezed,
  }) {
    return _then(_value.copyWith(
      userId: null == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String,
      user: freezed == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as String?,
      avatar: freezed == avatar
          ? _value.avatar
          : avatar // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ConversationParticipantApiModelImplCopyWith<$Res>
    implements $ConversationParticipantApiModelCopyWith<$Res> {
  factory _$$ConversationParticipantApiModelImplCopyWith(
          _$ConversationParticipantApiModelImpl value,
          $Res Function(_$ConversationParticipantApiModelImpl) then) =
      __$$ConversationParticipantApiModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String userId, String? user, String? avatar});
}

/// @nodoc
class __$$ConversationParticipantApiModelImplCopyWithImpl<$Res>
    extends _$ConversationParticipantApiModelCopyWithImpl<$Res,
        _$ConversationParticipantApiModelImpl>
    implements _$$ConversationParticipantApiModelImplCopyWith<$Res> {
  __$$ConversationParticipantApiModelImplCopyWithImpl(
      _$ConversationParticipantApiModelImpl _value,
      $Res Function(_$ConversationParticipantApiModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of ConversationParticipantApiModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userId = null,
    Object? user = freezed,
    Object? avatar = freezed,
  }) {
    return _then(_$ConversationParticipantApiModelImpl(
      userId: null == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String,
      user: freezed == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as String?,
      avatar: freezed == avatar
          ? _value.avatar
          : avatar // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

@JsonSerializable(fieldRename: FieldRename.snake)
class _$ConversationParticipantApiModelImpl
    implements _ConversationParticipantApiModel {
  const _$ConversationParticipantApiModelImpl(
      {required this.userId, this.user, this.avatar});

  factory _$ConversationParticipantApiModelImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$ConversationParticipantApiModelImplFromJson(json);

  @override
  final String userId;
  @override
  final String? user;
// In swagger this is 'user', assuming it's username
  @override
  final String? avatar;

  @override
  String toString() {
    return 'ConversationParticipantApiModel(userId: $userId, user: $user, avatar: $avatar)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ConversationParticipantApiModelImpl &&
            (identical(other.userId, userId) || other.userId == userId) &&
            (identical(other.user, user) || other.user == user) &&
            (identical(other.avatar, avatar) || other.avatar == avatar));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, userId, user, avatar);

  /// Create a copy of ConversationParticipantApiModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ConversationParticipantApiModelImplCopyWith<
          _$ConversationParticipantApiModelImpl>
      get copyWith => __$$ConversationParticipantApiModelImplCopyWithImpl<
          _$ConversationParticipantApiModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ConversationParticipantApiModelImplToJson(
      this,
    );
  }
}

abstract class _ConversationParticipantApiModel
    implements ConversationParticipantApiModel {
  const factory _ConversationParticipantApiModel(
      {required final String userId,
      final String? user,
      final String? avatar}) = _$ConversationParticipantApiModelImpl;

  factory _ConversationParticipantApiModel.fromJson(Map<String, dynamic> json) =
      _$ConversationParticipantApiModelImpl.fromJson;

  @override
  String get userId;
  @override
  String? get user; // In swagger this is 'user', assuming it's username
  @override
  String? get avatar;

  /// Create a copy of ConversationParticipantApiModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ConversationParticipantApiModelImplCopyWith<
          _$ConversationParticipantApiModelImpl>
      get copyWith => throw _privateConstructorUsedError;
}
