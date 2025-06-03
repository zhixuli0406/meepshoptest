import 'package:fpdart/fpdart.dart';
import 'package:meepshoptest/core/errors/failure.dart';
import 'package:meepshoptest/core/usecase/usecase.dart';
import 'package:meepshoptest/features/chat/domain/entities/reaction_update_response_entity.dart';
import 'package:meepshoptest/features/chat/domain/repositories/message_repository.dart';
import 'package:injectable/injectable.dart';

class UpdateMessageReactionParams {
  final String messageId;
  final String reactionType; // e.g., 'like', 'love'
  final String action; // "increment" or "decrement"

  UpdateMessageReactionParams({
    required this.messageId,
    required this.reactionType,
    required this.action,
  });
}

@lazySingleton
class UpdateMessageReactionUseCase
    implements
        UseCase<ReactionUpdateResponseEntity, UpdateMessageReactionParams> {
  final MessageRepository _repository;

  UpdateMessageReactionUseCase({required MessageRepository repository})
    : _repository = repository;

  @override
  Future<Either<Failure, ReactionUpdateResponseEntity>> call(
    UpdateMessageReactionParams params,
  ) async {
    return _repository
        .updateMessageReaction(
          messageId: params.messageId,
          reactionType: params.reactionType,
          action: params.action,
        )
        .run();
  }
}
