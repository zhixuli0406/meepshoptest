// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'message_sender_api_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

MessageSenderApiModel _$MessageSenderApiModelFromJson(
    Map<String, dynamic> json) {
  return _MessageSenderApiModel.fromJson(json);
}

/// @nodoc
mixin _$MessageSenderApiModel {
  @JsonKey(name: '_id')
  String? get userId => throw _privateConstructorUsedError;
  @JsonKey(name: 'username')
  String? get user =>
      throw _privateConstructorUsedError; // In swagger this is 'user', assuming it's username
  String? get avatar => throw _privateConstructorUsedError;

  /// Serializes this MessageSenderApiModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of MessageSenderApiModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $MessageSenderApiModelCopyWith<MessageSenderApiModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MessageSenderApiModelCopyWith<$Res> {
  factory $MessageSenderApiModelCopyWith(MessageSenderApiModel value,
          $Res Function(MessageSenderApiModel) then) =
      _$MessageSenderApiModelCopyWithImpl<$Res, MessageSenderApiModel>;
  @useResult
  $Res call(
      {@JsonKey(name: '_id') String? userId,
      @JsonKey(name: 'username') String? user,
      String? avatar});
}

/// @nodoc
class _$MessageSenderApiModelCopyWithImpl<$Res,
        $Val extends MessageSenderApiModel>
    implements $MessageSenderApiModelCopyWith<$Res> {
  _$MessageSenderApiModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of MessageSenderApiModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userId = freezed,
    Object? user = freezed,
    Object? avatar = freezed,
  }) {
    return _then(_value.copyWith(
      userId: freezed == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String?,
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
abstract class _$$MessageSenderApiModelImplCopyWith<$Res>
    implements $MessageSenderApiModelCopyWith<$Res> {
  factory _$$MessageSenderApiModelImplCopyWith(
          _$MessageSenderApiModelImpl value,
          $Res Function(_$MessageSenderApiModelImpl) then) =
      __$$MessageSenderApiModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: '_id') String? userId,
      @JsonKey(name: 'username') String? user,
      String? avatar});
}

/// @nodoc
class __$$MessageSenderApiModelImplCopyWithImpl<$Res>
    extends _$MessageSenderApiModelCopyWithImpl<$Res,
        _$MessageSenderApiModelImpl>
    implements _$$MessageSenderApiModelImplCopyWith<$Res> {
  __$$MessageSenderApiModelImplCopyWithImpl(_$MessageSenderApiModelImpl _value,
      $Res Function(_$MessageSenderApiModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of MessageSenderApiModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userId = freezed,
    Object? user = freezed,
    Object? avatar = freezed,
  }) {
    return _then(_$MessageSenderApiModelImpl(
      userId: freezed == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String?,
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
class _$MessageSenderApiModelImpl implements _MessageSenderApiModel {
  const _$MessageSenderApiModelImpl(
      {@JsonKey(name: '_id') this.userId,
      @JsonKey(name: 'username') this.user,
      this.avatar});

  factory _$MessageSenderApiModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$MessageSenderApiModelImplFromJson(json);

  @override
  @JsonKey(name: '_id')
  final String? userId;
  @override
  @JsonKey(name: 'username')
  final String? user;
// In swagger this is 'user', assuming it's username
  @override
  final String? avatar;

  @override
  String toString() {
    return 'MessageSenderApiModel(userId: $userId, user: $user, avatar: $avatar)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MessageSenderApiModelImpl &&
            (identical(other.userId, userId) || other.userId == userId) &&
            (identical(other.user, user) || other.user == user) &&
            (identical(other.avatar, avatar) || other.avatar == avatar));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, userId, user, avatar);

  /// Create a copy of MessageSenderApiModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$MessageSenderApiModelImplCopyWith<_$MessageSenderApiModelImpl>
      get copyWith => __$$MessageSenderApiModelImplCopyWithImpl<
          _$MessageSenderApiModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$MessageSenderApiModelImplToJson(
      this,
    );
  }
}

abstract class _MessageSenderApiModel implements MessageSenderApiModel {
  const factory _MessageSenderApiModel(
      {@JsonKey(name: '_id') final String? userId,
      @JsonKey(name: 'username') final String? user,
      final String? avatar}) = _$MessageSenderApiModelImpl;

  factory _MessageSenderApiModel.fromJson(Map<String, dynamic> json) =
      _$MessageSenderApiModelImpl.fromJson;

  @override
  @JsonKey(name: '_id')
  String? get userId;
  @override
  @JsonKey(name: 'username')
  String? get user; // In swagger this is 'user', assuming it's username
  @override
  String? get avatar;

  /// Create a copy of MessageSenderApiModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$MessageSenderApiModelImplCopyWith<_$MessageSenderApiModelImpl>
      get copyWith => throw _privateConstructorUsedError;
}
