// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:dio/dio.dart' as _i361;
import 'package:get_it/get_it.dart' as _i174;
import 'package:injectable/injectable.dart' as _i526;
import 'package:shared_preferences/shared_preferences.dart' as _i460;

import 'core/network/api_client.dart' as _i871;
import 'core/network/chat_web_socket_service.dart' as _i564;
import 'core/shared/notifiers/conversation_update_notifier.dart' as _i508;
import 'core/theme/cubit/theme_cubit.dart' as _i577;
import 'features/auth/data/repositories/auth_repository_impl.dart' as _i111;
import 'features/auth/data/services/auth_local_service.dart' as _i113;
import 'features/auth/data/services/auth_service.dart' as _i871;
import 'features/auth/data/services/token_local_service_impl.dart' as _i768;
import 'features/auth/domain/repositories/auth_repository.dart' as _i1015;
import 'features/auth/domain/usecases/get_logged_in_user_usecase.dart' as _i467;
import 'features/auth/domain/usecases/login_user_usecase.dart' as _i323;
import 'features/auth/domain/usecases/logout_user_usecase.dart' as _i84;
import 'features/auth/domain/usecases/observe_user_usecase.dart' as _i179;
import 'features/auth/domain/usecases/register_user_usecase.dart' as _i558;
import 'features/auth/domain/usecases/update_user_profile_usecase.dart'
    as _i883;
import 'features/auth/presentation/blocs/auth_bloc.dart' as _i302;
import 'features/auth/presentation/blocs/register/register_bloc.dart' as _i1049;
import 'features/chat/data/repositories/chat_repository_impl.dart' as _i382;
import 'features/chat/data/services/chat_data_source_service.dart' as _i526;
import 'features/chat/data/services/chat_remote_data_source.dart' as _i828;
import 'features/chat/domain/repositories/chat_repository.dart' as _i453;
import 'features/chat/domain/usecases/create_message_usecase.dart' as _i722;
import 'features/chat/domain/usecases/get_conversations_usecase.dart' as _i949;
import 'features/chat/domain/usecases/get_messages_usecase.dart' as _i350;
import 'features/chat/presentation/blocs/chat_message/chat_message_bloc.dart'
    as _i674;
import 'features/chat/presentation/blocs/conversation_list/conversation_list_bloc.dart'
    as _i330;
import 'features/conversation/data/repositories/conversation_repository_impl.dart'
    as _i970;
import 'features/conversation/data/services/conversation_api_service.dart'
    as _i308;
import 'features/conversation/data/services/conversation_service.dart' as _i745;
import 'features/conversation/domain/repositories/conversation_repository.dart'
    as _i792;
import 'features/conversation/domain/usecases/create_conversation_usecase.dart'
    as _i133;
import 'features/conversation/domain/usecases/get_conversations_usecase.dart'
    as _i786;
import 'features/conversation/presentation/blocs/conversation_list_bloc.dart'
    as _i15;
import 'features/message/data/repositories/message_repository_impl.dart'
    as _i400;
import 'features/message/data/services/message_api_service.dart' as _i11;
import 'features/message/domain/repositories/message_repository.dart' as _i37;
import 'features/message/domain/usecases/create_message_usecase.dart' as _i75;
import 'features/message/domain/usecases/get_messages_usecase.dart' as _i985;
import 'features/upload/data/repositories/upload_repository_impl.dart' as _i416;
import 'features/upload/data/services/upload_api_service.dart' as _i502;
import 'features/upload/data/services/upload_service.dart' as _i418;
import 'features/upload/domain/repositories/upload_repository.dart' as _i205;
import 'features/upload/domain/usecases/get_presigned_url_usecase.dart'
    as _i191;
import 'features/upload/domain/usecases/upload_file_usecase.dart' as _i290;
import 'injectable.dart' as _i1027;

// initializes the registration of main-scope dependencies inside of GetIt
Future<_i174.GetIt> init(
  _i174.GetIt getIt, {
  String? environment,
  _i526.EnvironmentFilter? environmentFilter,
}) async {
  final gh = _i526.GetItHelper(
    getIt,
    environment,
    environmentFilter,
  );
  final localStorageModule = _$LocalStorageModule();
  final networkModule = _$NetworkModule();
  await gh.factoryAsync<_i460.SharedPreferences>(
    () => localStorageModule.prefs,
    preResolve: true,
  );
  gh.lazySingleton<_i871.ApiClient>(() => _i871.ApiClient());
  gh.lazySingleton<_i508.ConversationUpdateNotifier>(
      () => _i508.ConversationUpdateNotifier());
  gh.lazySingleton<_i564.ChatWebSocketService>(
      () => networkModule.chatWebSocketService);
  gh.lazySingleton<_i361.Dio>(() => networkModule.dio);
  gh.lazySingleton<_i11.MessageApiService>(
      () => _i11.MessageApiServiceImpl(gh<_i871.ApiClient>()));
  gh.lazySingleton<_i502.UploadApiService>(
      () => _i502.UploadApiServiceImpl(gh<_i871.ApiClient>()));
  gh.factory<_i577.ThemeCubit>(
      () => _i577.ThemeCubit(gh<_i460.SharedPreferences>()));
  gh.lazySingleton<_i111.TokenLocalService>(
      () => _i768.TokenLocalServiceImpl(gh<_i460.SharedPreferences>()));
  gh.lazySingleton<_i113.AuthLocalService>(
      () => _i113.AuthLocalServiceImpl(gh<_i460.SharedPreferences>()));
  gh.lazySingleton<_i37.MessageRepository>(
      () => _i400.MessageRepositoryImpl(gh<_i11.MessageApiService>()));
  gh.lazySingleton<_i526.ChatDataSourceService>(
      () => _i828.ChatRemoteDataSourceImpl(gh<_i871.ApiClient>()));
  gh.lazySingleton<_i871.AuthService>(() => _i871.AuthService(gh<_i361.Dio>()));
  gh.lazySingleton<_i308.ConversationApiService>(
      () => _i308.ConversationApiServiceImpl(gh<_i871.ApiClient>()));
  gh.lazySingleton<_i418.UploadService>(
      () => _i418.UploadService(gh<_i871.ApiClient>()));
  gh.lazySingleton<_i745.ConversationService>(
      () => _i745.ConversationService(gh<_i871.ApiClient>()));
  gh.lazySingleton<_i1015.AuthRepository>(() => _i111.AuthRepositoryImpl(
        gh<_i871.AuthService>(),
        gh<_i111.TokenLocalService>(),
      ));
  gh.lazySingleton<_i558.RegisterUserUseCase>(
      () => _i558.RegisterUserUseCase(gh<_i1015.AuthRepository>()));
  gh.lazySingleton<_i323.LoginUserUseCase>(
      () => _i323.LoginUserUseCase(gh<_i1015.AuthRepository>()));
  gh.lazySingleton<_i467.GetLoggedInUserUseCase>(
      () => _i467.GetLoggedInUserUseCase(gh<_i1015.AuthRepository>()));
  gh.lazySingleton<_i84.LogoutUserUseCase>(
      () => _i84.LogoutUserUseCase(gh<_i1015.AuthRepository>()));
  gh.lazySingleton<_i179.ObserveUserUseCase>(
      () => _i179.ObserveUserUseCase(gh<_i1015.AuthRepository>()));
  gh.lazySingleton<_i75.CreateMessageUseCase>(() =>
      _i75.CreateMessageUseCase(repository: gh<_i37.MessageRepository>()));
  gh.lazySingleton<_i985.GetMessagesUseCase>(
      () => _i985.GetMessagesUseCase(repository: gh<_i37.MessageRepository>()));
  gh.lazySingleton<_i453.ChatRepository>(
      () => _i382.ChatRepositoryImpl(gh<_i526.ChatDataSourceService>()));
  gh.lazySingleton<_i792.ConversationRepository>(
      () => _i970.ConversationRepositoryImpl(gh<_i745.ConversationService>()));
  gh.lazySingleton<_i205.UploadRepository>(
      () => _i416.UploadRepositoryImpl(gh<_i418.UploadService>()));
  gh.lazySingleton<_i191.GetPresignedUrlUseCase>(
      () => _i191.GetPresignedUrlUseCase(gh<_i205.UploadRepository>()));
  gh.lazySingleton<_i290.UploadFileUseCase>(
      () => _i290.UploadFileUseCase(gh<_i205.UploadRepository>()));
  gh.lazySingleton<_i133.CreateConversationUseCase>(() =>
      _i133.CreateConversationUseCase(
          repository: gh<_i792.ConversationRepository>()));
  gh.lazySingleton<_i786.GetConversationsUseCase>(
      () => _i786.GetConversationsUseCase(gh<_i792.ConversationRepository>()));
  gh.lazySingleton<_i883.UpdateUserProfileUseCase>(
      () => _i883.UpdateUserProfileUseCase(gh<_i1015.AuthRepository>()));
  gh.lazySingleton<_i949.GetConversationsUsecase>(
      () => _i949.GetConversationsUsecase(gh<_i453.ChatRepository>()));
  gh.lazySingleton<_i722.CreateMessageUsecase>(
      () => _i722.CreateMessageUsecase(gh<_i453.ChatRepository>()));
  gh.lazySingleton<_i350.GetMessagesUsecase>(
      () => _i350.GetMessagesUsecase(gh<_i453.ChatRepository>()));
  gh.factory<_i674.ChatMessageBloc>(() => _i674.ChatMessageBloc(
        gh<_i350.GetMessagesUsecase>(),
        gh<_i722.CreateMessageUsecase>(),
        gh<_i508.ConversationUpdateNotifier>(),
        gh<_i564.ChatWebSocketService>(),
      ));
  gh.factory<_i302.AuthBloc>(() => _i302.AuthBloc(
        getLoggedInUserUseCase: gh<_i467.GetLoggedInUserUseCase>(),
        loginUserUseCase: gh<_i323.LoginUserUseCase>(),
        registerUserUseCase: gh<_i558.RegisterUserUseCase>(),
        logoutUserUseCase: gh<_i84.LogoutUserUseCase>(),
        observeUserUseCase: gh<_i179.ObserveUserUseCase>(),
        getPresignedUrlUseCase: gh<_i191.GetPresignedUrlUseCase>(),
        uploadFileUseCase: gh<_i290.UploadFileUseCase>(),
        updateUserProfileUseCase: gh<_i883.UpdateUserProfileUseCase>(),
        tokenLocalService: gh<_i111.TokenLocalService>(),
      ));
  gh.factory<_i1049.RegisterBloc>(() => _i1049.RegisterBloc(
        gh<_i191.GetPresignedUrlUseCase>(),
        gh<_i290.UploadFileUseCase>(),
        gh<_i302.AuthBloc>(),
      ));
  gh.factory<_i330.ConversationListBloc>(() => _i330.ConversationListBloc(
        gh<_i949.GetConversationsUsecase>(),
        gh<_i508.ConversationUpdateNotifier>(),
      ));
  gh.factory<_i15.ConversationListBloc>(
      () => _i15.ConversationListBloc(gh<_i786.GetConversationsUseCase>()));
  return getIt;
}

class _$LocalStorageModule extends _i1027.LocalStorageModule {}

class _$NetworkModule extends _i1027.NetworkModule {}
