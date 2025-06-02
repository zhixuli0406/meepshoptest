// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'reaction_detail_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

ReactionDetailModel _$ReactionDetailModelFromJson(Map<String, dynamic> json) {
  return _ReactionDetailModel.fromJson(json);
}

/// @nodoc
mixin _$ReactionDetailModel {
  String get type => throw _privateConstructorUsedError;
  List<int> get userIds => throw _privateConstructorUsedError;

  /// Serializes this ReactionDetailModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ReactionDetailModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ReactionDetailModelCopyWith<ReactionDetailModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ReactionDetailModelCopyWith<$Res> {
  factory $ReactionDetailModelCopyWith(
          ReactionDetailModel value, $Res Function(ReactionDetailModel) then) =
      _$ReactionDetailModelCopyWithImpl<$Res, ReactionDetailModel>;
  @useResult
  $Res call({String type, List<int> userIds});
}

/// @nodoc
class _$ReactionDetailModelCopyWithImpl<$Res, $Val extends ReactionDetailModel>
    implements $ReactionDetailModelCopyWith<$Res> {
  _$ReactionDetailModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ReactionDetailModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? type = null,
    Object? userIds = null,
  }) {
    return _then(_value.copyWith(
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String,
      userIds: null == userIds
          ? _value.userIds
          : userIds // ignore: cast_nullable_to_non_nullable
              as List<int>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ReactionDetailModelImplCopyWith<$Res>
    implements $ReactionDetailModelCopyWith<$Res> {
  factory _$$ReactionDetailModelImplCopyWith(_$ReactionDetailModelImpl value,
          $Res Function(_$ReactionDetailModelImpl) then) =
      __$$ReactionDetailModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String type, List<int> userIds});
}

/// @nodoc
class __$$ReactionDetailModelImplCopyWithImpl<$Res>
    extends _$ReactionDetailModelCopyWithImpl<$Res, _$ReactionDetailModelImpl>
    implements _$$ReactionDetailModelImplCopyWith<$Res> {
  __$$ReactionDetailModelImplCopyWithImpl(_$ReactionDetailModelImpl _value,
      $Res Function(_$ReactionDetailModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of ReactionDetailModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? type = null,
    Object? userIds = null,
  }) {
    return _then(_$ReactionDetailModelImpl(
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String,
      userIds: null == userIds
          ? _value._userIds
          : userIds // ignore: cast_nullable_to_non_nullable
              as List<int>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ReactionDetailModelImpl implements _ReactionDetailModel {
  const _$ReactionDetailModelImpl(
      {required this.type, required final List<int> userIds})
      : _userIds = userIds;

  factory _$ReactionDetailModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$ReactionDetailModelImplFromJson(json);

  @override
  final String type;
  final List<int> _userIds;
  @override
  List<int> get userIds {
    if (_userIds is EqualUnmodifiableListView) return _userIds;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_userIds);
  }

  @override
  String toString() {
    return 'ReactionDetailModel(type: $type, userIds: $userIds)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ReactionDetailModelImpl &&
            (identical(other.type, type) || other.type == type) &&
            const DeepCollectionEquality().equals(other._userIds, _userIds));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType, type, const DeepCollectionEquality().hash(_userIds));

  /// Create a copy of ReactionDetailModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ReactionDetailModelImplCopyWith<_$ReactionDetailModelImpl> get copyWith =>
      __$$ReactionDetailModelImplCopyWithImpl<_$ReactionDetailModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ReactionDetailModelImplToJson(
      this,
    );
  }
}

abstract class _ReactionDetailModel implements ReactionDetailModel {
  const factory _ReactionDetailModel(
      {required final String type,
      required final List<int> userIds}) = _$ReactionDetailModelImpl;

  factory _ReactionDetailModel.fromJson(Map<String, dynamic> json) =
      _$ReactionDetailModelImpl.fromJson;

  @override
  String get type;
  @override
  List<int> get userIds;

  /// Create a copy of ReactionDetailModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ReactionDetailModelImplCopyWith<_$ReactionDetailModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
