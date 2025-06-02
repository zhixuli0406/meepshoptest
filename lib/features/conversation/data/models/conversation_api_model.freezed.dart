// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'conversation_api_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

ConversationApiModel _$ConversationApiModelFromJson(Map<String, dynamic> json) {
  return _ConversationApiModel.fromJson(json);
}

/// @nodoc
mixin _$ConversationApiModel {
  @JsonKey(name: '_id')
  String get id => throw _privateConstructorUsedError;
  List<ConversationParticipantApiModel> get participants =>
      throw _privateConstructorUsedError;
  @JsonKey(fromJson: _lastMessageFromJson, toJson: _lastMessageToJson)
  MessageApiModel? get lastMessage => throw _privateConstructorUsedError;
  DateTime? get createdAt => throw _privateConstructorUsedError;
  DateTime? get updatedAt => throw _privateConstructorUsedError;

  /// Serializes this ConversationApiModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ConversationApiModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ConversationApiModelCopyWith<ConversationApiModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ConversationApiModelCopyWith<$Res> {
  factory $ConversationApiModelCopyWith(ConversationApiModel value,
          $Res Function(ConversationApiModel) then) =
      _$ConversationApiModelCopyWithImpl<$Res, ConversationApiModel>;
  @useResult
  $Res call(
      {@JsonKey(name: '_id') String id,
      List<ConversationParticipantApiModel> participants,
      @JsonKey(fromJson: _lastMessageFromJson, toJson: _lastMessageToJson)
      MessageApiModel? lastMessage,
      DateTime? createdAt,
      DateTime? updatedAt});

  $MessageApiModelCopyWith<$Res>? get lastMessage;
}

/// @nodoc
class _$ConversationApiModelCopyWithImpl<$Res,
        $Val extends ConversationApiModel>
    implements $ConversationApiModelCopyWith<$Res> {
  _$ConversationApiModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ConversationApiModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? participants = null,
    Object? lastMessage = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      participants: null == participants
          ? _value.participants
          : participants // ignore: cast_nullable_to_non_nullable
              as List<ConversationParticipantApiModel>,
      lastMessage: freezed == lastMessage
          ? _value.lastMessage
          : lastMessage // ignore: cast_nullable_to_non_nullable
              as MessageApiModel?,
      createdAt: freezed == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      updatedAt: freezed == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ) as $Val);
  }

  /// Create a copy of ConversationApiModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $MessageApiModelCopyWith<$Res>? get lastMessage {
    if (_value.lastMessage == null) {
      return null;
    }

    return $MessageApiModelCopyWith<$Res>(_value.lastMessage!, (value) {
      return _then(_value.copyWith(lastMessage: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$ConversationApiModelImplCopyWith<$Res>
    implements $ConversationApiModelCopyWith<$Res> {
  factory _$$ConversationApiModelImplCopyWith(_$ConversationApiModelImpl value,
          $Res Function(_$ConversationApiModelImpl) then) =
      __$$ConversationApiModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: '_id') String id,
      List<ConversationParticipantApiModel> participants,
      @JsonKey(fromJson: _lastMessageFromJson, toJson: _lastMessageToJson)
      MessageApiModel? lastMessage,
      DateTime? createdAt,
      DateTime? updatedAt});

  @override
  $MessageApiModelCopyWith<$Res>? get lastMessage;
}

/// @nodoc
class __$$ConversationApiModelImplCopyWithImpl<$Res>
    extends _$ConversationApiModelCopyWithImpl<$Res, _$ConversationApiModelImpl>
    implements _$$ConversationApiModelImplCopyWith<$Res> {
  __$$ConversationApiModelImplCopyWithImpl(_$ConversationApiModelImpl _value,
      $Res Function(_$ConversationApiModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of ConversationApiModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? participants = null,
    Object? lastMessage = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
  }) {
    return _then(_$ConversationApiModelImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      participants: null == participants
          ? _value._participants
          : participants // ignore: cast_nullable_to_non_nullable
              as List<ConversationParticipantApiModel>,
      lastMessage: freezed == lastMessage
          ? _value.lastMessage
          : lastMessage // ignore: cast_nullable_to_non_nullable
              as MessageApiModel?,
      createdAt: freezed == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      updatedAt: freezed == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ));
  }
}

/// @nodoc

@JsonSerializable(fieldRename: FieldRename.snake, explicitToJson: true)
class _$ConversationApiModelImpl implements _ConversationApiModel {
  const _$ConversationApiModelImpl(
      {@JsonKey(name: '_id') required this.id,
      required final List<ConversationParticipantApiModel> participants,
      @JsonKey(fromJson: _lastMessageFromJson, toJson: _lastMessageToJson)
      this.lastMessage,
      this.createdAt,
      this.updatedAt})
      : _participants = participants;

  factory _$ConversationApiModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$ConversationApiModelImplFromJson(json);

  @override
  @JsonKey(name: '_id')
  final String id;
  final List<ConversationParticipantApiModel> _participants;
  @override
  List<ConversationParticipantApiModel> get participants {
    if (_participants is EqualUnmodifiableListView) return _participants;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_participants);
  }

  @override
  @JsonKey(fromJson: _lastMessageFromJson, toJson: _lastMessageToJson)
  final MessageApiModel? lastMessage;
  @override
  final DateTime? createdAt;
  @override
  final DateTime? updatedAt;

  @override
  String toString() {
    return 'ConversationApiModel(id: $id, participants: $participants, lastMessage: $lastMessage, createdAt: $createdAt, updatedAt: $updatedAt)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ConversationApiModelImpl &&
            (identical(other.id, id) || other.id == id) &&
            const DeepCollectionEquality()
                .equals(other._participants, _participants) &&
            (identical(other.lastMessage, lastMessage) ||
                other.lastMessage == lastMessage) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.updatedAt, updatedAt) ||
                other.updatedAt == updatedAt));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      const DeepCollectionEquality().hash(_participants),
      lastMessage,
      createdAt,
      updatedAt);

  /// Create a copy of ConversationApiModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ConversationApiModelImplCopyWith<_$ConversationApiModelImpl>
      get copyWith =>
          __$$ConversationApiModelImplCopyWithImpl<_$ConversationApiModelImpl>(
              this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ConversationApiModelImplToJson(
      this,
    );
  }
}

abstract class _ConversationApiModel implements ConversationApiModel {
  const factory _ConversationApiModel(
      {@JsonKey(name: '_id') required final String id,
      required final List<ConversationParticipantApiModel> participants,
      @JsonKey(fromJson: _lastMessageFromJson, toJson: _lastMessageToJson)
      final MessageApiModel? lastMessage,
      final DateTime? createdAt,
      final DateTime? updatedAt}) = _$ConversationApiModelImpl;

  factory _ConversationApiModel.fromJson(Map<String, dynamic> json) =
      _$ConversationApiModelImpl.fromJson;

  @override
  @JsonKey(name: '_id')
  String get id;
  @override
  List<ConversationParticipantApiModel> get participants;
  @override
  @JsonKey(fromJson: _lastMessageFromJson, toJson: _lastMessageToJson)
  MessageApiModel? get lastMessage;
  @override
  DateTime? get createdAt;
  @override
  DateTime? get updatedAt;

  /// Create a copy of ConversationApiModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ConversationApiModelImplCopyWith<_$ConversationApiModelImpl>
      get copyWith => throw _privateConstructorUsedError;
}
