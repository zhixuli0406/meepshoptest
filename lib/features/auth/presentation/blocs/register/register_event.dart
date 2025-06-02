part of 'register_bloc.dart';

@freezed
sealed class RegisterEvent with _$RegisterEvent {
  const factory RegisterEvent.usernameChanged(String username) =
      UsernameChanged;
  const factory RegisterEvent.passwordChanged(String password) =
      PasswordChanged;
  const factory RegisterEvent.passwordConfirmChanged(String passwordConfirm) =
      PasswordConfirmChanged;
  const factory RegisterEvent.avatarChanged({required XFile? avatarFile}) =
      AvatarChanged;
  const factory RegisterEvent.registerSubmitted() = RegisterSubmitted;
}
