# Auth Feature Development Progress

## P0: User Registration with Avatar Upload and Local Storage

### Tasks

-   [ ] **Domain Layer**
    -   [ ] Define `UserEntity` (`lib/feature/auth/domain/entities/user_entity.dart`)
    -   [ ] Define `SignedUrlEntity` (`lib/feature/auth/domain/entities/signed_url_entity.dart`)
    -   [ ] Define `AuthRepository` interface (`lib/feature/auth/domain/repositories/auth_repository.dart`)
    -   [ ] Implement `RegisterUserUseCase` (`lib/feature/auth/domain/usecases/register_user_usecase.dart`)
    -   [ ] Implement `GetLocalUserUseCase` (`lib/feature/auth/domain/usecases/get_local_user_usecase.dart`)
    -   [ ] Implement `SaveLocalUserUseCase` (`lib/feature/auth/domain/usecases/save_local_user_usecase.dart`)
    -   [ ] Implement `DeleteLocalUserUseCase` (`lib/feature/auth/domain/usecases/delete_local_user_usecase.dart`)
-   [ ] **Data Layer**
    -   [ ] Define `UserModel` (from `User` schema) (`lib/feature/auth/data/models/user_model.dart`)
    -   [ ] Define `UserInputModel` (from `UserInput` schema) (`lib/feature/auth/data/models/user_input_model.dart`)
    -   [ ] Define `GenerateSignedUrlInputModel` (from `GenerateSignedUrlInput` schema) (`lib/feature/auth/data/models/generate_signed_url_input_model.dart`)
    -   [ ] Define `SignedUrlModel` (from `GeneratedSignedUrlData` schema) (`lib/feature/auth/data/models/signed_url_model.dart`)
    -   [ ] Implement `AuthApiService` (`lib/feature/auth/data/services/auth_api_service.dart`)
        -   [ ] `generateSignedUrl` method
        -   [ ] `registerUser` method
    -   [ ] Implement `S3UploadService` (`lib/feature/auth/data/services/s3_upload_service.dart`)
        -   [ ] `uploadFile` method
    -   [ ] Implement `AuthLocalService` (`lib/feature/auth/data/services/auth_local_service.dart`)
        -   [ ] `saveUser` method
        -   [ ] `getUser` method
        -   [ ] `deleteUser` method
    -   [ ] Implement `AuthRepositoryImpl` (`lib/feature/auth/data/repositories/auth_repository_impl.dart`)
-   [ ] **Presentation Layer**
    -   [ ] Define `RegisterEvent` (`lib/feature/auth/presentation/blocs/register_bloc/register_event.dart`)
    -   [ ] Define `RegisterState` (`lib/feature/auth/presentation/blocs/register_bloc/register_state.dart`)
    -   [ ] Implement `RegisterBloc` (`lib/feature/auth/presentation/blocs/register_bloc/register_bloc.dart`)
    -   [ ] Implement `RegisterPage` (`lib/feature/auth/presentation/pages/register_page.dart`)
    -   [ ] Implement `RegisterFormWidget` (`lib/feature/auth/presentation/widgets/register_form_widget.dart`) (Optional, can be part of RegisterPage)
-   [ ] **Dependency Injection**
    -   [ ] Register `auth` feature dependencies (`lib/feature/auth/auth_injectable_module.dart` or similar)
-   [ ] **Routing**
    -   [ ] Add `RegisterPageRoute` to `core/router/app_router.dart`
-   [ ] **Core Layer**
    -   [ ] Ensure `Failure` class is defined (`core/errors/failure.dart`) - *Assuming it exists based on rules*
    -   [ ] Ensure `ApiClient` for HTTP requests is available (`core/network/api_client.dart`) - *Assuming it exists*

### Notes
- Ensure all UI elements use `flutter_screenutil` for responsiveness.
- Use `fpdart` for error handling (`Either<Failure, Success>`).
- Use `freezed` for models, states, and events.
- Use `image_picker` for avatar selection.
- Use `shared_preferences` for local storage.
- Follow SOLID principles and clean code practices.
- Update this `feature_progress.md` as tasks are completed. 