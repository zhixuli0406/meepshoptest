import 'package:fpdart/fpdart.dart';
import 'package:meepshoptest/core/errors/failure.dart';
// import 'package:meepshoptest/core/network/api_response.dart'; // REMOVE
import 'package:meepshoptest/features/message/data/models/message_api_model.dart';
import 'package:meepshoptest/features/message/data/models/message_input_model.dart';
import 'package:meepshoptest/features/message/data/services/message_api_service.dart';
import 'package:meepshoptest/features/message/domain/entities/message_entity.dart';
// import 'package:meepshoptest/features/message/domain/entities/message_sender_entity.dart'; // Not directly used
import 'package:meepshoptest/features/message/domain/repositories/message_repository.dart';
import 'package:injectable/injectable.dart';

@LazySingleton(as: MessageRepository)
class MessageRepositoryImpl implements MessageRepository {
  final MessageApiService _messageApiService;

  MessageRepositoryImpl(this._messageApiService);

  @override
  TaskEither<Failure, List<MessageEntity>> getMessages(
    String conversationId, {
    int? before,
    int? limit,
  }) {
    return TaskEither(
      () => _messageApiService
          .getMessages(conversationId, before: before, limit: limit)
          .then(
            (eitherResult) => eitherResult.map(
              (apiModelList) => apiModelList.map((m) => m.toEntity()).toList(),
            ),
          ),
    );
  }

  @override
  TaskEither<Failure, MessageEntity> createMessage(
    String conversationId,
    MessageInputModel messageInput,
  ) {
    return TaskEither(
      () => _messageApiService
          .createMessage(conversationId, messageInput)
          .then(
            (eitherResult) =>
                eitherResult.map((apiModel) => apiModel.toEntity()),
          ),
    );
  }

  // _mapMessageApiModelToEntity and _handleErrorResponse are no longer needed.
}
