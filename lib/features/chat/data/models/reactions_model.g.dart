// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'reactions_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ReactionsModelImpl _$$ReactionsModelImplFromJson(Map<String, dynamic> json) =>
    _$ReactionsModelImpl(
      like: (json['like'] as num).toInt(),
      love: (json['love'] as num).toInt(),
      laugh: (json['laugh'] as num).toInt(),
    );

Map<String, dynamic> _$$ReactionsModelImplToJson(
        _$ReactionsModelImpl instance) =>
    <String, dynamic>{
      'like': instance.like,
      'love': instance.love,
      'laugh': instance.laugh,
    };
