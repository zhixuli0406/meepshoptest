// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'conversation_input_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ConversationInputModelImpl _$$ConversationInputModelImplFromJson(
        Map<String, dynamic> json) =>
    _$ConversationInputModelImpl(
      participantIds: (json['participant_ids'] as List<dynamic>)
          .map((e) => e as String)
          .toList(),
      title: json['title'] as String?,
    );

Map<String, dynamic> _$$ConversationInputModelImplToJson(
        _$ConversationInputModelImpl instance) =>
    <String, dynamic>{
      'participant_ids': instance.participantIds,
      'title': instance.title,
    };
