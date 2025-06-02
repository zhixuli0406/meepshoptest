import 'dart:async';
import 'dart:typed_data'; // Added for Uint8List
import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:image_picker/image_picker.dart'; // For XFile
import 'package:injectable/injectable.dart';
import 'package:meepshoptest/core/errors/failure.dart';
import 'package:meepshoptest/features/auth/domain/entities/user_input_entity.dart';
import 'package:meepshoptest/features/auth/presentation/blocs/auth_bloc.dart'; // To dispatch event to AuthBloc
import 'package:meepshoptest/features/auth/presentation/blocs/auth_event.dart'; // For AuthRegisterRequested
import 'package:meepshoptest/features/upload/domain/usecases/get_presigned_url_usecase.dart';
import 'package:meepshoptest/features/upload/domain/usecases/upload_file_usecase.dart';
import 'dart:io'; // For File, if needed for conversion from XFile

part 'register_event.dart';
part 'register_state.dart'; // Restored
part 'register_bloc.freezed.dart';

// Temporarily comment out RegisterBloc // Reverted this comment
@injectable
class RegisterBloc extends Bloc<RegisterEvent, RegisterState> {
  final GetPresignedUrlUseCase _getPresignedUrlUseCase;
  final UploadFileUseCase _uploadFileUseCase;
  final AuthBloc _authBloc; // To dispatch event after successful avatar upload

  RegisterBloc(
    this._getPresignedUrlUseCase,
    this._uploadFileUseCase,
    this._authBloc,
  ) : super(const RegisterState()) {
    on<UsernameChanged>(_onUsernameChanged);
    on<PasswordChanged>(_onPasswordChanged);
    on<PasswordConfirmChanged>(_onPasswordConfirmChanged);
    on<AvatarChanged>(_onAvatarChanged);
    on<RegisterSubmitted>(_onRegisterSubmitted);
  }

  void _onUsernameChanged(UsernameChanged event, Emitter<RegisterState> emit) {
    emit(state.copyWith(username: event.username));
  }

  void _onPasswordChanged(PasswordChanged event, Emitter<RegisterState> emit) {
    emit(state.copyWith(password: event.password));
  }

  void _onPasswordConfirmChanged(
    PasswordConfirmChanged event,
    Emitter<RegisterState> emit,
  ) {
    emit(state.copyWith(passwordConfirm: event.passwordConfirm));
  }

  Future<void> _onAvatarChanged(
    AvatarChanged event,
    Emitter<RegisterState> emit,
  ) async {
    if (event.avatarFile == null) {
      emit(state.copyWith(avatarFile: null, avatarBytes: null));
    } else {
      try {
        final bytes = await event.avatarFile!.readAsBytes();
        emit(state.copyWith(avatarFile: event.avatarFile, avatarBytes: bytes));
      } catch (e) {
        // Handle error reading file if necessary, e.g., emit an error state or clear avatar
        emit(
          state.copyWith(
            avatarFile: null,
            avatarBytes: null,
            errorMessage: 'Could not read image file.',
          ),
        );
      }
    }
  }

  Future<void> _onRegisterSubmitted(
    RegisterSubmitted event,
    Emitter<RegisterState> emit,
  ) async {
    if (!state.isFormValid) {
      emit(state.copyWith(errorMessage: 'Please ensure all fields are valid.'));
      return;
    }

    emit(
      state.copyWith(
        isSubmitting: true,
        errorMessage: null,
        successMessage: null,
        avatarUrl: null, // Clear any previous avatar URL attempt
      ),
    );

    // String? uploadedAvatarUrl; // Removed avatar upload logic for now

    // // Avatar upload logic is removed from here for now.
    // // It will be handled after successful registration and login.
    // if (state.avatarFile != null) {
    //   // ... existing S3 upload logic would be here, but is currently bypassed ...
    //   // For now, we assume uploadedAvatarUrl remains null or is not set here.
    // }

    final userInput = UserInputEntity(
      username: state.username,
      password: state.password,
      passwordConfirm: state.passwordConfirm,
      avatar: null, // Always pass null for avatar during initial registration
      legacyUserId: null, // Not handled by this form
    );

    _authBloc.add(
      AuthRegisterRequested(
        userInput: userInput,
        avatarFile: state.avatarFile, // Pass the selected avatar file
      ),
    );

    // This RegisterBloc's job is to prepare and send the registration request.
    // AuthBloc will handle the actual registration and global auth state.
    // If AuthBloc succeeds, a global listener (or logic within AuthBloc/observing widget)
    // should handle navigation and potentially trigger the subsequent avatar upload flow.

    // We don't emit success here directly related to user creation, only submission status.
    // The actual success/failure of user creation is handled by AuthBloc.
    // We can keep isSubmitting true until AuthBloc responds, or set it to false here.
    // Setting to false to allow UI to re-enable if AuthBloc takes time or has its own loading.
    emit(
      state.copyWith(
        isSubmitting: false,
        // successMessage: "Registration data submitted. Waiting for confirmation...", // Optional: message can be handled by AuthBloc state
      ),
    );
  }
}

// */ // Reverted this comment, but it was only one line, the one above needs to be removed
