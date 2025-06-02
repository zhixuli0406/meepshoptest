import 'package:freezed_annotation/freezed_annotation.dart';

part 'conversation_participant_entity.freezed.dart';

@freezed
sealed class ConversationParticipantEntity
    with _$ConversationParticipantEntity {
  const factory ConversationParticipantEntity({
    required String userId,
    String? username,
    String? avatarUrl,
  }) = _ConversationParticipantEntity;
}
