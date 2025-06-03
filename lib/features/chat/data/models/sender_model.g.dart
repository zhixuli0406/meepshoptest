// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'sender_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$SenderModelImpl _$$SenderModelImplFromJson(Map<String, dynamic> json) =>
    _$SenderModelImpl(
      userId: json['_id'] as String,
      user: json['username'] as String,
      avatar: json['avatar'] as String?,
      legacyUserId: (json['legacyUserId'] as num?)?.toInt(),
    );

Map<String, dynamic> _$$SenderModelImplToJson(_$SenderModelImpl instance) =>
    <String, dynamic>{
      '_id': instance.userId,
      'username': instance.user,
      'avatar': instance.avatar,
      'legacyUserId': instance.legacyUserId,
    };
