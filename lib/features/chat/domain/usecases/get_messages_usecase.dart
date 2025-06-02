import 'package:fpdart/fpdart.dart';
import 'package:injectable/injectable.dart';
import 'package:meepshoptest/core/errors/failure.dart';
import 'package:meepshoptest/core/usecase/usecase.dart';
import 'package:meepshoptest/features/message/domain/entities/message_entity.dart';
import 'package:meepshoptest/features/chat/domain/repositories/chat_repository.dart';

@lazySingleton
class GetMessagesUsecase
    implements UseCase<List<MessageEntity>, GetMessagesParams> {
  final ChatRepository _repository;

  GetMessagesUsecase(this._repository);

  @override
  Future<Either<Failure, List<MessageEntity>>> call(GetMessagesParams params) {
    return _repository.getMessages(params.conversationId);
  }
}

class GetMessagesParams {
  final String conversationId;

  GetMessagesParams({required this.conversationId});
}
