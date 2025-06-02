// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'conversation_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ConversationModelImpl _$$ConversationModelImplFromJson(
        Map<String, dynamic> json) =>
    _$ConversationModelImpl(
      id: json['_id'] as String,
      participants: (json['participants'] as List<dynamic>)
          .map((e) => ParticipantModel.fromJson(e as Map<String, dynamic>))
          .toList(),
      lastMessage: json['lastMessageText'] as String?,
      timestamp: _dateTimeFromNullableTimestamp(json['lastMessageTimestamp']),
      createdAt: _dateTimeFromNullableTimestamp(json['createdAt']),
      updatedAt: _dateTimeFromNullableTimestamp(json['updatedAt']),
      legacyConvId: (json['legacyConvId'] as num?)?.toInt(),
    );

Map<String, dynamic> _$$ConversationModelImplToJson(
        _$ConversationModelImpl instance) =>
    <String, dynamic>{
      '_id': instance.id,
      'participants': instance.participants,
      'lastMessageText': instance.lastMessage,
      'lastMessageTimestamp':
          _dateTimeToNullableIso8601String(instance.timestamp),
      'createdAt': _dateTimeToNullableIso8601String(instance.createdAt),
      'updatedAt': _dateTimeToNullableIso8601String(instance.updatedAt),
      'legacyConvId': instance.legacyConvId,
    };
