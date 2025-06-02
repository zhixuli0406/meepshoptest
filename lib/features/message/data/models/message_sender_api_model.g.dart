// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'message_sender_api_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$MessageSenderApiModelImpl _$$MessageSenderApiModelImplFromJson(
        Map<String, dynamic> json) =>
    _$MessageSenderApiModelImpl(
      userId: json['user_id'] as String,
      user: json['user'] as String?,
      avatar: json['avatar'] as String?,
    );

Map<String, dynamic> _$$MessageSenderApiModelImplToJson(
        _$MessageSenderApiModelImpl instance) =>
    <String, dynamic>{
      'user_id': instance.userId,
      'user': instance.user,
      'avatar': instance.avatar,
    };
