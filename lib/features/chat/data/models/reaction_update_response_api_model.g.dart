// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'reaction_update_response_api_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ReactionUpdateResponseApiModelImpl
    _$$ReactionUpdateResponseApiModelImplFromJson(Map<String, dynamic> json) =>
        _$ReactionUpdateResponseApiModelImpl(
          messageId: json['messageId'] as String,
          reactions: Map<String, int>.from(json['reactions'] as Map),
        );

Map<String, dynamic> _$$ReactionUpdateResponseApiModelImplToJson(
        _$ReactionUpdateResponseApiModelImpl instance) =>
    <String, dynamic>{
      'messageId': instance.messageId,
      'reactions': instance.reactions,
    };
