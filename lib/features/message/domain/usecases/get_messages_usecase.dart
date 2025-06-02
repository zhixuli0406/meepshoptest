import 'package:equatable/equatable.dart';
import 'package:fpdart/fpdart.dart';
import 'package:meepshoptest/core/errors/failure.dart';
import 'package:meepshoptest/core/usecase/usecase.dart';
import 'package:meepshoptest/features/message/domain/entities/message_entity.dart';
import 'package:meepshoptest/features/message/domain/repositories/message_repository.dart';
import 'package:injectable/injectable.dart';

class GetMessagesParams extends Equatable {
  final String conversationId;
  final int? before;
  final int? limit;

  const GetMessagesParams({
    required this.conversationId,
    this.before,
    this.limit,
  });

  @override
  List<Object?> get props => [conversationId, before, limit];
}

@lazySingleton
class GetMessagesUseCase
    implements UseCase<List<MessageEntity>, GetMessagesParams> {
  final MessageRepository _repository;

  GetMessagesUseCase({required MessageRepository repository})
    : _repository = repository;

  @override
  Future<Either<Failure, List<MessageEntity>>> call(
    GetMessagesParams params,
  ) async {
    return await _repository
        .getMessages(
          params.conversationId,
          before: params.before,
          limit: params.limit,
        )
        .run();
  }
}
