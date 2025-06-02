import 'package:fpdart/fpdart.dart';
import 'package:meepshoptest/core/errors/failure.dart';
import 'package:meepshoptest/features/conversation/domain/entities/conversation_entity.dart';
import 'package:meepshoptest/features/conversation/data/models/conversation_input_model.dart';

abstract class ConversationRepository {
  Future<Either<Failure, List<ConversationEntity>>> getConversations();

  TaskEither<Failure, ConversationEntity> createConversation(
    ConversationInputModel params,
  );
  // GetConversationById might be useful later, not directly in swagger
  // TaskEither<Failure, ConversationEntity> getConversationById(String conversationId);
}
