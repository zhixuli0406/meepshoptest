// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'participant_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ParticipantModelImpl _$$ParticipantModelImplFromJson(
        Map<String, dynamic> json) =>
    _$ParticipantModelImpl(
      userId: json['_id'] as String?,
      user: json['username'] as String?,
      avatar: json['avatar'] as String?,
    );

Map<String, dynamic> _$$ParticipantModelImplToJson(
        _$ParticipantModelImpl instance) =>
    <String, dynamic>{
      '_id': instance.userId,
      'username': instance.user,
      'avatar': instance.avatar,
    };
