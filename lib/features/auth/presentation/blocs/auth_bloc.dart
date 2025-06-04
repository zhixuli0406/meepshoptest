import 'dart:async';
// For File, if converting XFile
import 'package:bloc/bloc.dart';
import 'package:image_picker/image_picker.dart'; // For XFile
import 'package:injectable/injectable.dart';
import 'package:meepshoptest/core/errors/failure.dart';
import 'package:meepshoptest/features/auth/data/repositories/auth_repository_impl.dart'; // For TokenLocalService
import 'package:meepshoptest/features/auth/domain/entities/user_entity.dart';
import 'package:meepshoptest/features/auth/domain/entities/user_login_input_entity.dart';
import 'package:meepshoptest/features/auth/domain/usecases/get_logged_in_user_usecase.dart';
import 'package:meepshoptest/features/auth/domain/usecases/login_user_usecase.dart';
import 'package:meepshoptest/features/auth/domain/usecases/logout_user_usecase.dart';
import 'package:meepshoptest/features/auth/domain/usecases/observe_user_usecase.dart';
import 'package:meepshoptest/features/auth/domain/usecases/register_user_usecase.dart';
import 'package:meepshoptest/features/auth/domain/usecases/update_user_profile_params.dart';
import 'package:meepshoptest/features/auth/domain/usecases/update_user_profile_usecase.dart';
import 'package:meepshoptest/features/upload/domain/usecases/get_presigned_url_usecase.dart';
import 'package:meepshoptest/features/upload/domain/usecases/upload_file_usecase.dart';

import 'auth_event.dart';
import 'auth_state.dart';

@injectable
class AuthBloc extends Bloc<AuthEvent, AuthState> {
  final GetLoggedInUserUseCase _getLoggedInUserUseCase;
  final LoginUserUseCase _loginUserUseCase;
  final RegisterUserUseCase _registerUserUseCase;
  final LogoutUserUseCase _logoutUserUseCase;
  final ObserveUserUseCase _observeUserUseCase;
  final GetPresignedUrlUseCase _getPresignedUrlUseCase;
  final UploadFileUseCase _uploadFileUseCase;
  final UpdateUserProfileUseCase _updateUserProfileUseCase;
  final TokenLocalService _tokenLocalService;

  StreamSubscription<UserEntity?>? _userSubscription;

  AuthBloc({
    required GetLoggedInUserUseCase getLoggedInUserUseCase,
    required LoginUserUseCase loginUserUseCase,
    required RegisterUserUseCase registerUserUseCase,
    required LogoutUserUseCase logoutUserUseCase,
    required ObserveUserUseCase observeUserUseCase,
    required GetPresignedUrlUseCase getPresignedUrlUseCase,
    required UploadFileUseCase uploadFileUseCase,
    required UpdateUserProfileUseCase updateUserProfileUseCase,
    required TokenLocalService tokenLocalService,
  }) : _getLoggedInUserUseCase = getLoggedInUserUseCase,
       _loginUserUseCase = loginUserUseCase,
       _registerUserUseCase = registerUserUseCase,
       _logoutUserUseCase = logoutUserUseCase,
       _observeUserUseCase = observeUserUseCase,
       _getPresignedUrlUseCase = getPresignedUrlUseCase,
       _uploadFileUseCase = uploadFileUseCase,
       _updateUserProfileUseCase = updateUserProfileUseCase,
       _tokenLocalService = tokenLocalService,
       super(const AuthState.initial()) {
    on<AuthAppStarted>(_onAppStarted);
    on<AuthLoginRequested>(_onLoginRequested);
    on<AuthRegisterRequested>(_onRegisterRequested);
    on<AuthLogoutRequested>(_onLogoutRequested);
    on<AuthUserChanged>(_onUserChanged);
    on<AuthAvatarUploadRequested>(_onAvatarUploadRequested);

    _userSubscription = _observeUserUseCase.call().listen((userEntity) {
      add(AuthEvent.userChanged(userEntity));
    });
  }

  @override
  Future<void> close() {
    _userSubscription?.cancel();
    return super.close();
  }

  Future<void> _onAppStarted(
    AuthAppStarted event,
    Emitter<AuthState> emit,
  ) async {
    emit(const AuthState.loading());
    final result = await _getLoggedInUserUseCase.call();
    result.match(
      (failure) => emit(const AuthState.unauthenticated()),
      (user) => emit(AuthState.authenticated(user: user)),
    );
  }

  Future<void> _onLoginRequested(
    AuthLoginRequested event,
    Emitter<AuthState> emit,
  ) async {
    emit(const AuthState.loading());
    final loginInput = UserLoginInputEntity(
      username: event.username,
      password: event.password,
    );
    final result = await _loginUserUseCase.call(loginInput);
    result.match(
      (failure) => emit(AuthState.failure(failure: failure)),
      (authResponse) =>
          emit(AuthState.authenticated(user: authResponse.data.user)),
    );
  }

  Future<void> _onRegisterRequested(
    AuthRegisterRequested event,
    Emitter<AuthState> emit,
  ) async {
    emit(const AuthState.loading());
    final result = await _registerUserUseCase(event.userInput);
    result.match((failure) => emit(AuthState.failure(failure: failure)), (
      authResponseEntity,
    ) {
      emit(AuthState.authenticated(user: authResponseEntity.data.user));
      if (event.avatarFile != null) {
        add(
          AuthEvent.avatarUploadRequested(
            userId: authResponseEntity.data.user.id,
            avatarFile: event.avatarFile!,
            registeredUser: authResponseEntity.data.user,
          ),
        );
      }
    });
  }

  Future<void> _onLogoutRequested(
    AuthLogoutRequested event,
    Emitter<AuthState> emit,
  ) async {
    emit(const AuthState.loading());
    final result = await _logoutUserUseCase.call();
    result.match(
      (failure) => emit(AuthState.failure(failure: failure)),
      (_) => emit(const AuthState.unauthenticated()),
    );
  }

  void _onUserChanged(AuthUserChanged event, Emitter<AuthState> emit) {
    if (event.user != null) {
      emit(AuthState.authenticated(user: event.user!));
    } else {
      emit(const AuthState.unauthenticated());
    }
  }

  Future<void> _onAvatarUploadRequested(
    AuthAvatarUploadRequested event,
    Emitter<AuthState> emit,
  ) async {
    final token = await _tokenLocalService.getToken();
    if (token == null || token.isEmpty) {
      emit(
        AuthState.failure(
          failure: const Failure.unauthorized(
            message: 'Authentication token not found for avatar upload.',
          ),
        ),
      );
      return;
    }

    final XFile avatarFile = event.avatarFile;

    try {
      final fileBytes = await avatarFile.readAsBytes();
      final fileName = avatarFile.name;
      final fileType = avatarFile.mimeType ?? 'image/jpeg';

      print('[AuthBloc] Getting presigned URL for $fileName ($fileType)');
      final presignedUrlEither = await _getPresignedUrlUseCase.call(
        GetPresignedUrlParams(fileName: fileName, fileType: fileType),
      );

      await presignedUrlEither.match(
        (failure) async {
          print('[AuthBloc] Failed to get presigned URL: $failure');
          emit(AuthState.failure(failure: failure));
        },
        (presignedUrlResponse) async {
          print('[AuthBloc] Uploading to ${presignedUrlResponse.presignedUrl}');
          final uploadEither = await _uploadFileUseCase.call(
            UploadFileParams(
              presignedUrl: presignedUrlResponse.presignedUrl,
              fileBytes: fileBytes,
              contentType: fileType,
            ),
          );

          await uploadEither.match(
            (failure) async {
              print('[AuthBloc] Failed to upload file: $failure');
              emit(AuthState.failure(failure: failure));
            },
            (_) async {
              final publicUrl = presignedUrlResponse.publicUrl;
              print(
                '[AuthBloc] File uploaded to $publicUrl. Updating profile...',
              );

              final updateResult = await _updateUserProfileUseCase.call(
                UpdateUserProfileParams(avatarUrl: publicUrl),
              );

              updateResult.match(
                (failure) {
                  print('[AuthBloc] Failed to update profile: $failure');
                  emit(AuthState.failure(failure: failure));
                },
                (updatedUser) {
                  print(
                    '[AuthBloc] Profile updated successfully with new avatar for user: ${updatedUser.username}',
                  );
                  emit(AuthState.authenticated(user: updatedUser));
                },
              );
            },
          );
        },
      );
    } catch (e, s) {
      print(
        '[AuthBloc] Error during avatar upload process: $e, StackTrace: $s',
      );
      emit(
        AuthState.failure(
          failure: Failure.unknownError(
            message: 'Error during avatar upload: ${e.toString()}',
            error: e,
            stackTrace: s,
          ),
        ),
      );
    }
  }
}
