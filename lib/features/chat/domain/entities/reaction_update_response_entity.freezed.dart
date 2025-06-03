// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'reaction_update_response_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$ReactionUpdateResponseEntity {
  String get messageId =>
      throw _privateConstructorUsedError; // Assuming API returns a map like {"like": 1, "love": 0}
// which needs to be converted to List<ReactionDetailEntity>
// For now, let's expect the repository to handle this conversion if needed
// or expect the API model to represent this structure directly.
// Let's keep it simple: the API response structure is { messageId: "xxx", reactions: {"like":0, ...} }
// So, the entity should reflect this.
  Map<String, int> get reactions => throw _privateConstructorUsedError;

  /// Create a copy of ReactionUpdateResponseEntity
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ReactionUpdateResponseEntityCopyWith<ReactionUpdateResponseEntity>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ReactionUpdateResponseEntityCopyWith<$Res> {
  factory $ReactionUpdateResponseEntityCopyWith(
          ReactionUpdateResponseEntity value,
          $Res Function(ReactionUpdateResponseEntity) then) =
      _$ReactionUpdateResponseEntityCopyWithImpl<$Res,
          ReactionUpdateResponseEntity>;
  @useResult
  $Res call({String messageId, Map<String, int> reactions});
}

/// @nodoc
class _$ReactionUpdateResponseEntityCopyWithImpl<$Res,
        $Val extends ReactionUpdateResponseEntity>
    implements $ReactionUpdateResponseEntityCopyWith<$Res> {
  _$ReactionUpdateResponseEntityCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ReactionUpdateResponseEntity
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
abstract class _$$ReactionUpdateResponseEntityImplCopyWith<$Res>
    implements $ReactionUpdateResponseEntityCopyWith<$Res> {
  factory _$$ReactionUpdateResponseEntityImplCopyWith(
          _$ReactionUpdateResponseEntityImpl value,
          $Res Function(_$ReactionUpdateResponseEntityImpl) then) =
      __$$ReactionUpdateResponseEntityImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String messageId, Map<String, int> reactions});
}

/// @nodoc
class __$$ReactionUpdateResponseEntityImplCopyWithImpl<$Res>
    extends _$ReactionUpdateResponseEntityCopyWithImpl<$Res,
        _$ReactionUpdateResponseEntityImpl>
    implements _$$ReactionUpdateResponseEntityImplCopyWith<$Res> {
  __$$ReactionUpdateResponseEntityImplCopyWithImpl(
      _$ReactionUpdateResponseEntityImpl _value,
      $Res Function(_$ReactionUpdateResponseEntityImpl) _then)
      : super(_value, _then);

  /// Create a copy of ReactionUpdateResponseEntity
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? messageId = null,
    Object? reactions = null,
  }) {
    return _then(_$ReactionUpdateResponseEntityImpl(
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

class _$ReactionUpdateResponseEntityImpl
    implements _ReactionUpdateResponseEntity {
  const _$ReactionUpdateResponseEntityImpl(
      {required this.messageId, required final Map<String, int> reactions})
      : _reactions = reactions;

  @override
  final String messageId;
// Assuming API returns a map like {"like": 1, "love": 0}
// which needs to be converted to List<ReactionDetailEntity>
// For now, let's expect the repository to handle this conversion if needed
// or expect the API model to represent this structure directly.
// Let's keep it simple: the API response structure is { messageId: "xxx", reactions: {"like":0, ...} }
// So, the entity should reflect this.
  final Map<String, int> _reactions;
// Assuming API returns a map like {"like": 1, "love": 0}
// which needs to be converted to List<ReactionDetailEntity>
// For now, let's expect the repository to handle this conversion if needed
// or expect the API model to represent this structure directly.
// Let's keep it simple: the API response structure is { messageId: "xxx", reactions: {"like":0, ...} }
// So, the entity should reflect this.
  @override
  Map<String, int> get reactions {
    if (_reactions is EqualUnmodifiableMapView) return _reactions;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(_reactions);
  }

  @override
  String toString() {
    return 'ReactionUpdateResponseEntity(messageId: $messageId, reactions: $reactions)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ReactionUpdateResponseEntityImpl &&
            (identical(other.messageId, messageId) ||
                other.messageId == messageId) &&
            const DeepCollectionEquality()
                .equals(other._reactions, _reactions));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, messageId, const DeepCollectionEquality().hash(_reactions));

  /// Create a copy of ReactionUpdateResponseEntity
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ReactionUpdateResponseEntityImplCopyWith<
          _$ReactionUpdateResponseEntityImpl>
      get copyWith => __$$ReactionUpdateResponseEntityImplCopyWithImpl<
          _$ReactionUpdateResponseEntityImpl>(this, _$identity);
}

abstract class _ReactionUpdateResponseEntity
    implements ReactionUpdateResponseEntity {
  const factory _ReactionUpdateResponseEntity(
          {required final String messageId,
          required final Map<String, int> reactions}) =
      _$ReactionUpdateResponseEntityImpl;

  @override
  String
      get messageId; // Assuming API returns a map like {"like": 1, "love": 0}
// which needs to be converted to List<ReactionDetailEntity>
// For now, let's expect the repository to handle this conversion if needed
// or expect the API model to represent this structure directly.
// Let's keep it simple: the API response structure is { messageId: "xxx", reactions: {"like":0, ...} }
// So, the entity should reflect this.
  @override
  Map<String, int> get reactions;

  /// Create a copy of ReactionUpdateResponseEntity
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ReactionUpdateResponseEntityImplCopyWith<
          _$ReactionUpdateResponseEntityImpl>
      get copyWith => throw _privateConstructorUsedError;
}
