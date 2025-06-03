import 'package:fpdart/fpdart.dart';
import 'package:meepshoptest/core/errors/failure.dart';
// Updated import paths
import 'package:meepshoptest/features/chat/domain/entities/message_entity.dart';
import 'package:meepshoptest/features/chat/data/models/message_input_model.dart'; // This model is in data layer
import 'package:meepshoptest/features/chat/domain/entities/reaction_update_response_entity.dart';

abstract class MessageRepository {
  TaskEither<Failure, List<MessageEntity>> getMessages(
    String conversationId, {
    int? before, // Timestamp as int (Unix milliseconds)
    int? limit,
  });
  TaskEither<Failure, MessageEntity> createMessage(
    String conversationId,
    // Consider if the repository interface should depend on a data layer model (MessageInputModel).
    // Typically, domain repositories depend on domain entities or primitive types for input.
    // However, if MessageInputModel is a simple DTO and tightly coupled with this operation, it can be acceptable.
    MessageInputModel messageInput,
  );
  TaskEither<Failure, ReactionUpdateResponseEntity> updateMessageReaction({
    required String messageId,
    required String reactionType,
    required String action, // "increment" or "decrement"
  });
}
