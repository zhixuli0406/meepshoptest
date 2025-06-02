// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'conversation_response_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ConversationResponseModelImpl _$$ConversationResponseModelImplFromJson(
        Map<String, dynamic> json) =>
    _$ConversationResponseModelImpl(
      id: json['_id'] as String,
      participants: (json['participants'] as List<dynamic>)
          .map((e) => SenderModel.fromJson(e as Map<String, dynamic>))
          .toList(),
      title: json['title'] as String?,
      lastMessage: json['lastMessage'] == null
          ? null
          : MessageModel.fromJson(json['lastMessage'] as Map<String, dynamic>),
      lastMessageText: json['lastMessageText'] as String?,
      lastMessageTimestamp: json['lastMessageTimestamp'] == null
          ? null
          : DateTime.parse(json['lastMessageTimestamp'] as String),
      legacyConvId: (json['legacyConvId'] as num?)?.toInt(),
      createdBy: json['createdBy'] == null
          ? null
          : SenderModel.fromJson(json['createdBy'] as Map<String, dynamic>),
      createdAt: DateTime.parse(json['createdAt'] as String),
      updatedAt: DateTime.parse(json['updatedAt'] as String),
    );

Map<String, dynamic> _$$ConversationResponseModelImplToJson(
        _$ConversationResponseModelImpl instance) =>
    <String, dynamic>{
      '_id': instance.id,
      'participants': instance.participants,
      'title': instance.title,
      'lastMessage': instance.lastMessage,
      'lastMessageText': instance.lastMessageText,
      'lastMessageTimestamp': instance.lastMessageTimestamp?.toIso8601String(),
      'legacyConvId': instance.legacyConvId,
      'createdBy': instance.createdBy,
      'createdAt': instance.createdAt.toIso8601String(),
      'updatedAt': instance.updatedAt.toIso8601String(),
    };
