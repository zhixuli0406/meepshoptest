// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'conversation_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ConversationModelImpl _$$ConversationModelImplFromJson(
        Map<String, dynamic> json) =>
    _$ConversationModelImpl(
      id: json['_id'] as String,
      name: json['title'] as String?,
      participants: (json['participants'] as List<dynamic>)
          .map((e) => ParticipantModel.fromJson(e as Map<String, dynamic>))
          .toList(),
      createdAt: DateTime.parse(json['createdAt'] as String),
      updatedAt: json['updatedAt'] == null
          ? null
          : DateTime.parse(json['updatedAt'] as String),
      lastMessage: json['lastMessageText'] as String?,
      timestamp: json['lastMessageTimestamp'] == null
          ? null
          : DateTime.parse(json['lastMessageTimestamp'] as String),
    );

Map<String, dynamic> _$$ConversationModelImplToJson(
        _$ConversationModelImpl instance) =>
    <String, dynamic>{
      '_id': instance.id,
      'title': instance.name,
      'participants': instance.participants,
      'createdAt': instance.createdAt.toIso8601String(),
      'updatedAt': instance.updatedAt?.toIso8601String(),
      'lastMessageText': instance.lastMessage,
      'lastMessageTimestamp': instance.timestamp?.toIso8601String(),
    };
