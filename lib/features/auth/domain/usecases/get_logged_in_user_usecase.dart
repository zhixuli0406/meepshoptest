import 'package:fpdart/fpdart.dart';
import 'package:injectable/injectable.dart';
import 'package:meepshoptest/core/errors/failure.dart';
import 'package:meepshoptest/core/usecase/usecase.dart';
import 'package:meepshoptest/features/auth/domain/entities/user_entity.dart';
import 'package:meepshoptest/features/auth/domain/repositories/auth_repository.dart';

@lazySingleton
class GetLoggedInUserUseCase implements UseCaseWithoutParams<UserEntity> {
  final AuthRepository _authRepository;

  GetLoggedInUserUseCase(this._authRepository);

  @override
  Future<Either<Failure, UserEntity>> call() async {
    return _authRepository.getMe();
  }
}
