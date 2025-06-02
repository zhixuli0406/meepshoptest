// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'conversation_input_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

ConversationInputModel _$ConversationInputModelFromJson(
    Map<String, dynamic> json) {
  return _ConversationInputModel.fromJson(json);
}

/// @nodoc
mixin _$ConversationInputModel {
  List<String> get participantIds => throw _privateConstructorUsedError;
  String? get title => throw _privateConstructorUsedError;

  /// Serializes this ConversationInputModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ConversationInputModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ConversationInputModelCopyWith<ConversationInputModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ConversationInputModelCopyWith<$Res> {
  factory $ConversationInputModelCopyWith(ConversationInputModel value,
          $Res Function(ConversationInputModel) then) =
      _$ConversationInputModelCopyWithImpl<$Res, ConversationInputModel>;
  @useResult
  $Res call({List<String> participantIds, String? title});
}

/// @nodoc
class _$ConversationInputModelCopyWithImpl<$Res,
        $Val extends ConversationInputModel>
    implements $ConversationInputModelCopyWith<$Res> {
  _$ConversationInputModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ConversationInputModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? participantIds = null,
    Object? title = freezed,
  }) {
    return _then(_value.copyWith(
      participantIds: null == participantIds
          ? _value.participantIds
          : participantIds // ignore: cast_nullable_to_non_nullable
              as List<String>,
      title: freezed == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ConversationInputModelImplCopyWith<$Res>
    implements $ConversationInputModelCopyWith<$Res> {
  factory _$$ConversationInputModelImplCopyWith(
          _$ConversationInputModelImpl value,
          $Res Function(_$ConversationInputModelImpl) then) =
      __$$ConversationInputModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<String> participantIds, String? title});
}

/// @nodoc
class __$$ConversationInputModelImplCopyWithImpl<$Res>
    extends _$ConversationInputModelCopyWithImpl<$Res,
        _$ConversationInputModelImpl>
    implements _$$ConversationInputModelImplCopyWith<$Res> {
  __$$ConversationInputModelImplCopyWithImpl(
      _$ConversationInputModelImpl _value,
      $Res Function(_$ConversationInputModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of ConversationInputModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? participantIds = null,
    Object? title = freezed,
  }) {
    return _then(_$ConversationInputModelImpl(
      participantIds: null == participantIds
          ? _value._participantIds
          : participantIds // ignore: cast_nullable_to_non_nullable
              as List<String>,
      title: freezed == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

@JsonSerializable(fieldRename: FieldRename.snake, explicitToJson: true)
class _$ConversationInputModelImpl implements _ConversationInputModel {
  const _$ConversationInputModelImpl(
      {required final List<String> participantIds, this.title})
      : _participantIds = participantIds;

  factory _$ConversationInputModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$ConversationInputModelImplFromJson(json);

  final List<String> _participantIds;
  @override
  List<String> get participantIds {
    if (_participantIds is EqualUnmodifiableListView) return _participantIds;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_participantIds);
  }

  @override
  final String? title;

  @override
  String toString() {
    return 'ConversationInputModel(participantIds: $participantIds, title: $title)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ConversationInputModelImpl &&
            const DeepCollectionEquality()
                .equals(other._participantIds, _participantIds) &&
            (identical(other.title, title) || other.title == title));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(_participantIds), title);

  /// Create a copy of ConversationInputModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ConversationInputModelImplCopyWith<_$ConversationInputModelImpl>
      get copyWith => __$$ConversationInputModelImplCopyWithImpl<
          _$ConversationInputModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ConversationInputModelImplToJson(
      this,
    );
  }
}

abstract class _ConversationInputModel implements ConversationInputModel {
  const factory _ConversationInputModel(
      {required final List<String> participantIds,
      final String? title}) = _$ConversationInputModelImpl;

  factory _ConversationInputModel.fromJson(Map<String, dynamic> json) =
      _$ConversationInputModelImpl.fromJson;

  @override
  List<String> get participantIds;
  @override
  String? get title;

  /// Create a copy of ConversationInputModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ConversationInputModelImplCopyWith<_$ConversationInputModelImpl>
      get copyWith => throw _privateConstructorUsedError;
}
