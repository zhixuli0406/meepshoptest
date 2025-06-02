import 'dart:async'; // For Stream
import 'package:injectable/injectable.dart';
import 'package:meepshoptest/core/usecase/usecase.dart';
import 'package:meepshoptest/features/auth/domain/entities/user_entity.dart';
import 'package:meepshoptest/features/auth/domain/repositories/auth_repository.dart';

@lazySingleton
class ObserveUserUseCase implements StreamUseCaseWithoutParams<UserEntity?> {
  final AuthRepository _authRepository;

  ObserveUserUseCase(this._authRepository);

  @override
  Stream<UserEntity?> call() {
    return _authRepository.user;
  }
}
