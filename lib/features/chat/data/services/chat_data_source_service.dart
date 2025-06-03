import 'package:fpdart/fpdart.dart';
import 'package:meepshoptest/core/errors/failure.dart';
import 'package:meepshoptest/features/chat/data/models/conversation_model.dart';
import 'package:meepshoptest/features/chat/data/models/message_api_model.dart';
import 'package:meepshoptest/features/chat/data/models/message_input_model.dart';
import 'package:meepshoptest/features/chat/data/models/reaction_update_response_api_model.dart';

abstract class ChatDataSourceService {
  Future<Either<Failure, ConversationModel>> createConversation({
    required String name,
    required List<String> memberIds,
  });

  Future<Either<Failure, List<ConversationModel>>> getConversations();
  Future<Either<Failure, List<MessageApiModel>>> getMessages(
    String conversationId,
  );
  Future<Either<Failure, MessageApiModel>> createMessage(
    String conversationId,
    MessageInputModel messagePayload,
  );

  Future<Either<Failure, ReactionUpdateResponseApiModel>>
  updateMessageReaction({
    required String messageId,
    required String reactionType,
    required String action,
  });
}
