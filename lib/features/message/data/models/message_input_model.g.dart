// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'message_input_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$MessageInputModelImpl _$$MessageInputModelImplFromJson(
        Map<String, dynamic> json) =>
    _$MessageInputModelImpl(
      senderId: json['sender_id'] as String,
      type: $enumDecode(_$MessageTypeInputApiModelEnumMap, json['type']),
      content: json['content'] as String,
      s3Key: json['s3_key'] as String?,
    );

Map<String, dynamic> _$$MessageInputModelImplToJson(
        _$MessageInputModelImpl instance) =>
    <String, dynamic>{
      'sender_id': instance.senderId,
      'type': _$MessageTypeInputApiModelEnumMap[instance.type]!,
      'content': instance.content,
      's3_key': instance.s3Key,
    };

const _$MessageTypeInputApiModelEnumMap = {
  MessageTypeInputApiModel.text: 'text',
  MessageTypeInputApiModel.image: 'image',
};
