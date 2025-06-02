part of 'register_bloc.dart';
// part 'register_state.freezed.dart'; // Removed

@freezed
sealed class RegisterState with _$RegisterState {
  const factory RegisterState({
    @Default('') String username,
    @Default('') String password,
    @Default('') String passwordConfirm,
    XFile? avatarFile,
    Uint8List? avatarBytes, // User's selected avatar image bytes
    @Default(false) bool isSubmitting,
    String? avatarUrl,
    String? successMessage,
    String? errorMessage,
  }) = _RegisterState;

  const RegisterState._();

  bool get isFormValid =>
      username.isNotEmpty &&
      password.isNotEmpty &&
      passwordConfirm.isNotEmpty &&
      password == passwordConfirm;
}
