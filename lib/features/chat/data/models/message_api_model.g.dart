// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'message_api_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$MessageApiModelImpl _$$MessageApiModelImplFromJson(
        Map<String, dynamic> json) =>
    _$MessageApiModelImpl(
      id: json['_id'] as String,
      conversationId: json['conversation_id'] as String?,
      sender: json['senderId'] == null
          ? null
          : MessageSenderApiModel.fromJson(
              json['senderId'] as Map<String, dynamic>),
      createdAt: json['createdAt'] as String?,
      type: json['type'] as String?,
      content: json['content'] as String?,
      reactions: (json['reactions'] as Map<String, dynamic>?)?.map(
        (k, e) => MapEntry(k, (e as num).toInt()),
      ),
      readBy:
          (json['read_by'] as List<dynamic>?)?.map((e) => e as String).toList(),
      imageUrl: json['imageUrl'] as String?,
      legacyConvId: (json['legacy_conv_id'] as num?)?.toInt(),
      legacySenderId: (json['legacy_sender_id'] as num?)?.toInt(),
      v: (json['__v'] as num?)?.toInt(),
      updatedAt: json['updated_at'] as String?,
    );

Map<String, dynamic> _$$MessageApiModelImplToJson(
        _$MessageApiModelImpl instance) =>
    <String, dynamic>{
      '_id': instance.id,
      'conversation_id': instance.conversationId,
      'senderId': instance.sender,
      'createdAt': instance.createdAt,
      'type': instance.type,
      'content': instance.content,
      'reactions': instance.reactions,
      'read_by': instance.readBy,
      'imageUrl': instance.imageUrl,
      'legacy_conv_id': instance.legacyConvId,
      'legacy_sender_id': instance.legacySenderId,
      '__v': instance.v,
      'updated_at': instance.updatedAt,
    };
