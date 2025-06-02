import 'package:fpdart/fpdart.dart';
import 'package:injectable/injectable.dart';
import 'package:meepshoptest/core/errors/failure.dart';
import 'package:meepshoptest/core/usecase/usecase.dart';
import 'package:meepshoptest/features/auth/domain/entities/auth_response_entity.dart';
import 'package:meepshoptest/features/auth/domain/entities/user_login_input_entity.dart';
import 'package:meepshoptest/features/auth/domain/repositories/auth_repository.dart';

@lazySingleton
class LoginUserUseCase
    implements UseCase<AuthResponseEntity, UserLoginInputEntity> {
  final AuthRepository _authRepository;

  LoginUserUseCase(this._authRepository);

  @override
  Future<Either<Failure, AuthResponseEntity>> call(
    UserLoginInputEntity params,
  ) async {
    return _authRepository.login(loginInput: params);
  }
}
