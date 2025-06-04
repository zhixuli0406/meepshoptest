import 'package:fpdart/fpdart.dart';
import 'package:injectable/injectable.dart';
import 'package:meepshoptest/core/errors/failure.dart';
import 'package:meepshoptest/features/auth/data/models/auth_response_model.dart';
import 'package:meepshoptest/features/auth/data/models/user_input_model.dart';
import 'package:meepshoptest/features/auth/data/models/user_model.dart';
import 'package:meepshoptest/features/auth/data/services/auth_service.dart';
import 'package:meepshoptest/features/auth/data/models/user_login_input_model.dart';
import 'package:meepshoptest/features/auth/data/models/user_update_input_model.dart';
import 'package:meepshoptest/features/auth/domain/entities/user_entity.dart';
import 'package:meepshoptest/features/auth/domain/entities/auth_response_entity.dart';
import 'package:meepshoptest/features/auth/domain/entities/user_input_entity.dart';
import 'package:meepshoptest/features/auth/domain/entities/user_login_input_entity.dart';
import 'package:meepshoptest/features/auth/domain/repositories/auth_repository.dart';
import 'dart:async'; // For StreamController

// Placeholder for a service to handle local token storage
abstract class TokenLocalService {
  Future<String?> getToken();
  Future<void> saveToken(String token);
  Future<void> deleteToken();
}

// You would provide a concrete implementation for TokenLocalService, e.g., using flutter_secure_storage

@LazySingleton(as: AuthRepository)
class AuthRepositoryImpl implements AuthRepository {
  final AuthService _authService;
  final TokenLocalService _tokenLocalService;
  final StreamController<UserEntity?> _userController =
      StreamController<UserEntity?>.broadcast();

  AuthRepositoryImpl(this._authService, this._tokenLocalService);

  // Helper to map UserInputEntity to UserInputModel
  UserInputModel _mapUserInputEntityToModel(UserInputEntity entity) {
    return UserInputModel(
      username: entity.username,
      password: entity.password,
      passwordConfirm: entity.passwordConfirm,
      avatar: entity.avatar,
      legacyUserId: entity.legacyUserId,
    );
  }

  // Helper to map UserLoginInputEntity to UserLoginInputModel
  UserLoginInputModel _mapUserLoginInputEntityToModel(
    UserLoginInputEntity entity,
  ) {
    return UserLoginInputModel(
      username: entity.username,
      password: entity.password,
    );
  }

  @override
  Future<Either<Failure, AuthResponseEntity>> register({
    required UserInputEntity userInput,
  }) async {
    try {
      final userInputModel = _mapUserInputEntityToModel(userInput);
      final authResponseModel = await _authService.register(userInputModel);
      await _tokenLocalService.saveToken(authResponseModel.token);
      final userEntity = authResponseModel.data.user.toEntity();
      _userController.add(userEntity);
      return Right(authResponseModel.toEntity());
    } on Failure catch (e) {
      return Left(e);
    } catch (e, s) {
      print("[AuthRepositoryImpl-Register] Error: $e, Stacktrace: $s");
      return Left(
        Failure.unknownError(
          message: 'Registration failed: ${e.toString()}',
          error: e,
          stackTrace: s,
        ),
      );
    }
  }

  @override
  Future<Either<Failure, AuthResponseEntity>> login({
    required UserLoginInputEntity loginInput,
  }) async {
    try {
      final loginInputModel = _mapUserLoginInputEntityToModel(loginInput);
      final authResponseModel = await _authService.login(loginInputModel);
      await _tokenLocalService.saveToken(authResponseModel.token);
      final userEntity = authResponseModel.data.user.toEntity();
      _userController.add(userEntity);
      return Right(authResponseModel.toEntity());
    } on Failure catch (e) {
      _userController.add(null);
      return Left(e);
    } catch (e, s) {
      print("[AuthRepositoryImpl-Login] Error: $e, Stacktrace: $s");
      _userController.add(null);
      return Left(
        Failure.unknownError(
          message: 'Login failed: ${e.toString()}',
          error: e,
          stackTrace: s,
        ),
      );
    }
  }

  @override
  Future<Either<Failure, UserEntity>> getMe() async {
    try {
      final token = await _tokenLocalService.getToken();
      if (token == null || token.isEmpty) {
        await _tokenLocalService.deleteToken();
        _userController.add(null);
        return const Left(Failure.unauthorized(message: 'No token found'));
      }
      final userModel = await _authService.getMe(token);
      final userEntity = userModel.toEntity();
      _userController.add(userEntity);
      return Right(userEntity);
    } on Failure catch (e) {
      await _tokenLocalService.deleteToken();
      _userController.add(null);
      return Left(e);
    } catch (e, s) {
      print("[AuthRepositoryImpl-GetMe] Error: $e, Stacktrace: $s");
      await _tokenLocalService.deleteToken();
      _userController.add(null);
      return Left(
        Failure.unknownError(
          message: 'GetMe failed: ${e.toString()}',
          error: e,
          stackTrace: s,
        ),
      );
    }
  }

  @override
  Future<Either<Failure, void>> logout() async {
    try {
      await _tokenLocalService.deleteToken();
      _userController.add(null);
      return const Right(null);
    } catch (e, s) {
      print("[AuthRepositoryImpl-Logout] Error: $e, Stacktrace: $s");
      _userController.add(null);
      return Left(
        Failure.unknownError(
          message: 'Logout failed: ${e.toString()}',
          error: e,
          stackTrace: s,
        ),
      );
    }
  }

  @override
  Stream<UserEntity?> get user => _userController.stream;

  @override
  Future<Either<Failure, List<UserEntity>>> getUsers() async {
    try {
      final token = await _tokenLocalService.getToken();
      if (token == null || token.isEmpty) {
        return const Left(
          Failure.unauthorized(message: 'No token found for getUsers'),
        );
      }
      final List<UserModel> userModels = await _authService.getUsers(token);
      final List<UserEntity> userEntities =
          userModels.map((model) => model.toEntity()).toList();
      return Right(userEntities);
    } on Failure catch (e) {
      return Left(e);
    } catch (e, s) {
      print("[AuthRepositoryImpl-GetUsers] Error: $e, Stacktrace: $s");
      return Left(
        Failure.unknownError(
          message: 'GetUsers failed in repository: ${e.toString()}',
          error: e,
          stackTrace: s,
        ),
      );
    }
  }

  @override
  Future<Either<Failure, UserEntity>> updateUserProfile({
    String? username,
    String? avatarUrl,
  }) async {
    try {
      final token = await _tokenLocalService.getToken();
      if (token == null || token.isEmpty) {
        return const Left(
          Failure.unauthorized(message: 'No token found for updating profile'),
        );
      }

      final inputModel = UserUpdateInputModel(
        username: username,
        avatar: avatarUrl,
      );

      final updatedUserModel = await _authService.updateUserProfile(
        token,
        inputModel,
      );
      final updatedUserEntity = updatedUserModel.toEntity();
      _userController.add(updatedUserEntity);
      return Right(updatedUserEntity);
    } on Failure catch (e) {
      return Left(e);
    } catch (e, s) {
      print("[AuthRepositoryImpl-UpdateProfile] Error: $e, Stacktrace: $s");
      return Left(
        Failure.unknownError(
          message: 'Update profile failed: ${e.toString()}',
          error: e,
          stackTrace: s,
        ),
      );
    }
  }

  @override
  void dispose() {
    _userController.close();
  }
}
