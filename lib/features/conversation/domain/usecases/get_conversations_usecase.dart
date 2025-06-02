import 'package:fpdart/fpdart.dart';
import 'package:injectable/injectable.dart';
import 'package:meepshoptest/core/errors/failure.dart';
import 'package:meepshoptest/core/usecase/usecase.dart';
import 'package:meepshoptest/features/conversation/domain/entities/conversation_entity.dart';
import 'package:meepshoptest/features/conversation/domain/repositories/conversation_repository.dart';

@lazySingleton
class GetConversationsUseCase
    implements UseCase<List<ConversationEntity>, NoParams> {
  final ConversationRepository _repository;

  GetConversationsUseCase(this._repository);

  @override
  Future<Either<Failure, List<ConversationEntity>>> call(
    NoParams params,
  ) async {
    return await _repository.getConversations();
  }
}
