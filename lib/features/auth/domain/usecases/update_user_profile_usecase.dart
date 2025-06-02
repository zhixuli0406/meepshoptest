import 'package:fpdart/fpdart.dart';
import 'package:injectable/injectable.dart';
import 'package:meepshoptest/core/errors/failure.dart';
import 'package:meepshoptest/core/usecase/usecase.dart';
import 'package:meepshoptest/features/auth/domain/entities/user_entity.dart';
import 'package:meepshoptest/features/auth/domain/repositories/auth_repository.dart';
import 'update_user_profile_params.dart'; // Import the params

@lazySingleton
class UpdateUserProfileUseCase
    implements UseCase<UserEntity, UpdateUserProfileParams> {
  final AuthRepository _repository;

  UpdateUserProfileUseCase(this._repository);

  @override
  Future<Either<Failure, UserEntity>> call(
    UpdateUserProfileParams params,
  ) async {
    return _repository.updateUserProfile(
      username: params.username,
      avatarUrl: params.avatarUrl,
    );
  }
}
