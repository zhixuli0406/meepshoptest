import 'package:fpdart/fpdart.dart';
import 'package:meepshoptest/core/errors/exceptions.dart';
import 'package:meepshoptest/core/errors/failure.dart';
// Updated import paths
import 'package:meepshoptest/features/chat/data/models/message_api_model.dart';
import 'package:meepshoptest/features/chat/data/models/message_input_model.dart';
import 'package:meepshoptest/features/chat/data/models/reaction_update_response_api_model.dart';
import 'package:meepshoptest/features/chat/data/services/chat_data_source_service.dart';
import 'package:meepshoptest/features/chat/domain/entities/message_entity.dart';
import 'package:meepshoptest/features/chat/domain/entities/reaction_update_response_entity.dart';
import 'package:meepshoptest/features/chat/domain/repositories/message_repository.dart';
import 'package:injectable/injectable.dart';

@LazySingleton(as: MessageRepository)
class MessageRepositoryImpl implements MessageRepository {
  final ChatDataSourceService _dataSourceService;
  // final NetworkInfo _networkInfo; // Assuming NetworkInfo is used elsewhere or can be omitted for now

  MessageRepositoryImpl({
    required ChatDataSourceService dataSourceService,
    // required NetworkInfo networkInfo,
  }) : _dataSourceService = dataSourceService;
  // _networkInfo = networkInfo;

  @override
  TaskEither<Failure, List<MessageEntity>> getMessages(
    String conversationId, {
    int? before,
    int? limit,
  }) {
    return TaskEither(() async {
      final eitherResult = await _dataSourceService.getMessages(conversationId);
      return eitherResult.map<List<MessageEntity>>(
        (models) =>
            models.map<MessageEntity>((model) => model.toEntity()).toList(),
      );
    });
  }

  @override
  TaskEither<Failure, MessageEntity> createMessage(
    String conversationId,
    MessageInputModel messageInput,
  ) {
    return TaskEither(() async {
      final eitherResult = await _dataSourceService.createMessage(
        conversationId,
        messageInput,
      );
      return eitherResult.map<MessageEntity>((model) => model.toEntity());
    });
  }

  @override
  TaskEither<Failure, ReactionUpdateResponseEntity> updateMessageReaction({
    required String messageId,
    required String reactionType,
    required String action,
  }) {
    return TaskEither(() async {
      final eitherResult = await _dataSourceService.updateMessageReaction(
        messageId: messageId,
        reactionType: reactionType,
        action: action,
      );
      return eitherResult.map<ReactionUpdateResponseEntity>(
        (model) => model.toEntity(),
      );
    });
  }
}
