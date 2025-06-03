import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:meepshoptest/core/router/router.dart';
import 'package:meepshoptest/core/theme/app_theme.dart';
import 'package:meepshoptest/core/theme/cubit/theme_cubit.dart';
import 'package:meepshoptest/core/theme/cubit/theme_state.dart';
import 'package:meepshoptest/features/auth/presentation/blocs/auth_bloc.dart';
import 'package:meepshoptest/features/auth/presentation/blocs/auth_event.dart';
import 'package:meepshoptest/features/auth/presentation/blocs/auth_state.dart';
import 'package:meepshoptest/injectable.dart';

final appRouter = AppRouter();
final RouteObserver<PageRoute> routeObserver = RouteObserver<PageRoute>();

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await configureDependencies();

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider<AuthBloc>(
      create: (context) => getIt<AuthBloc>()..add(const AuthEvent.appStarted()),
      child: BlocListener<AuthBloc, AuthState>(
        listener: (context, state) {
          print("[AUTH_LISTENER] State changed: $state");
          switch (state) {
            case AuthAuthenticated():
              print("[AUTH_LISTENER] Navigating to ConversationListRoute");
              appRouter.replaceAll([const ConversationListRoute()]);
              break;
            case AuthUnauthenticated():
              print("[AUTH_LISTENER] Navigating to LoginRoute");
              appRouter.replaceAll([const LoginRoute()]);
              break;
            case AuthInitial():
            case AuthLoading():
            case AuthFailure():
              print("[AUTH_LISTENER] No navigation change for state: $state");
              break;
          }
        },
        child: BlocProvider(
          create: (context) => getIt<ThemeCubit>(),
          child: BlocBuilder<ThemeCubit, ThemeState>(
            builder: (context, themeState) {
              return ScreenUtilInit(
                designSize: const Size(375, 812),
                minTextAdapt: true,
                splitScreenMode: true,
                builder: (context, child) {
                  return MaterialApp.router(
                    title: 'Flutter Chat App',
                    theme: AppTheme.lightTheme,
                    darkTheme: AppTheme.darkTheme,
                    themeMode: themeState.themeMode,
                    routerConfig: appRouter.config(
                      navigatorObservers: () => [routeObserver],
                    ),
                    debugShowCheckedModeBanner: false,
                  );
                },
              );
            },
          ),
        ),
      ),
    );
  }
}
