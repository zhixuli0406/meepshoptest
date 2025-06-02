// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'reaction_detail_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Map<String, dynamic> _$ReactionDetailModelToJson(
        ReactionDetailModel instance) =>
    <String, dynamic>{
      'type': instance.type,
      'userIds': instance.userIds,
    };

_$ReactionDetailModelImpl _$$ReactionDetailModelImplFromJson(
        Map<String, dynamic> json) =>
    _$ReactionDetailModelImpl(
      type: json['type'] as String,
      userIds: (json['userIds'] as List<dynamic>)
          .map((e) => (e as num).toInt())
          .toList(),
    );

Map<String, dynamic> _$$ReactionDetailModelImplToJson(
        _$ReactionDetailModelImpl instance) =>
    <String, dynamic>{
      'type': instance.type,
      'userIds': instance.userIds,
    };
