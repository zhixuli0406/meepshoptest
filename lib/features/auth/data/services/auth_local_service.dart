import 'dart:convert';
import 'package:fpdart/fpdart.dart';
import 'package:injectable/injectable.dart';
import 'package:meepshoptest/core/errors/failure.dart';
import 'package:meepshoptest/features/auth/data/models/user_model.dart';
import 'package:shared_preferences/shared_preferences.dart';

abstract class AuthLocalService {
  TaskEither<Failure, Unit> saveUser(UserModel user);
  TaskEither<Failure, UserModel?> getUser();
  TaskEither<Failure, Unit> deleteUser();
}

@LazySingleton(as: AuthLocalService)
class AuthLocalServiceImpl implements AuthLocalService {
  final SharedPreferences _sharedPreferences;
  static const String _userCacheKey = 'CACHED_USER';

  AuthLocalServiceImpl(this._sharedPreferences);

  @override
  TaskEither<Failure, UserModel?> getUser() {
    return TaskEither.tryCatch(
      () async {
        final jsonString = _sharedPreferences.getString(_userCacheKey);
        if (jsonString != null) {
          return UserModel.fromJson(
            jsonDecode(jsonString) as Map<String, dynamic>,
          );
        }
        return null;
      },
      (error, stackTrace) {
        return Failure.localCacheError(
          message: 'Failed to retrieve user from cache: ${error.toString()}',
        );
      },
    );
  }

  @override
  TaskEither<Failure, Unit> saveUser(UserModel user) {
    return TaskEither.tryCatch(
      () async {
        final jsonString = jsonEncode(user.toJson());
        await _sharedPreferences.setString(_userCacheKey, jsonString);
        return unit;
      },
      (error, stackTrace) {
        return Failure.localCacheError(
          message: 'Failed to save user to cache: ${error.toString()}',
        );
      },
    );
  }

  @override
  TaskEither<Failure, Unit> deleteUser() {
    return TaskEither.tryCatch(
      () async {
        await _sharedPreferences.remove(_userCacheKey);
        return unit;
      },
      (error, stackTrace) {
        return Failure.localCacheError(
          message: 'Failed to delete user from cache: ${error.toString()}',
        );
      },
    );
  }
}
