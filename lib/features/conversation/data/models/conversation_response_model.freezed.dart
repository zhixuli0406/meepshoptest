// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'conversation_response_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

ConversationResponseModel _$ConversationResponseModelFromJson(
    Map<String, dynamic> json) {
  return _ConversationResponseModel.fromJson(json);
}

/// @nodoc
mixin _$ConversationResponseModel {
  @JsonKey(name: '_id')
  String get id => throw _privateConstructorUsedError;
  List<SenderModel> get participants => throw _privateConstructorUsedError;
  String? get title => throw _privateConstructorUsedError;
  MessageModel? get lastMessage => throw _privateConstructorUsedError;
  String? get lastMessageText => throw _privateConstructorUsedError;
  DateTime? get lastMessageTimestamp => throw _privateConstructorUsedError;
  int? get legacyConvId => throw _privateConstructorUsedError;
  SenderModel? get createdBy => throw _privateConstructorUsedError;
  DateTime get createdAt => throw _privateConstructorUsedError;
  DateTime get updatedAt => throw _privateConstructorUsedError;

  /// Serializes this ConversationResponseModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ConversationResponseModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ConversationResponseModelCopyWith<ConversationResponseModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ConversationResponseModelCopyWith<$Res> {
  factory $ConversationResponseModelCopyWith(ConversationResponseModel value,
          $Res Function(ConversationResponseModel) then) =
      _$ConversationResponseModelCopyWithImpl<$Res, ConversationResponseModel>;
  @useResult
  $Res call(
      {@JsonKey(name: '_id') String id,
      List<SenderModel> participants,
      String? title,
      MessageModel? lastMessage,
      String? lastMessageText,
      DateTime? lastMessageTimestamp,
      int? legacyConvId,
      SenderModel? createdBy,
      DateTime createdAt,
      DateTime updatedAt});

  $MessageModelCopyWith<$Res>? get lastMessage;
  $SenderModelCopyWith<$Res>? get createdBy;
}

/// @nodoc
class _$ConversationResponseModelCopyWithImpl<$Res,
        $Val extends ConversationResponseModel>
    implements $ConversationResponseModelCopyWith<$Res> {
  _$ConversationResponseModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ConversationResponseModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? participants = null,
    Object? title = freezed,
    Object? lastMessage = freezed,
    Object? lastMessageText = freezed,
    Object? lastMessageTimestamp = freezed,
    Object? legacyConvId = freezed,
    Object? createdBy = freezed,
    Object? createdAt = null,
    Object? updatedAt = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      participants: null == participants
          ? _value.participants
          : participants // ignore: cast_nullable_to_non_nullable
              as List<SenderModel>,
      title: freezed == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      lastMessage: freezed == lastMessage
          ? _value.lastMessage
          : lastMessage // ignore: cast_nullable_to_non_nullable
              as MessageModel?,
      lastMessageText: freezed == lastMessageText
          ? _value.lastMessageText
          : lastMessageText // ignore: cast_nullable_to_non_nullable
              as String?,
      lastMessageTimestamp: freezed == lastMessageTimestamp
          ? _value.lastMessageTimestamp
          : lastMessageTimestamp // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      legacyConvId: freezed == legacyConvId
          ? _value.legacyConvId
          : legacyConvId // ignore: cast_nullable_to_non_nullable
              as int?,
      createdBy: freezed == createdBy
          ? _value.createdBy
          : createdBy // ignore: cast_nullable_to_non_nullable
              as SenderModel?,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      updatedAt: null == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ) as $Val);
  }

  /// Create a copy of ConversationResponseModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $MessageModelCopyWith<$Res>? get lastMessage {
    if (_value.lastMessage == null) {
      return null;
    }

    return $MessageModelCopyWith<$Res>(_value.lastMessage!, (value) {
      return _then(_value.copyWith(lastMessage: value) as $Val);
    });
  }

  /// Create a copy of ConversationResponseModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $SenderModelCopyWith<$Res>? get createdBy {
    if (_value.createdBy == null) {
      return null;
    }

    return $SenderModelCopyWith<$Res>(_value.createdBy!, (value) {
      return _then(_value.copyWith(createdBy: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$ConversationResponseModelImplCopyWith<$Res>
    implements $ConversationResponseModelCopyWith<$Res> {
  factory _$$ConversationResponseModelImplCopyWith(
          _$ConversationResponseModelImpl value,
          $Res Function(_$ConversationResponseModelImpl) then) =
      __$$ConversationResponseModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: '_id') String id,
      List<SenderModel> participants,
      String? title,
      MessageModel? lastMessage,
      String? lastMessageText,
      DateTime? lastMessageTimestamp,
      int? legacyConvId,
      SenderModel? createdBy,
      DateTime createdAt,
      DateTime updatedAt});

  @override
  $MessageModelCopyWith<$Res>? get lastMessage;
  @override
  $SenderModelCopyWith<$Res>? get createdBy;
}

/// @nodoc
class __$$ConversationResponseModelImplCopyWithImpl<$Res>
    extends _$ConversationResponseModelCopyWithImpl<$Res,
        _$ConversationResponseModelImpl>
    implements _$$ConversationResponseModelImplCopyWith<$Res> {
  __$$ConversationResponseModelImplCopyWithImpl(
      _$ConversationResponseModelImpl _value,
      $Res Function(_$ConversationResponseModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of ConversationResponseModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? participants = null,
    Object? title = freezed,
    Object? lastMessage = freezed,
    Object? lastMessageText = freezed,
    Object? lastMessageTimestamp = freezed,
    Object? legacyConvId = freezed,
    Object? createdBy = freezed,
    Object? createdAt = null,
    Object? updatedAt = null,
  }) {
    return _then(_$ConversationResponseModelImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      participants: null == participants
          ? _value._participants
          : participants // ignore: cast_nullable_to_non_nullable
              as List<SenderModel>,
      title: freezed == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      lastMessage: freezed == lastMessage
          ? _value.lastMessage
          : lastMessage // ignore: cast_nullable_to_non_nullable
              as MessageModel?,
      lastMessageText: freezed == lastMessageText
          ? _value.lastMessageText
          : lastMessageText // ignore: cast_nullable_to_non_nullable
              as String?,
      lastMessageTimestamp: freezed == lastMessageTimestamp
          ? _value.lastMessageTimestamp
          : lastMessageTimestamp // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      legacyConvId: freezed == legacyConvId
          ? _value.legacyConvId
          : legacyConvId // ignore: cast_nullable_to_non_nullable
              as int?,
      createdBy: freezed == createdBy
          ? _value.createdBy
          : createdBy // ignore: cast_nullable_to_non_nullable
              as SenderModel?,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      updatedAt: null == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ConversationResponseModelImpl implements _ConversationResponseModel {
  const _$ConversationResponseModelImpl(
      {@JsonKey(name: '_id') required this.id,
      required final List<SenderModel> participants,
      this.title,
      this.lastMessage,
      this.lastMessageText,
      this.lastMessageTimestamp,
      this.legacyConvId,
      this.createdBy,
      required this.createdAt,
      required this.updatedAt})
      : _participants = participants;

  factory _$ConversationResponseModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$ConversationResponseModelImplFromJson(json);

  @override
  @JsonKey(name: '_id')
  final String id;
  final List<SenderModel> _participants;
  @override
  List<SenderModel> get participants {
    if (_participants is EqualUnmodifiableListView) return _participants;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_participants);
  }

  @override
  final String? title;
  @override
  final MessageModel? lastMessage;
  @override
  final String? lastMessageText;
  @override
  final DateTime? lastMessageTimestamp;
  @override
  final int? legacyConvId;
  @override
  final SenderModel? createdBy;
  @override
  final DateTime createdAt;
  @override
  final DateTime updatedAt;

  @override
  String toString() {
    return 'ConversationResponseModel(id: $id, participants: $participants, title: $title, lastMessage: $lastMessage, lastMessageText: $lastMessageText, lastMessageTimestamp: $lastMessageTimestamp, legacyConvId: $legacyConvId, createdBy: $createdBy, createdAt: $createdAt, updatedAt: $updatedAt)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ConversationResponseModelImpl &&
            (identical(other.id, id) || other.id == id) &&
            const DeepCollectionEquality()
                .equals(other._participants, _participants) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.lastMessage, lastMessage) ||
                other.lastMessage == lastMessage) &&
            (identical(other.lastMessageText, lastMessageText) ||
                other.lastMessageText == lastMessageText) &&
            (identical(other.lastMessageTimestamp, lastMessageTimestamp) ||
                other.lastMessageTimestamp == lastMessageTimestamp) &&
            (identical(other.legacyConvId, legacyConvId) ||
                other.legacyConvId == legacyConvId) &&
            (identical(other.createdBy, createdBy) ||
                other.createdBy == createdBy) &&
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
      title,
      lastMessage,
      lastMessageText,
      lastMessageTimestamp,
      legacyConvId,
      createdBy,
      createdAt,
      updatedAt);

  /// Create a copy of ConversationResponseModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ConversationResponseModelImplCopyWith<_$ConversationResponseModelImpl>
      get copyWith => __$$ConversationResponseModelImplCopyWithImpl<
          _$ConversationResponseModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ConversationResponseModelImplToJson(
      this,
    );
  }
}

abstract class _ConversationResponseModel implements ConversationResponseModel {
  const factory _ConversationResponseModel(
      {@JsonKey(name: '_id') required final String id,
      required final List<SenderModel> participants,
      final String? title,
      final MessageModel? lastMessage,
      final String? lastMessageText,
      final DateTime? lastMessageTimestamp,
      final int? legacyConvId,
      final SenderModel? createdBy,
      required final DateTime createdAt,
      required final DateTime updatedAt}) = _$ConversationResponseModelImpl;

  factory _ConversationResponseModel.fromJson(Map<String, dynamic> json) =
      _$ConversationResponseModelImpl.fromJson;

  @override
  @JsonKey(name: '_id')
  String get id;
  @override
  List<SenderModel> get participants;
  @override
  String? get title;
  @override
  MessageModel? get lastMessage;
  @override
  String? get lastMessageText;
  @override
  DateTime? get lastMessageTimestamp;
  @override
  int? get legacyConvId;
  @override
  SenderModel? get createdBy;
  @override
  DateTime get createdAt;
  @override
  DateTime get updatedAt;

  /// Create a copy of ConversationResponseModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ConversationResponseModelImplCopyWith<_$ConversationResponseModelImpl>
      get copyWith => throw _privateConstructorUsedError;
}
