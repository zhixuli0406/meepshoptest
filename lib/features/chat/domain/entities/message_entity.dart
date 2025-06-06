import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:meepshoptest/features/chat/domain/entities/message_sender_entity.dart';
import 'package:meepshoptest/features/chat/domain/entities/reactions_entity.dart';
import 'package:meepshoptest/features/chat/domain/entities/message_type.dart';
import 'package:meepshoptest/features/chat/domain/entities/message_send_status.dart';

part 'message_entity.freezed.dart';

// Removed Enum for MessageType in Domain layer as it's imported now

@freezed
sealed class MessageEntity with _$MessageEntity {
  const factory MessageEntity({
    required String id,
    required String conversationId,
    required MessageSenderEntity sender,
    required MessageType type,
    required String content,
    String? imageUrl, // Final URL for image after upload
    String? localPath, // Temporary local path for image being uploaded
    String? s3Key, // Keep s3Key if needed for other operations, e.g., delete
    required DateTime timestamp,
    List<ReactionDetailEntity>? reactions, // Added reactions field
    MessageSendStatus? status, // Status of the message sending process
    // Removed readBy, legacyConvId, legacySenderId as they are not part of this entity's core definition
  }) = _MessageEntity;
}
