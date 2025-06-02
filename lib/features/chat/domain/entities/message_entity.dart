import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:meepshoptest/features/chat/domain/entities/reactions_entity.dart';

part 'message_entity.freezed.dart';

@freezed
class MessageEntity with _$MessageEntity {
  const factory MessageEntity({
    String? id,
    required String conversationId,
    required String userId,
    required String user,
    required String avatar,
    required String messageType,
    required String message,
    required List<ReactionDetailEntity> reactions,
    required DateTime timestamp,
  }) = _MessageEntity;
}
