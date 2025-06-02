// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'conversation_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$ConversationEntity {
  String get id => throw _privateConstructorUsedError;
  List<ParticipantEntity> get participants =>
      throw _privateConstructorUsedError;
  String get lastMessage => throw _privateConstructorUsedError;
  DateTime get timestamp => throw _privateConstructorUsedError;

  /// Create a copy of ConversationEntity
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ConversationEntityCopyWith<ConversationEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ConversationEntityCopyWith<$Res> {
  factory $ConversationEntityCopyWith(
          ConversationEntity value, $Res Function(ConversationEntity) then) =
      _$ConversationEntityCopyWithImpl<$Res, ConversationEntity>;
  @useResult
  $Res call(
      {String id,
      List<ParticipantEntity> participants,
      String lastMessage,
      DateTime timestamp});
}

/// @nodoc
class _$ConversationEntityCopyWithImpl<$Res, $Val extends ConversationEntity>
    implements $ConversationEntityCopyWith<$Res> {
  _$ConversationEntityCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ConversationEntity
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? participants = null,
    Object? lastMessage = null,
    Object? timestamp = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      participants: null == participants
          ? _value.participants
          : participants // ignore: cast_nullable_to_non_nullable
              as List<ParticipantEntity>,
      lastMessage: null == lastMessage
          ? _value.lastMessage
          : lastMessage // ignore: cast_nullable_to_non_nullable
              as String,
      timestamp: null == timestamp
          ? _value.timestamp
          : timestamp // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ConversationEntityImplCopyWith<$Res>
    implements $ConversationEntityCopyWith<$Res> {
  factory _$$ConversationEntityImplCopyWith(_$ConversationEntityImpl value,
          $Res Function(_$ConversationEntityImpl) then) =
      __$$ConversationEntityImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      List<ParticipantEntity> participants,
      String lastMessage,
      DateTime timestamp});
}

/// @nodoc
class __$$ConversationEntityImplCopyWithImpl<$Res>
    extends _$ConversationEntityCopyWithImpl<$Res, _$ConversationEntityImpl>
    implements _$$ConversationEntityImplCopyWith<$Res> {
  __$$ConversationEntityImplCopyWithImpl(_$ConversationEntityImpl _value,
      $Res Function(_$ConversationEntityImpl) _then)
      : super(_value, _then);

  /// Create a copy of ConversationEntity
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? participants = null,
    Object? lastMessage = null,
    Object? timestamp = null,
  }) {
    return _then(_$ConversationEntityImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      participants: null == participants
          ? _value._participants
          : participants // ignore: cast_nullable_to_non_nullable
              as List<ParticipantEntity>,
      lastMessage: null == lastMessage
          ? _value.lastMessage
          : lastMessage // ignore: cast_nullable_to_non_nullable
              as String,
      timestamp: null == timestamp
          ? _value.timestamp
          : timestamp // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ));
  }
}

/// @nodoc

class _$ConversationEntityImpl implements _ConversationEntity {
  const _$ConversationEntityImpl(
      {required this.id,
      required final List<ParticipantEntity> participants,
      required this.lastMessage,
      required this.timestamp})
      : _participants = participants;

  @override
  final String id;
  final List<ParticipantEntity> _participants;
  @override
  List<ParticipantEntity> get participants {
    if (_participants is EqualUnmodifiableListView) return _participants;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_participants);
  }

  @override
  final String lastMessage;
  @override
  final DateTime timestamp;

  @override
  String toString() {
    return 'ConversationEntity(id: $id, participants: $participants, lastMessage: $lastMessage, timestamp: $timestamp)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ConversationEntityImpl &&
            (identical(other.id, id) || other.id == id) &&
            const DeepCollectionEquality()
                .equals(other._participants, _participants) &&
            (identical(other.lastMessage, lastMessage) ||
                other.lastMessage == lastMessage) &&
            (identical(other.timestamp, timestamp) ||
                other.timestamp == timestamp));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      const DeepCollectionEquality().hash(_participants),
      lastMessage,
      timestamp);

  /// Create a copy of ConversationEntity
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ConversationEntityImplCopyWith<_$ConversationEntityImpl> get copyWith =>
      __$$ConversationEntityImplCopyWithImpl<_$ConversationEntityImpl>(
          this, _$identity);
}

abstract class _ConversationEntity implements ConversationEntity {
  const factory _ConversationEntity(
      {required final String id,
      required final List<ParticipantEntity> participants,
      required final String lastMessage,
      required final DateTime timestamp}) = _$ConversationEntityImpl;

  @override
  String get id;
  @override
  List<ParticipantEntity> get participants;
  @override
  String get lastMessage;
  @override
  DateTime get timestamp;

  /// Create a copy of ConversationEntity
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ConversationEntityImplCopyWith<_$ConversationEntityImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
