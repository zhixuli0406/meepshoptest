import 'package:fpdart/fpdart.dart';
import 'package:meepshoptest/core/errors/failure.dart';
import 'package:meepshoptest/features/message/domain/entities/message_entity.dart';
import 'package:meepshoptest/features/message/data/models/message_input_model.dart';

abstract class MessageRepository {
  TaskEither<Failure, List<MessageEntity>> getMessages(
    String conversationId, {
    int? before, // Timestamp as int (Unix milliseconds)
    int? limit,
  });
  TaskEither<Failure, MessageEntity> createMessage(
    String conversationId,
    MessageInputModel messageInput,
  );
}
