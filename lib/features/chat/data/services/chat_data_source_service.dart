import 'package:fpdart/fpdart.dart';
import 'package:meepshoptest/core/errors/failure.dart';
import 'package:meepshoptest/features/chat/data/models/conversation_model.dart';
import 'package:meepshoptest/features/chat/data/models/message_model.dart';
import 'package:meepshoptest/features/chat/data/models/message_input_model.dart';

abstract class ChatDataSourceService {
  Future<Either<Failure, List<ConversationModel>>> getConversations();
  Future<Either<Failure, List<MessageModel>>> getMessages(
    String conversationId,
  );
  Future<Either<Failure, MessageModel>> createMessage(
    String conversationId,
    MessageInputModel messagePayload,
  );
}
