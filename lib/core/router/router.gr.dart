// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouterGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

part of 'router.dart';

abstract class _$AppRouter extends RootStackRouter {
  // ignore: unused_element
  _$AppRouter({super.navigatorKey});

  @override
  final Map<String, PageFactory> pagesMap = {
    ChatMessageRoute.name: (routeData) {
      final args = routeData.argsAs<ChatMessageRouteArgs>();
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: ChatMessagePage(
          key: args.key,
          conversation: args.conversation,
          conversationTitle: args.conversationTitle,
          currentUserId: args.currentUserId,
        ),
      );
    },
    ConversationListRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const ConversationListPage(),
      );
    },
    CreateConversationRoute.name: (routeData) {
      final args = routeData.argsAs<CreateConversationRouteArgs>();
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: CreateConversationPage(
          key: args.key,
          currentUserId: args.currentUserId,
        ),
      );
    },
    FullScreenImageViewerRoute.name: (routeData) {
      final args = routeData.argsAs<FullScreenImageViewerRouteArgs>();
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: FullScreenImageViewerPage(
          key: args.key,
          imageUrl: args.imageUrl,
          isFilePath: args.isFilePath,
        ),
      );
    },
    LoginRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const LoginPage(),
      );
    },
    RegisterRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const RegisterPage(),
      );
    },
  };
}

/// generated route for
/// [ChatMessagePage]
class ChatMessageRoute extends PageRouteInfo<ChatMessageRouteArgs> {
  ChatMessageRoute({
    Key? key,
    required ConversationEntity conversation,
    required String conversationTitle,
    required String currentUserId,
    List<PageRouteInfo>? children,
  }) : super(
          ChatMessageRoute.name,
          args: ChatMessageRouteArgs(
            key: key,
            conversation: conversation,
            conversationTitle: conversationTitle,
            currentUserId: currentUserId,
          ),
          initialChildren: children,
        );

  static const String name = 'ChatMessageRoute';

  static const PageInfo<ChatMessageRouteArgs> page =
      PageInfo<ChatMessageRouteArgs>(name);
}

class ChatMessageRouteArgs {
  const ChatMessageRouteArgs({
    this.key,
    required this.conversation,
    required this.conversationTitle,
    required this.currentUserId,
  });

  final Key? key;

  final ConversationEntity conversation;

  final String conversationTitle;

  final String currentUserId;

  @override
  String toString() {
    return 'ChatMessageRouteArgs{key: $key, conversation: $conversation, conversationTitle: $conversationTitle, currentUserId: $currentUserId}';
  }
}

/// generated route for
/// [ConversationListPage]
class ConversationListRoute extends PageRouteInfo<void> {
  const ConversationListRoute({List<PageRouteInfo>? children})
      : super(
          ConversationListRoute.name,
          initialChildren: children,
        );

  static const String name = 'ConversationListRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [CreateConversationPage]
class CreateConversationRoute
    extends PageRouteInfo<CreateConversationRouteArgs> {
  CreateConversationRoute({
    Key? key,
    required String currentUserId,
    List<PageRouteInfo>? children,
  }) : super(
          CreateConversationRoute.name,
          args: CreateConversationRouteArgs(
            key: key,
            currentUserId: currentUserId,
          ),
          initialChildren: children,
        );

  static const String name = 'CreateConversationRoute';

  static const PageInfo<CreateConversationRouteArgs> page =
      PageInfo<CreateConversationRouteArgs>(name);
}

class CreateConversationRouteArgs {
  const CreateConversationRouteArgs({
    this.key,
    required this.currentUserId,
  });

  final Key? key;

  final String currentUserId;

  @override
  String toString() {
    return 'CreateConversationRouteArgs{key: $key, currentUserId: $currentUserId}';
  }
}

/// generated route for
/// [FullScreenImageViewerPage]
class FullScreenImageViewerRoute
    extends PageRouteInfo<FullScreenImageViewerRouteArgs> {
  FullScreenImageViewerRoute({
    Key? key,
    required String imageUrl,
    bool isFilePath = false,
    List<PageRouteInfo>? children,
  }) : super(
          FullScreenImageViewerRoute.name,
          args: FullScreenImageViewerRouteArgs(
            key: key,
            imageUrl: imageUrl,
            isFilePath: isFilePath,
          ),
          initialChildren: children,
        );

  static const String name = 'FullScreenImageViewerRoute';

  static const PageInfo<FullScreenImageViewerRouteArgs> page =
      PageInfo<FullScreenImageViewerRouteArgs>(name);
}

class FullScreenImageViewerRouteArgs {
  const FullScreenImageViewerRouteArgs({
    this.key,
    required this.imageUrl,
    this.isFilePath = false,
  });

  final Key? key;

  final String imageUrl;

  final bool isFilePath;

  @override
  String toString() {
    return 'FullScreenImageViewerRouteArgs{key: $key, imageUrl: $imageUrl, isFilePath: $isFilePath}';
  }
}

/// generated route for
/// [LoginPage]
class LoginRoute extends PageRouteInfo<void> {
  const LoginRoute({List<PageRouteInfo>? children})
      : super(
          LoginRoute.name,
          initialChildren: children,
        );

  static const String name = 'LoginRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [RegisterPage]
class RegisterRoute extends PageRouteInfo<void> {
  const RegisterRoute({List<PageRouteInfo>? children})
      : super(
          RegisterRoute.name,
          initialChildren: children,
        );

  static const String name = 'RegisterRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}
