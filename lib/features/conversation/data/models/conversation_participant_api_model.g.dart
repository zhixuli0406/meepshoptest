// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'conversation_participant_api_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ConversationParticipantApiModelImpl
    _$$ConversationParticipantApiModelImplFromJson(Map<String, dynamic> json) =>
        _$ConversationParticipantApiModelImpl(
          userId: json['user_id'] as String,
          user: json['user'] as String?,
          avatar: json['avatar'] as String?,
        );

Map<String, dynamic> _$$ConversationParticipantApiModelImplToJson(
        _$ConversationParticipantApiModelImpl instance) =>
    <String, dynamic>{
      'user_id': instance.userId,
      'user': instance.user,
      'avatar': instance.avatar,
    };
