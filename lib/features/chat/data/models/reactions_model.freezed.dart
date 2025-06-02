// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'reactions_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

ReactionsModel _$ReactionsModelFromJson(Map<String, dynamic> json) {
  return _ReactionsModel.fromJson(json);
}

/// @nodoc
mixin _$ReactionsModel {
  int get like => throw _privateConstructorUsedError;
  int get love => throw _privateConstructorUsedError;
  int get laugh => throw _privateConstructorUsedError;

  /// Serializes this ReactionsModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ReactionsModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ReactionsModelCopyWith<ReactionsModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ReactionsModelCopyWith<$Res> {
  factory $ReactionsModelCopyWith(
          ReactionsModel value, $Res Function(ReactionsModel) then) =
      _$ReactionsModelCopyWithImpl<$Res, ReactionsModel>;
  @useResult
  $Res call({int like, int love, int laugh});
}

/// @nodoc
class _$ReactionsModelCopyWithImpl<$Res, $Val extends ReactionsModel>
    implements $ReactionsModelCopyWith<$Res> {
  _$ReactionsModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ReactionsModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? like = null,
    Object? love = null,
    Object? laugh = null,
  }) {
    return _then(_value.copyWith(
      like: null == like
          ? _value.like
          : like // ignore: cast_nullable_to_non_nullable
              as int,
      love: null == love
          ? _value.love
          : love // ignore: cast_nullable_to_non_nullable
              as int,
      laugh: null == laugh
          ? _value.laugh
          : laugh // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ReactionsModelImplCopyWith<$Res>
    implements $ReactionsModelCopyWith<$Res> {
  factory _$$ReactionsModelImplCopyWith(_$ReactionsModelImpl value,
          $Res Function(_$ReactionsModelImpl) then) =
      __$$ReactionsModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int like, int love, int laugh});
}

/// @nodoc
class __$$ReactionsModelImplCopyWithImpl<$Res>
    extends _$ReactionsModelCopyWithImpl<$Res, _$ReactionsModelImpl>
    implements _$$ReactionsModelImplCopyWith<$Res> {
  __$$ReactionsModelImplCopyWithImpl(
      _$ReactionsModelImpl _value, $Res Function(_$ReactionsModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of ReactionsModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? like = null,
    Object? love = null,
    Object? laugh = null,
  }) {
    return _then(_$ReactionsModelImpl(
      like: null == like
          ? _value.like
          : like // ignore: cast_nullable_to_non_nullable
              as int,
      love: null == love
          ? _value.love
          : love // ignore: cast_nullable_to_non_nullable
              as int,
      laugh: null == laugh
          ? _value.laugh
          : laugh // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ReactionsModelImpl implements _ReactionsModel {
  const _$ReactionsModelImpl(
      {required this.like, required this.love, required this.laugh});

  factory _$ReactionsModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$ReactionsModelImplFromJson(json);

  @override
  final int like;
  @override
  final int love;
  @override
  final int laugh;

  @override
  String toString() {
    return 'ReactionsModel(like: $like, love: $love, laugh: $laugh)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ReactionsModelImpl &&
            (identical(other.like, like) || other.like == like) &&
            (identical(other.love, love) || other.love == love) &&
            (identical(other.laugh, laugh) || other.laugh == laugh));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, like, love, laugh);

  /// Create a copy of ReactionsModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ReactionsModelImplCopyWith<_$ReactionsModelImpl> get copyWith =>
      __$$ReactionsModelImplCopyWithImpl<_$ReactionsModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ReactionsModelImplToJson(
      this,
    );
  }
}

abstract class _ReactionsModel implements ReactionsModel {
  const factory _ReactionsModel(
      {required final int like,
      required final int love,
      required final int laugh}) = _$ReactionsModelImpl;

  factory _ReactionsModel.fromJson(Map<String, dynamic> json) =
      _$ReactionsModelImpl.fromJson;

  @override
  int get like;
  @override
  int get love;
  @override
  int get laugh;

  /// Create a copy of ReactionsModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ReactionsModelImplCopyWith<_$ReactionsModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
