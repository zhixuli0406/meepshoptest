import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:meepshoptest/features/chat/domain/entities/participant_entity.dart';

part 'conversation_entity.freezed.dart';

@freezed
class ConversationEntity with _$ConversationEntity {
  const factory ConversationEntity({
    required String id,
    required List<ParticipantEntity> participants,
    required String lastMessage,
    required DateTime timestamp,
  }) = _ConversationEntity;
}
