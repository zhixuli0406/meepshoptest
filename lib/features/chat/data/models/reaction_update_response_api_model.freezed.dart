// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'reaction_update_response_api_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

ReactionUpdateResponseApiModel _$ReactionUpdateResponseApiModelFromJson(
    Map<String, dynamic> json) {
  return _ReactionUpdateResponseApiModel.fromJson(json);
}

/// @nodoc
mixin _$ReactionUpdateResponseApiModel {
  String get messageId => throw _privateConstructorUsedError;
  Map<String, int> get reactions => throw _privateConstructorUsedError;

  /// Serializes this ReactionUpdateResponseApiModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ReactionUpdateResponseApiModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ReactionUpdateResponseApiModelCopyWith<ReactionUpdateResponseApiModel>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ReactionUpdateResponseApiModelCopyWith<$Res> {
  factory $ReactionUpdateResponseApiModelCopyWith(
          ReactionUpdateResponseApiModel value,
          $Res Function(ReactionUpdateResponseApiModel) then) =
      _$ReactionUpdateResponseApiModelCopyWithImpl<$Res,
          ReactionUpdateResponseApiModel>;
  @useResult
  $Res call({String messageId, Map<String, int> reactions});
}

/// @nodoc
class _$ReactionUpdateResponseApiModelCopyWithImpl<$Res,
        $Val extends ReactionUpdateResponseApiModel>
    implements $ReactionUpdateResponseApiModelCopyWith<$Res> {
  _$ReactionUpdateResponseApiModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ReactionUpdateResponseApiModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? messageId = null,
    Object? reactions = null,
  }) {
    return _then(_value.copyWith(
      messageId: null == messageId
          ? _value.messageId
          : messageId // ignore: cast_nullable_to_non_nullable
              as String,
      reactions: null == reactions
          ? _value.reactions
          : reactions // ignore: cast_nullable_to_non_nullable
              as Map<String, int>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ReactionUpdateResponseApiModelImplCopyWith<$Res>
    implements $ReactionUpdateResponseApiModelCopyWith<$Res> {
  factory _$$ReactionUpdateResponseApiModelImplCopyWith(
          _$ReactionUpdateResponseApiModelImpl value,
          $Res Function(_$ReactionUpdateResponseApiModelImpl) then) =
      __$$ReactionUpdateResponseApiModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String messageId, Map<String, int> reactions});
}

/// @nodoc
class __$$ReactionUpdateResponseApiModelImplCopyWithImpl<$Res>
    extends _$ReactionUpdateResponseApiModelCopyWithImpl<$Res,
        _$ReactionUpdateResponseApiModelImpl>
    implements _$$ReactionUpdateResponseApiModelImplCopyWith<$Res> {
  __$$ReactionUpdateResponseApiModelImplCopyWithImpl(
      _$ReactionUpdateResponseApiModelImpl _value,
      $Res Function(_$ReactionUpdateResponseApiModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of ReactionUpdateResponseApiModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? messageId = null,
    Object? reactions = null,
  }) {
    return _then(_$ReactionUpdateResponseApiModelImpl(
      messageId: null == messageId
          ? _value.messageId
          : messageId // ignore: cast_nullable_to_non_nullable
              as String,
      reactions: null == reactions
          ? _value._reactions
          : reactions // ignore: cast_nullable_to_non_nullable
              as Map<String, int>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ReactionUpdateResponseApiModelImpl
    implements _ReactionUpdateResponseApiModel {
  const _$ReactionUpdateResponseApiModelImpl(
      {required this.messageId, required final Map<String, int> reactions})
      : _reactions = reactions;

  factory _$ReactionUpdateResponseApiModelImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$ReactionUpdateResponseApiModelImplFromJson(json);

  @override
  final String messageId;
  final Map<String, int> _reactions;
  @override
  Map<String, int> get reactions {
    if (_reactions is EqualUnmodifiableMapView) return _reactions;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(_reactions);
  }

  @override
  String toString() {
    return 'ReactionUpdateResponseApiModel(messageId: $messageId, reactions: $reactions)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ReactionUpdateResponseApiModelImpl &&
            (identical(other.messageId, messageId) ||
                other.messageId == messageId) &&
            const DeepCollectionEquality()
                .equals(other._reactions, _reactions));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType, messageId, const DeepCollectionEquality().hash(_reactions));

  /// Create a copy of ReactionUpdateResponseApiModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ReactionUpdateResponseApiModelImplCopyWith<
          _$ReactionUpdateResponseApiModelImpl>
      get copyWith => __$$ReactionUpdateResponseApiModelImplCopyWithImpl<
          _$ReactionUpdateResponseApiModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ReactionUpdateResponseApiModelImplToJson(
      this,
    );
  }
}

abstract class _ReactionUpdateResponseApiModel
    implements ReactionUpdateResponseApiModel {
  const factory _ReactionUpdateResponseApiModel(
          {required final String messageId,
          required final Map<String, int> reactions}) =
      _$ReactionUpdateResponseApiModelImpl;

  factory _ReactionUpdateResponseApiModel.fromJson(Map<String, dynamic> json) =
      _$ReactionUpdateResponseApiModelImpl.fromJson;

  @override
  String get messageId;
  @override
  Map<String, int> get reactions;

  /// Create a copy of ReactionUpdateResponseApiModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ReactionUpdateResponseApiModelImplCopyWith<
          _$ReactionUpdateResponseApiModelImpl>
      get copyWith => throw _privateConstructorUsedError;
}
