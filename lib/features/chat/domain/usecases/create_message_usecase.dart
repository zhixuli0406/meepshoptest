import 'package:fpdart/fpdart.dart';
import 'package:injectable/injectable.dart';
import 'package:meepshoptest/core/errors/failure.dart';
import 'package:meepshoptest/core/usecase/usecase.dart';
import 'package:meepshoptest/features/message/domain/entities/message_entity.dart';
import 'package:meepshoptest/features/chat/domain/repositories/chat_repository.dart';

@lazySingleton
class CreateMessageUsecase
    implements UseCase<MessageEntity, CreateMessageParams> {
  final ChatRepository _repository;

  CreateMessageUsecase(this._repository);

  @override
  Future<Either<Failure, MessageEntity>> call(CreateMessageParams params) {
    return _repository.createMessage(
      params.conversationId,
      params.messageText,
      params.currentUserId,
      params.senderName,
      params.senderAvatar,
      params.messageType,
    );
  }
}

class CreateMessageParams {
  final String conversationId;
  final String messageText;
  final String currentUserId;
  final String senderName;
  final String senderAvatar;
  final String messageType;

  CreateMessageParams({
    required this.conversationId,
    required this.messageText,
    required this.currentUserId,
    required this.senderName,
    required this.senderAvatar,
    this.messageType = 'text',
  });
}
