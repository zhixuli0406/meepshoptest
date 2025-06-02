import 'package:get_it/get_it.dart';
import 'package:injectable/injectable.dart';
import 'package:meepshoptest/injectable.config.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:meepshoptest/core/network/chat_web_socket_service.dart';
import 'package:dio/dio.dart';

final getIt = GetIt.instance;

@InjectableInit(
  initializerName: r'init',
  preferRelativeImports: true,
  asExtension: false,
)
Future<GetIt> configureDependencies() async {
  return await init(getIt);
}

@module
abstract class LocalStorageModule {
  @preResolve
  Future<SharedPreferences> get prefs => SharedPreferences.getInstance();
}

@module
abstract class NetworkModule {
  @lazySingleton
  ChatWebSocketService get chatWebSocketService => ChatWebSocketService();

  @lazySingleton
  Dio get dio {
    final dio = Dio(
      BaseOptions(
        baseUrl: 'https://meeptestapi.zhixu-li.com/api/v1',
        connectTimeout: const Duration(seconds: 15),
        receiveTimeout: const Duration(seconds: 15),
      ),
    );
    return dio;
  }
}
