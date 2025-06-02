import 'package:fpdart/fpdart.dart';
import 'package:injectable/injectable.dart';
import 'package:meepshoptest/core/errors/failure.dart';
import 'package:meepshoptest/core/usecase/usecase.dart';
import 'package:meepshoptest/features/auth/domain/repositories/auth_repository.dart';

@lazySingleton
class LogoutUserUseCase implements UseCaseWithoutParams<void> {
  final AuthRepository _authRepository;

  LogoutUserUseCase(this._authRepository);

  @override
  Future<Either<Failure, void>> call() async {
    return _authRepository.logout();
  }
}
