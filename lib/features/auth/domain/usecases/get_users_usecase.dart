import 'package:fpdart/fpdart.dart';
import 'package:injectable/injectable.dart';
import 'package:meepshoptest/core/errors/failure.dart';
import 'package:meepshoptest/core/usecase/usecase.dart';
import 'package:meepshoptest/features/auth/domain/entities/user_entity.dart';
import 'package:meepshoptest/features/auth/domain/repositories/auth_repository.dart';

@lazySingleton
class GetUsersUseCase implements UseCase<List<UserEntity>, NoParams> {
  final AuthRepository _repository;

  GetUsersUseCase(this._repository);

  @override
  Future<Either<Failure, List<UserEntity>>> call(NoParams params) async {
    return await _repository.getUsers();
  }
}
