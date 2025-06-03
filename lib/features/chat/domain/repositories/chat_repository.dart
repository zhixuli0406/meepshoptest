import 'package:fpdart/fpdart.dart';
import 'package:meepshoptest/core/errors/failure.dart';
import 'package:meepshoptest/features/chat/domain/entities/conversation_entity.dart';
import 'package:meepshoptest/features/chat/domain/entities/message_entity.dart';

abstract class ChatRepository {
  Future<Either<Failure, List<ConversationEntity>>> getConversations();

  Future<Either<Failure, ConversationEntity>> createConversation({
    required String name,
    required List<String> memberIds,
  });
  Future<Either<Failure, List<MessageEntity>>> getMessages(
    String conversationId, {
    int? before,
    int? limit,
  });
  Future<Either<Failure, MessageEntity>> createMessage(
    String conversationId,
    String messageText,
    String currentUserId,
    String senderName,
    String senderAvatar,
    String messageType,
  );
}
