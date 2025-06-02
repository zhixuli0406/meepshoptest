import 'package:fpdart/fpdart.dart';
import 'package:meepshoptest/core/errors/failure.dart';
import 'package:meepshoptest/core/usecase/usecase.dart';
import 'package:meepshoptest/features/conversation/data/models/conversation_input_model.dart';
import 'package:meepshoptest/features/conversation/domain/entities/conversation_entity.dart';
import 'package:meepshoptest/features/conversation/domain/repositories/conversation_repository.dart';
import 'package:injectable/injectable.dart';

@lazySingleton
class CreateConversationUseCase
    implements UseCase<ConversationEntity, ConversationInputModel> {
  final ConversationRepository _repository;

  CreateConversationUseCase({required ConversationRepository repository})
    : _repository = repository;

  @override
  Future<Either<Failure, ConversationEntity>> call(
    ConversationInputModel params,
  ) async {
    return await _repository.createConversation(params).run();
  }
}
