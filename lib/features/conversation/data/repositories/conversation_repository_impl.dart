import 'package:fpdart/fpdart.dart';
import 'package:injectable/injectable.dart';
import 'package:meepshoptest/core/errors/failure.dart';
import 'package:meepshoptest/features/auth/domain/entities/user_entity.dart';
import 'package:meepshoptest/features/chat/data/models/message_model.dart';
import 'package:meepshoptest/features/chat/data/models/sender_model.dart';
import 'package:meepshoptest/features/chat/domain/entities/message_entity.dart';
import 'package:meepshoptest/features/conversation/data/models/conversation_response_model.dart';
import 'package:meepshoptest/features/conversation/data/models/conversation_input_model.dart';
import 'package:meepshoptest/features/conversation/data/services/conversation_service.dart';
import 'package:meepshoptest/features/conversation/domain/entities/conversation_entity.dart';
import 'package:meepshoptest/features/conversation/domain/entities/conversation_participant_entity.dart';
import 'package:meepshoptest/features/conversation/domain/repositories/conversation_repository.dart';

@LazySingleton(as: ConversationRepository)
class ConversationRepositoryImpl implements ConversationRepository {
  final ConversationService _conversationService;

  ConversationRepositoryImpl(this._conversationService) {
    print(
      '[ConversationRepositoryImpl] Initialized. _conversationService is null: ${_conversationService == null}',
    );
  }

  UserEntity _mapSenderModelToUserEntity(SenderModel model) {
    return UserEntity(
      id: model.userId,
      username: model.user,
      avatarUrl: model.avatar,
      legacyUserId: model.legacyUserId,
      // For UserEntity created from SenderModel, createdAt and updatedAt might not be available
      // or directly relevant. If they are needed, they should be fetched from a full User object.
      // Using a default or null value if the UserEntity definition allows for it.
      // For now, UserEntity requires them, so using a placeholder.
      // Consider making them nullable in UserEntity if they are not always present for participants.
      createdAt:
          DateTime.now(), // Placeholder - Ideally, UserEntity should allow nullable or this comes from a full user fetch
      updatedAt: DateTime.now(), // Placeholder
    );
  }

  ConversationParticipantEntity _mapSenderModelToParticipantEntity(
    SenderModel model,
  ) {
    return ConversationParticipantEntity(
      userId: model.userId,
      username: model.user,
      avatarUrl: model.avatar,
    );
  }

  // Helper to map MessageModel to MessageEntity - now using MessageModelX.toEntity()
  MessageEntity _mapMessageModelToMessageEntity(MessageModel model) {
    return model.toEntity();
  }

  ConversationEntity _mapConversationModelToEntity(
    ConversationResponseModel model,
  ) {
    return ConversationEntity(
      id: model.id,
      participants:
          model.participants.map(_mapSenderModelToParticipantEntity).toList(),
      title: model.title,
      lastMessage:
          model.lastMessage != null
              ? _mapMessageModelToMessageEntity(model.lastMessage!)
              : null,
      lastMessageText: model.lastMessageText,
      lastMessageTimestamp: model.lastMessageTimestamp,
      legacyConvId: model.legacyConvId,
      createdBy:
          model.createdBy != null
              ? _mapSenderModelToUserEntity(model.createdBy!)
              : null,
      createdAt: model.createdAt,
      updatedAt: model.updatedAt,
    );
  }

  @override
  Future<Either<Failure, List<ConversationEntity>>> getConversations() async {
    final result = await _conversationService.getConversations();
    return result.fold((failure) => Left(failure), (models) {
      try {
        final entities = models.map(_mapConversationModelToEntity).toList();
        return Right(entities);
      } catch (e, s) {
        print(
          '[ConversationRepositoryImpl-GetConversations] Mapping error type: ${e.runtimeType}',
        );
        print(
          '[ConversationRepositoryImpl-GetConversations] Mapping error: $e, Stacktrace: $s',
        );
        return Left(
          Failure.unknownError(
            message: 'Error mapping conversation data: ${e.toString()}',
            error: e,
            stackTrace: s,
          ),
        );
      }
    });
  }

  @override
  TaskEither<Failure, ConversationEntity> createConversation(
    ConversationInputModel params,
  ) {
    // TODO: Implement actual logic using ConversationService
    // For now, returning a placeholder or an error
    return TaskEither.left(
      Failure.unknownError(message: 'createConversation not implemented'),
    );
  }

  // All mapping and error handling methods below are no longer needed.
  // ConversationEntity _mapConversationApiModelToEntity(...) { ... }
  // MessageEntity _mapMessageApiModelToEntity(...) { ... }
  // Failure _handleErrorResponse(...) { ... }
}
