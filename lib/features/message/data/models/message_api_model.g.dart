// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'message_api_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$MessageApiModelImpl _$$MessageApiModelImplFromJson(
        Map<String, dynamic> json) =>
    _$MessageApiModelImpl(
      id: json['id'] as String,
      conversationId: json['conversation_id'] as String,
      sender: MessageSenderApiModel.fromJson(
          json['sender'] as Map<String, dynamic>),
      type: $enumDecode(_$MessageTypeApiModelEnumMap, json['type']),
      content: json['content'] as String,
      s3Key: json['s3_key'] as String?,
      timestamp: (json['timestamp'] as num).toInt(),
    );

Map<String, dynamic> _$$MessageApiModelImplToJson(
        _$MessageApiModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'conversation_id': instance.conversationId,
      'sender': instance.sender.toJson(),
      'type': _$MessageTypeApiModelEnumMap[instance.type]!,
      'content': instance.content,
      's3_key': instance.s3Key,
      'timestamp': instance.timestamp,
    };

const _$MessageTypeApiModelEnumMap = {
  MessageTypeApiModel.text: 'text',
  MessageTypeApiModel.image: 'image',
  MessageTypeApiModel.system: 'system',
};
