import 'package:fpdart/fpdart.dart';
import 'package:injectable/injectable.dart';
import 'package:meepshoptest/core/errors/failure.dart';
import 'package:meepshoptest/core/usecase/usecase.dart';
import 'package:meepshoptest/features/chat/domain/entities/conversation_entity.dart';
import 'package:meepshoptest/features/chat/domain/repositories/chat_repository.dart';

@lazySingleton
class GetConversationsUsecase
    implements UseCase<List<ConversationEntity>, NoParams> {
  final ChatRepository _repository;

  GetConversationsUsecase(this._repository) {
    print(
      '[GetConversationsUsecase] Initialized. _repository is null: ${_repository == null}',
    );
  }

  @override
  Future<Either<Failure, List<ConversationEntity>>> call(
    NoParams params,
  ) async {
    print('[GetConversationsUsecase] call started.');
    if (_repository == null) {
      print(
        '[GetConversationsUsecase] FATAL: _repository is NULL before calling!',
      );
      return Left(
        const Failure.unknownError(
          message: '_repository in GetConversationsUsecase is null',
        ),
      );
    }
    try {
      final result = await _repository.getConversations();
      print(
        '[GetConversationsUsecase] _repository.getConversations call completed.',
      );
      result.fold(
        (l) => print(
          '[GetConversationsUsecase] _repository.getConversations returned Failure: ${l.message}',
        ),
        (r) => print(
          '[GetConversationsUsecase] _repository.getConversations returned Success with ${r.length} items',
        ),
      );
      return result;
    } catch (e, s) {
      print(
        '[GetConversationsUsecase] Exception during _repository.getConversations call: $e, Stacktrace: $s',
      );
      return Left(
        Failure.unknownError(
          message: 'Usecase error: ${e.toString()}',
          error: e,
          stackTrace: s,
        ),
      );
    }
  }
}
