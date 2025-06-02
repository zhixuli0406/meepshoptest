// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'reactions_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$ReactionDetailEntity {
  ReactionType get type => throw _privateConstructorUsedError;
  int get count => throw _privateConstructorUsedError;

  /// Create a copy of ReactionDetailEntity
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ReactionDetailEntityCopyWith<ReactionDetailEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ReactionDetailEntityCopyWith<$Res> {
  factory $ReactionDetailEntityCopyWith(ReactionDetailEntity value,
          $Res Function(ReactionDetailEntity) then) =
      _$ReactionDetailEntityCopyWithImpl<$Res, ReactionDetailEntity>;
  @useResult
  $Res call({ReactionType type, int count});
}

/// @nodoc
class _$ReactionDetailEntityCopyWithImpl<$Res,
        $Val extends ReactionDetailEntity>
    implements $ReactionDetailEntityCopyWith<$Res> {
  _$ReactionDetailEntityCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ReactionDetailEntity
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? type = null,
    Object? count = null,
  }) {
    return _then(_value.copyWith(
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as ReactionType,
      count: null == count
          ? _value.count
          : count // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ReactionDetailEntityImplCopyWith<$Res>
    implements $ReactionDetailEntityCopyWith<$Res> {
  factory _$$ReactionDetailEntityImplCopyWith(_$ReactionDetailEntityImpl value,
          $Res Function(_$ReactionDetailEntityImpl) then) =
      __$$ReactionDetailEntityImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({ReactionType type, int count});
}

/// @nodoc
class __$$ReactionDetailEntityImplCopyWithImpl<$Res>
    extends _$ReactionDetailEntityCopyWithImpl<$Res, _$ReactionDetailEntityImpl>
    implements _$$ReactionDetailEntityImplCopyWith<$Res> {
  __$$ReactionDetailEntityImplCopyWithImpl(_$ReactionDetailEntityImpl _value,
      $Res Function(_$ReactionDetailEntityImpl) _then)
      : super(_value, _then);

  /// Create a copy of ReactionDetailEntity
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? type = null,
    Object? count = null,
  }) {
    return _then(_$ReactionDetailEntityImpl(
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as ReactionType,
      count: null == count
          ? _value.count
          : count // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$ReactionDetailEntityImpl implements _ReactionDetailEntity {
  const _$ReactionDetailEntityImpl({required this.type, required this.count});

  @override
  final ReactionType type;
  @override
  final int count;

  @override
  String toString() {
    return 'ReactionDetailEntity(type: $type, count: $count)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ReactionDetailEntityImpl &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.count, count) || other.count == count));
  }

  @override
  int get hashCode => Object.hash(runtimeType, type, count);

  /// Create a copy of ReactionDetailEntity
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ReactionDetailEntityImplCopyWith<_$ReactionDetailEntityImpl>
      get copyWith =>
          __$$ReactionDetailEntityImplCopyWithImpl<_$ReactionDetailEntityImpl>(
              this, _$identity);
}

abstract class _ReactionDetailEntity implements ReactionDetailEntity {
  const factory _ReactionDetailEntity(
      {required final ReactionType type,
      required final int count}) = _$ReactionDetailEntityImpl;

  @override
  ReactionType get type;
  @override
  int get count;

  /// Create a copy of ReactionDetailEntity
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ReactionDetailEntityImplCopyWith<_$ReactionDetailEntityImpl>
      get copyWith => throw _privateConstructorUsedError;
}
