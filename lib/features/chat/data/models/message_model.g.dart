// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'message_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$MessageModelImpl _$$MessageModelImplFromJson(Map<String, dynamic> json) =>
    _$MessageModelImpl(
      id: json['_id'] as String?,
      conversationId: json['conversationId'] as String,
      sender: json['senderId'] == null
          ? null
          : SenderModel.fromJson(json['senderId'] as Map<String, dynamic>),
      type: json['type'] as String,
      content: json['content'] as String,
      s3Key: json['s3_key'] as String?,
      imageUrl: json['imageUrl'] as String?,
      reactions: (json['reactions'] as Map<String, dynamic>?)?.map(
        (k, e) => MapEntry(k, (e as num).toInt()),
      ),
      createdAt: DateTime.parse(json['createdAt'] as String),
      updatedAt: json['updatedAt'] == null
          ? null
          : DateTime.parse(json['updatedAt'] as String),
      legacyConvId: (json['legacyConvId'] as num?)?.toInt(),
      legacySenderId: (json['legacySenderId'] as num?)?.toInt(),
    );

Map<String, dynamic> _$$MessageModelImplToJson(_$MessageModelImpl instance) =>
    <String, dynamic>{
      '_id': instance.id,
      'conversationId': instance.conversationId,
      'senderId': instance.sender,
      'type': instance.type,
      'content': instance.content,
      's3_key': instance.s3Key,
      'imageUrl': instance.imageUrl,
      'reactions': instance.reactions,
      'createdAt': instance.createdAt.toIso8601String(),
      'updatedAt': instance.updatedAt?.toIso8601String(),
      'legacyConvId': instance.legacyConvId,
      'legacySenderId': instance.legacySenderId,
    };
