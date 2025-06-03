import 'package:fpdart/fpdart.dart';
import 'package:meepshoptest/core/errors/failure.dart';
import 'package:meepshoptest/core/usecase/usecase.dart';
import 'package:meepshoptest/features/chat/data/models/message_input_model.dart';
import 'package:meepshoptest/features/chat/domain/entities/message_entity.dart';
import 'package:meepshoptest/features/chat/domain/repositories/message_repository.dart';
import 'package:injectable/injectable.dart';

class CreateMessageParams {
  final String conversationId;
  final MessageInputModel messageInput;

  CreateMessageParams({
    required this.conversationId,
    required this.messageInput,
  });
}

@lazySingleton
class CreateMessageUseCase
    implements UseCase<MessageEntity, CreateMessageParams> {
  final MessageRepository _repository;

  CreateMessageUseCase({required MessageRepository repository})
    : _repository = repository;

  @override
  Future<Either<Failure, MessageEntity>> call(
    CreateMessageParams params,
  ) async {
    return await _repository
        .createMessage(params.conversationId, params.messageInput)
        .run();
  }
}
