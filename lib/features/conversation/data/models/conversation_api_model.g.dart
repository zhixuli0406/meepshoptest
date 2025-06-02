// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'conversation_api_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ConversationApiModelImpl _$$ConversationApiModelImplFromJson(
        Map<String, dynamic> json) =>
    _$ConversationApiModelImpl(
      id: json['_id'] as String,
      participants: (json['participants'] as List<dynamic>)
          .map((e) => ConversationParticipantApiModel.fromJson(
              e as Map<String, dynamic>))
          .toList(),
      lastMessage: _lastMessageFromJson(json['last_message']),
      createdAt: json['created_at'] == null
          ? null
          : DateTime.parse(json['created_at'] as String),
      updatedAt: json['updated_at'] == null
          ? null
          : DateTime.parse(json['updated_at'] as String),
    );

Map<String, dynamic> _$$ConversationApiModelImplToJson(
        _$ConversationApiModelImpl instance) =>
    <String, dynamic>{
      '_id': instance.id,
      'participants': instance.participants.map((e) => e.toJson()).toList(),
      'last_message': _lastMessageToJson(instance.lastMessage),
      'created_at': instance.createdAt?.toIso8601String(),
      'updated_at': instance.updatedAt?.toIso8601String(),
    };
