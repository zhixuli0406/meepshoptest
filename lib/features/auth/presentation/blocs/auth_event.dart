import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:image_picker/image_picker.dart'; // For XFile
import 'package:meepshoptest/features/auth/domain/entities/user_entity.dart';
import 'package:meepshoptest/features/auth/domain/entities/user_input_entity.dart';

part 'auth_event.freezed.dart';

@freezed
sealed class AuthEvent with _$AuthEvent {
  const factory AuthEvent.appStarted() = AuthAppStarted;
  const factory AuthEvent.loginRequested({
    required String username,
    required String password,
  }) = AuthLoginRequested;
  const factory AuthEvent.registerRequested({
    required UserInputEntity userInput,
    XFile? avatarFile, // Avatar file selected during registration
  }) = AuthRegisterRequested;
  const factory AuthEvent.logoutRequested() = AuthLogoutRequested;
  // Internal event to react to user stream changes from ObserveUserUseCase
  const factory AuthEvent.userChanged(UserEntity? user) = AuthUserChanged;
  // Internal event to trigger avatar upload after successful registration
  const factory AuthEvent.avatarUploadRequested({
    required String userId,
    required XFile avatarFile,
    required UserEntity registeredUser,
  }) = AuthAvatarUploadRequested;
}
