import 'package:fpdart/fpdart.dart';
import 'package:injectable/injectable.dart';
import 'package:meepshoptest/core/errors/failure.dart';
import 'package:meepshoptest/core/usecase/usecase.dart';
import 'package:meepshoptest/features/auth/domain/entities/auth_response_entity.dart';
import 'package:meepshoptest/features/auth/domain/entities/user_input_entity.dart';
import 'package:meepshoptest/features/auth/domain/repositories/auth_repository.dart';

@lazySingleton
class RegisterUserUseCase
    implements UseCase<AuthResponseEntity, UserInputEntity> {
  final AuthRepository _authRepository;

  RegisterUserUseCase(this._authRepository);

  @override
  Future<Either<Failure, AuthResponseEntity>> call(
    UserInputEntity params,
  ) async {
    return _authRepository.register(userInput: params);
  }
}
