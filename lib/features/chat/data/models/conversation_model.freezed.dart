// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'conversation_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

ConversationModel _$ConversationModelFromJson(Map<String, dynamic> json) {
  return _ConversationModel.fromJson(json);
}

/// @nodoc
mixin _$ConversationModel {
  @JsonKey(name: '_id')
  String get id => throw _privateConstructorUsedError;
  List<ParticipantModel> get participants => throw _privateConstructorUsedError;
  @JsonKey(name: 'lastMessageText')
  String? get lastMessage =>
      throw _privateConstructorUsedError; // Maps to 'lastMessageText' and is nullable
  @JsonKey(
      name: 'lastMessageTimestamp',
      fromJson: _dateTimeFromNullableTimestamp,
      toJson: _dateTimeToNullableIso8601String)
  DateTime? get timestamp =>
      throw _privateConstructorUsedError; // Maps to 'lastMessageTimestamp', is nullable, and uses custom converters
  @JsonKey(
      fromJson: _dateTimeFromNullableTimestamp,
      toJson: _dateTimeToNullableIso8601String)
  DateTime? get createdAt =>
      throw _privateConstructorUsedError; // Added createdAt, nullable
  @JsonKey(
      fromJson: _dateTimeFromNullableTimestamp,
      toJson: _dateTimeToNullableIso8601String)
  DateTime? get updatedAt =>
      throw _privateConstructorUsedError; // Added updatedAt, nullable
  int? get legacyConvId => throw _privateConstructorUsedError;

  /// Serializes this ConversationModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ConversationModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ConversationModelCopyWith<ConversationModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ConversationModelCopyWith<$Res> {
  factory $ConversationModelCopyWith(
          ConversationModel value, $Res Function(ConversationModel) then) =
      _$ConversationModelCopyWithImpl<$Res, ConversationModel>;
  @useResult
  $Res call(
      {@JsonKey(name: '_id') String id,
      List<ParticipantModel> participants,
      @JsonKey(name: 'lastMessageText') String? lastMessage,
      @JsonKey(
          name: 'lastMessageTimestamp',
          fromJson: _dateTimeFromNullableTimestamp,
          toJson: _dateTimeToNullableIso8601String)
      DateTime? timestamp,
      @JsonKey(
          fromJson: _dateTimeFromNullableTimestamp,
          toJson: _dateTimeToNullableIso8601String)
      DateTime? createdAt,
      @JsonKey(
          fromJson: _dateTimeFromNullableTimestamp,
          toJson: _dateTimeToNullableIso8601String)
      DateTime? updatedAt,
      int? legacyConvId});
}

/// @nodoc
class _$ConversationModelCopyWithImpl<$Res, $Val extends ConversationModel>
    implements $ConversationModelCopyWith<$Res> {
  _$ConversationModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ConversationModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? participants = null,
    Object? lastMessage = freezed,
    Object? timestamp = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
    Object? legacyConvId = freezed,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      participants: null == participants
          ? _value.participants
          : participants // ignore: cast_nullable_to_non_nullable
              as List<ParticipantModel>,
      lastMessage: freezed == lastMessage
          ? _value.lastMessage
          : lastMessage // ignore: cast_nullable_to_non_nullable
              as String?,
      timestamp: freezed == timestamp
          ? _value.timestamp
          : timestamp // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      createdAt: freezed == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      updatedAt: freezed == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      legacyConvId: freezed == legacyConvId
          ? _value.legacyConvId
          : legacyConvId // ignore: cast_nullable_to_non_nullable
              as int?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ConversationModelImplCopyWith<$Res>
    implements $ConversationModelCopyWith<$Res> {
  factory _$$ConversationModelImplCopyWith(_$ConversationModelImpl value,
          $Res Function(_$ConversationModelImpl) then) =
      __$$ConversationModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: '_id') String id,
      List<ParticipantModel> participants,
      @JsonKey(name: 'lastMessageText') String? lastMessage,
      @JsonKey(
          name: 'lastMessageTimestamp',
          fromJson: _dateTimeFromNullableTimestamp,
          toJson: _dateTimeToNullableIso8601String)
      DateTime? timestamp,
      @JsonKey(
          fromJson: _dateTimeFromNullableTimestamp,
          toJson: _dateTimeToNullableIso8601String)
      DateTime? createdAt,
      @JsonKey(
          fromJson: _dateTimeFromNullableTimestamp,
          toJson: _dateTimeToNullableIso8601String)
      DateTime? updatedAt,
      int? legacyConvId});
}

/// @nodoc
class __$$ConversationModelImplCopyWithImpl<$Res>
    extends _$ConversationModelCopyWithImpl<$Res, _$ConversationModelImpl>
    implements _$$ConversationModelImplCopyWith<$Res> {
  __$$ConversationModelImplCopyWithImpl(_$ConversationModelImpl _value,
      $Res Function(_$ConversationModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of ConversationModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? participants = null,
    Object? lastMessage = freezed,
    Object? timestamp = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
    Object? legacyConvId = freezed,
  }) {
    return _then(_$ConversationModelImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      participants: null == participants
          ? _value._participants
          : participants // ignore: cast_nullable_to_non_nullable
              as List<ParticipantModel>,
      lastMessage: freezed == lastMessage
          ? _value.lastMessage
          : lastMessage // ignore: cast_nullable_to_non_nullable
              as String?,
      timestamp: freezed == timestamp
          ? _value.timestamp
          : timestamp // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      createdAt: freezed == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      updatedAt: freezed == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      legacyConvId: freezed == legacyConvId
          ? _value.legacyConvId
          : legacyConvId // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ConversationModelImpl implements _ConversationModel {
  const _$ConversationModelImpl(
      {@JsonKey(name: '_id') required this.id,
      required final List<ParticipantModel> participants,
      @JsonKey(name: 'lastMessageText') this.lastMessage,
      @JsonKey(
          name: 'lastMessageTimestamp',
          fromJson: _dateTimeFromNullableTimestamp,
          toJson: _dateTimeToNullableIso8601String)
      this.timestamp,
      @JsonKey(
          fromJson: _dateTimeFromNullableTimestamp,
          toJson: _dateTimeToNullableIso8601String)
      this.createdAt,
      @JsonKey(
          fromJson: _dateTimeFromNullableTimestamp,
          toJson: _dateTimeToNullableIso8601String)
      this.updatedAt,
      this.legacyConvId})
      : _participants = participants;

  factory _$ConversationModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$ConversationModelImplFromJson(json);

  @override
  @JsonKey(name: '_id')
  final String id;
  final List<ParticipantModel> _participants;
  @override
  List<ParticipantModel> get participants {
    if (_participants is EqualUnmodifiableListView) return _participants;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_participants);
  }

  @override
  @JsonKey(name: 'lastMessageText')
  final String? lastMessage;
// Maps to 'lastMessageText' and is nullable
  @override
  @JsonKey(
      name: 'lastMessageTimestamp',
      fromJson: _dateTimeFromNullableTimestamp,
      toJson: _dateTimeToNullableIso8601String)
  final DateTime? timestamp;
// Maps to 'lastMessageTimestamp', is nullable, and uses custom converters
  @override
  @JsonKey(
      fromJson: _dateTimeFromNullableTimestamp,
      toJson: _dateTimeToNullableIso8601String)
  final DateTime? createdAt;
// Added createdAt, nullable
  @override
  @JsonKey(
      fromJson: _dateTimeFromNullableTimestamp,
      toJson: _dateTimeToNullableIso8601String)
  final DateTime? updatedAt;
// Added updatedAt, nullable
  @override
  final int? legacyConvId;

  @override
  String toString() {
    return 'ConversationModel(id: $id, participants: $participants, lastMessage: $lastMessage, timestamp: $timestamp, createdAt: $createdAt, updatedAt: $updatedAt, legacyConvId: $legacyConvId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ConversationModelImpl &&
            (identical(other.id, id) || other.id == id) &&
            const DeepCollectionEquality()
                .equals(other._participants, _participants) &&
            (identical(other.lastMessage, lastMessage) ||
                other.lastMessage == lastMessage) &&
            (identical(other.timestamp, timestamp) ||
                other.timestamp == timestamp) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.updatedAt, updatedAt) ||
                other.updatedAt == updatedAt) &&
            (identical(other.legacyConvId, legacyConvId) ||
                other.legacyConvId == legacyConvId));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      const DeepCollectionEquality().hash(_participants),
      lastMessage,
      timestamp,
      createdAt,
      updatedAt,
      legacyConvId);

  /// Create a copy of ConversationModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ConversationModelImplCopyWith<_$ConversationModelImpl> get copyWith =>
      __$$ConversationModelImplCopyWithImpl<_$ConversationModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ConversationModelImplToJson(
      this,
    );
  }
}

abstract class _ConversationModel implements ConversationModel {
  const factory _ConversationModel(
      {@JsonKey(name: '_id') required final String id,
      required final List<ParticipantModel> participants,
      @JsonKey(name: 'lastMessageText') final String? lastMessage,
      @JsonKey(
          name: 'lastMessageTimestamp',
          fromJson: _dateTimeFromNullableTimestamp,
          toJson: _dateTimeToNullableIso8601String)
      final DateTime? timestamp,
      @JsonKey(
          fromJson: _dateTimeFromNullableTimestamp,
          toJson: _dateTimeToNullableIso8601String)
      final DateTime? createdAt,
      @JsonKey(
          fromJson: _dateTimeFromNullableTimestamp,
          toJson: _dateTimeToNullableIso8601String)
      final DateTime? updatedAt,
      final int? legacyConvId}) = _$ConversationModelImpl;

  factory _ConversationModel.fromJson(Map<String, dynamic> json) =
      _$ConversationModelImpl.fromJson;

  @override
  @JsonKey(name: '_id')
  String get id;
  @override
  List<ParticipantModel> get participants;
  @override
  @JsonKey(name: 'lastMessageText')
  String? get lastMessage; // Maps to 'lastMessageText' and is nullable
  @override
  @JsonKey(
      name: 'lastMessageTimestamp',
      fromJson: _dateTimeFromNullableTimestamp,
      toJson: _dateTimeToNullableIso8601String)
  DateTime?
      get timestamp; // Maps to 'lastMessageTimestamp', is nullable, and uses custom converters
  @override
  @JsonKey(
      fromJson: _dateTimeFromNullableTimestamp,
      toJson: _dateTimeToNullableIso8601String)
  DateTime? get createdAt; // Added createdAt, nullable
  @override
  @JsonKey(
      fromJson: _dateTimeFromNullableTimestamp,
      toJson: _dateTimeToNullableIso8601String)
  DateTime? get updatedAt; // Added updatedAt, nullable
  @override
  int? get legacyConvId;

  /// Create a copy of ConversationModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ConversationModelImplCopyWith<_$ConversationModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
