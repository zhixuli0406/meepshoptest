import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:meepshoptest/features/chat/domain/entities/conversation_entity.dart';
import 'package:meepshoptest/features/chat/presentation/pages/chat_message_page.dart';
import 'package:meepshoptest/features/chat/presentation/pages/conversation_list_page.dart';
import 'package:meepshoptest/features/chat/presentation/pages/create_conversation_page.dart';
import 'package:meepshoptest/core/shared/widgets/full_screen_image_viewer.dart';
import 'package:meepshoptest/features/auth/presentation/pages/register_page.dart';
import 'package:meepshoptest/features/auth/presentation/pages/login_page.dart';

part 'router.gr.dart';

class MyNavigatorObserver extends NavigatorObserver {}

@AutoRouterConfig(replaceInRouteName: 'Page,Route')
class AppRouter extends _$AppRouter {
  @override
  RouteType get defaultRouteType => const RouteType.material();

  @override
  List<AutoRoute> get routes => [
    AutoRoute(page: LoginRoute.page, path: '/login', initial: true),
    AutoRoute(page: RegisterRoute.page, path: '/register'),
    AutoRoute(page: ConversationListRoute.page, path: '/conversations'),
    AutoRoute(
      path: '/conversation/:conversationId',
      page: ChatMessageRoute.page,
    ),
    AutoRoute(page: FullScreenImageViewerRoute.page, path: '/image-viewer'),
    AutoRoute(page: CreateConversationRoute.page, path: '/create-conversation'),
  ];

  @override
  List<NavigatorObserver> get navigatorObservers => [MyNavigatorObserver()];
}
