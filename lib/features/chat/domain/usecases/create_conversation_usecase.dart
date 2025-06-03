import 'package:fpdart/fpdart.dart';
import 'package:injectable/injectable.dart';
import 'package:meepshoptest/core/errors/failure.dart';
import 'package:meepshoptest/core/usecase/usecase.dart';
import 'package:meepshoptest/features/chat/domain/entities/conversation_entity.dart';
import 'package:meepshoptest/features/chat/domain/repositories/chat_repository.dart';

@lazySingleton
class CreateConversationUseCase
    implements UseCase<ConversationEntity, CreateConversationParams> {
  final ChatRepository repository;

  CreateConversationUseCase(this.repository);

  @override
  Future<Either<Failure, ConversationEntity>> call(
    CreateConversationParams params,
  ) async {
    return await repository.createConversation(
      name: params.name,
      memberIds: params.memberIds,
    );
  }
}

class CreateConversationParams {
  final String name;
  final List<String> memberIds;

  CreateConversationParams({required this.name, required this.memberIds});
}
