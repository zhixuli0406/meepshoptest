// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'message_sender_api_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$MessageSenderApiModelImpl _$$MessageSenderApiModelImplFromJson(
        Map<String, dynamic> json) =>
    _$MessageSenderApiModelImpl(
      userId: json['_id'] as String?,
      user: json['username'] as String?,
      avatar: json['avatar'] as String?,
    );

Map<String, dynamic> _$$MessageSenderApiModelImplToJson(
        _$MessageSenderApiModelImpl instance) =>
    <String, dynamic>{
      '_id': instance.userId,
      'username': instance.user,
      'avatar': instance.avatar,
    };
