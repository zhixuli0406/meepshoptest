import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:meepshoptest/features/message/domain/entities/message_sender_entity.dart';
import 'package:meepshoptest/features/chat/domain/entities/reactions_entity.dart'; // Import for ReactionDetailEntity

part 'message_entity.freezed.dart';

// Enum for MessageType in Domain layer
enum MessageType {
  text,
  image,
  system,
  unknown, // For graceful handling of unexpected types
}

@freezed
sealed class MessageEntity with _$MessageEntity {
  const factory MessageEntity({
    required String id,
    required String conversationId,
    required MessageSenderEntity sender,
    required MessageType type,
    required String content,
    String? imageUrl, // In Domain, we prefer direct image URL if type is image
    String? s3Key, // Keep s3Key if needed for other operations, e.g., delete
    required DateTime timestamp,
    List<ReactionDetailEntity>? reactions, // Added reactions field
  }) = _MessageEntity;
}
