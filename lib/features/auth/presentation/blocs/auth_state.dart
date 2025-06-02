import 'package:freezed_annotation/freezed_annotation.dart';
// import 'package:image_picker/image_picker.dart'; // No longer needed here
import 'package:meepshoptest/core/errors/failure.dart';
import 'package:meepshoptest/features/auth/domain/entities/user_entity.dart';

part 'auth_state.freezed.dart'; // For freezed generated code for AuthState

@freezed
sealed class AuthState with _$AuthState {
  const factory AuthState.initial() = AuthInitial;
  const factory AuthState.loading() = AuthLoading;
  const factory AuthState.authenticated({
    required UserEntity user,
    // XFile? pendingAvatarFile, // Removed
    // String? recentlyRegisteredUserId, // Removed
  }) = AuthAuthenticated;
  const factory AuthState.unauthenticated() = AuthUnauthenticated;
  const factory AuthState.failure({required Failure failure}) = AuthFailure;
}
