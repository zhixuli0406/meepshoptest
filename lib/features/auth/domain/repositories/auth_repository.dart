import 'dart:io';
import 'dart:async';
// import 'dart:typed_data'; // No longer needed here

import 'package:fpdart/fpdart.dart';
import 'package:meepshoptest/core/errors/failure.dart';
import 'package:meepshoptest/features/auth/domain/entities/auth_response_entity.dart';
// import 'package:meepshoptest/features/auth/domain/entities/generate_signed_url_entity.dart'; // No longer needed
import 'package:meepshoptest/features/auth/domain/entities/user_entity.dart';
import 'package:meepshoptest/features/auth/domain/entities/user_input_entity.dart';
import 'package:meepshoptest/features/auth/domain/entities/user_login_input_entity.dart';
// import 'package:meepshoptest/features/upload/data/models/generate_signed_url_input_model.dart' as upload_input; // No longer needed

// Define a type for the parameters needed to register a user
class RegisterUserParams {
  final String username;
  final String? avatarUrl;
  final String? avatarS3Key;

  RegisterUserParams({
    required this.username,
    this.avatarUrl,
    this.avatarS3Key,
  });
}

// Define a type for the parameters needed to generate a signed URL
class GenerateSignedUrlParams {
  final String filename;
  final String contentType;
  final String uploadType;
  final String? userId; // Optional, as per swagger

  GenerateSignedUrlParams({
    required this.filename,
    required this.contentType,
    required this.uploadType,
    this.userId,
  });
}

// Define a type for parameters needed to update a user's avatar
class UpdateUserAvatarParams {
  final String userId;
  final String avatarUrl;
  final String s3Key;

  UpdateUserAvatarParams({
    required this.userId,
    required this.avatarUrl,
    required this.s3Key,
  });
}

abstract class AuthRepository {
  Future<Either<Failure, AuthResponseEntity>> register({
    required UserInputEntity userInput,
  });

  Future<Either<Failure, AuthResponseEntity>> login({
    required UserLoginInputEntity loginInput,
  });

  Future<Either<Failure, UserEntity>> getMe();

  Future<Either<Failure, void>> logout();

  Stream<UserEntity?> get user;

  Future<Either<Failure, List<UserEntity>>> getUsers();

  Future<Either<Failure, UserEntity>> updateUserProfile({
    String? username,
    String? avatarUrl,
  });

  void dispose();

  // TaskEither<Failure, GenerateSignedUrlEntity> generateSignedUrl(
  //     upload_input.GenerateSignedUrlInputModel input); // Removed

  // TaskEither<Failure, String> uploadFileToS3(
  //     {required String presignedUrl, required Uint8List fileBytes}); // Removed

  // TaskEither<Failure, UserEntity> registerUser(Map<String, dynamic> data); // Removed
}
