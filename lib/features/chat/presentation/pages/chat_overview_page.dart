import 'dart:async'; // Added for StreamSubscription

import 'package:auto_route/auto_route.dart'; // Added for context.router
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:meepshoptest/features/auth/presentation/blocs/auth_bloc.dart';
import 'package:meepshoptest/features/auth/presentation/blocs/auth_state.dart'
    as auth_state;
import 'package:meepshoptest/features/chat/presentation/blocs/create_conversation/create_conversation_bloc.dart'
    as create_conv_bloc;
import 'package:meepshoptest/features/conversation/presentation/blocs/conversation_list_bloc.dart';
import 'package:meepshoptest/injectable.dart'; // Added import for getIt
import 'package:meepshoptest/core/router/router.dart'; // Added for ChatMessageRoute
// import 'package:meepshoptest/features/chat/domain/usecases/create_conversation_usecase.dart'; // Will be provided via GetIt
// import 'package:meepshoptest/injection_container.dart'; // Ensure this path is correct and GetIt is setup

// Placeholder for GetIt service locator instance if not already defined globally
// You should replace this with your actual GetIt setup (e.g., import from injection_container.dart)
// final sl = GetIt.instance;

// Changed to StatefulWidget
class ChatOverviewPage extends StatefulWidget {
  const ChatOverviewPage({super.key});

  @override
  State<ChatOverviewPage> createState() => _ChatOverviewPageState();
}

class _ChatOverviewPageState extends State<ChatOverviewPage> {
  StreamSubscription<create_conv_bloc.CreateConversationState>?
  _createConversationSubscription;
  String? _currentUserId; // Store currentUserId

  @override
  void initState() {
    super.initState();

    // It's better to get currentUserId once and store it if it's stable
    // or re-evaluate if it can change during the lifetime of this page.
    final authState = context.read<AuthBloc>().state;
    if (authState is auth_state.AuthAuthenticated) {
      _currentUserId = authState.user.id;
    }

    // Subscribe to CreateConversationBloc stream
    // We get the bloc instance via context.read because MultiBlocProvider provides it above this state.
    // Ensure MultiBlocProvider is correctly set up in the build method.
    // The subscription should ideally happen after the first frame or in didChangeDependencies
    // if relying on context.read for a Bloc provided by an ancestor.
    // However, for a Bloc provided by the SAME widget's build method's MultiBlocProvider,
    // it should be accessible. Let's refine this if needed.
  }

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    // If _createConversationSubscription is null, it means we haven't subscribed yet.
    // This is a safer place to access Blocs via context.read if they are provided by ancestors.
    if (_createConversationSubscription == null) {
      final createConversationBloc =
          context.read<create_conv_bloc.CreateConversationBloc>();
      _createConversationSubscription = createConversationBloc.stream.listen((
        state,
      ) {
        print(
          "[ChatOverviewPage] Manual Subscription - CreateConversationBloc state changed: $state",
        );
        // Handle state changes for side effects
        final currentUserIdForHandler =
            _currentUserId; // Use the stored _currentUserId

        switch (state) {
          case create_conv_bloc.Success(:final conversation):
            ScaffoldMessenger.of(context).showSnackBar(
              SnackBar(content: Text('聊天室已建立: ${conversation.name}')),
            );
            // Trigger refresh of the conversation list using getIt
            getIt<ConversationListBloc>().add(
              const ConversationListEvent.loadConversations(),
            );

            if (currentUserIdForHandler != null) {
              String title = conversation.name;
              if (title.isEmpty) {
                if (conversation.participants.isNotEmpty) {
                  final otherParticipants =
                      conversation.participants
                          .where((p) => p.userId != currentUserIdForHandler)
                          .toList();
                  if (otherParticipants.isNotEmpty) {
                    title = otherParticipants
                        .map((p) => p.user ?? 'Participant')
                        .join(', ');
                  } else {
                    title = conversation.participants
                        .map((p) => p.user ?? 'Participant')
                        .join(', ');
                  }
                }
              }
              if (title.isEmpty) title = "New Chat";

              context.router.push(
                ChatMessageRoute(
                  conversation: conversation,
                  conversationTitle: title,
                  currentUserId: currentUserIdForHandler,
                ),
              );
            } else {
              ScaffoldMessenger.of(context).showSnackBar(
                const SnackBar(content: Text('錯誤：無法獲取使用者ID以開啟聊天室')),
              );
            }
            break;
          case create_conv_bloc.Error(:final failure):
            ScaffoldMessenger.of(context).showSnackBar(
              SnackBar(content: Text('建立聊天室失敗: ${failure.toString()}')),
            );
            break;
          case create_conv_bloc.Initial():
          case create_conv_bloc.Loading():
            break;
        }
      });
    }
  }

  @override
  void dispose() {
    _createConversationSubscription?.cancel();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    // Re-evaluate currentUserId here if it can change and needs to be fresh for the build method,
    // or rely on the _currentUserId from initState/didChangeDependencies if it's stable.
    // For the IconButton onPressed, it's better to get it fresh or ensure _currentUserId is up-to-date.
    final authStateForBuild =
        context.watch<AuthBloc>().state; // Use watch for reactive updates
    String? currentUserIdForButton;
    if (authStateForBuild is auth_state.AuthAuthenticated) {
      currentUserIdForButton = authStateForBuild.user.id;
      // Optionally update _currentUserId if it might have changed,
      // though initState/didChangeDependencies should handle the initial setup.
      if (_currentUserId != currentUserIdForButton) {
        // This can happen if auth state changes after initState.
        // However, stream handler uses _currentUserId captured at subscription time or updated separately.
        // For simplicity, we'll assume _currentUserId from initState is sufficient for the stream handler
        // if the user ID doesn't change while this page is active.
        // If it can, the logic to update _currentUserId for the stream handler needs careful consideration.
      }
    }

    // The MultiBlocProvider remains essential for providing the Blocs
    // so that context.read can find them, and for UserListBloc initialization.
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) {
            if (getIt.isRegistered<create_conv_bloc.CreateConversationBloc>()) {
              return getIt<create_conv_bloc.CreateConversationBloc>();
            } else {
              print(
                "CreateConversationBloc not registered in GetIt, or CreateConversationUseCase not provided.",
              );
              throw Exception(
                "CreateConversationBloc cannot be created. Check DI setup.",
              );
            }
          },
        ),
        BlocProvider.value(value: getIt<ConversationListBloc>()),
      ],
      child: Scaffold(
        appBar: AppBar(
          title: const Text('聊天室'),
          actions: [
            // This Builder is to ensure the context used for reading CreateConversationBloc
            // is a descendant of the MultiBlocProvider that provides it.
            Builder(
              builder: (appBarContext) {
                // Use a different context name
                return IconButton(
                  icon: const Icon(Icons.add_comment_outlined),
                  tooltip: '建立新的聊天室',
                  onPressed: () {
                    // Use currentUserIdForButton obtained reactively from AuthBloc.watch
                    if (currentUserIdForButton == null) {
                      ScaffoldMessenger.of(context).showSnackBar(
                        // context here is from the build method
                        const SnackBar(content: Text('錯誤：無法獲取使用者資訊以建立聊天室')),
                      );
                      return;
                    }
                    // Navigate to CreateConversationPage
                    // Use appBarContext here for router if needed, or the main build context
                    appBarContext.router.push(
                      CreateConversationRoute(
                        currentUserId: currentUserIdForButton,
                      ),
                    );
                  },
                );
              },
            ),
          ],
        ),
        // Removed the BlocListener
        body: const Center(
          child: Text('這裡是聊天室總覽，聊天室列表頁面是 ConversationListPage'),
        ),
      ),
    );
  }
}

// You need to ensure GetIt (or your chosen DI solution) is configured.
// Example of a GetIt instance (should be in your main DI setup file):
// final getIt = GetIt.instance;
//
// And then register your Blocs/UseCases, e.g.:
// getIt.registerLazySingleton(() => CreateConversationUseCase(getIt()));
// getIt.registerFactory(() => CreateConversationBloc(createConversationUseCase: getIt()));
// This is just illustrative. Your actual setup with @injectable might differ.
