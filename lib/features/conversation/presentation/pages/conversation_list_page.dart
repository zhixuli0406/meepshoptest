import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';
import 'package:meepshoptest/core/utils/string_utils.dart';
import 'package:meepshoptest/features/auth/presentation/blocs/auth_bloc.dart';
import 'package:meepshoptest/features/auth/presentation/blocs/auth_event.dart';
import 'package:meepshoptest/features/auth/presentation/blocs/auth_state.dart';
// import 'package:meepshoptest/features/conversation/domain/entities/conversation_entity.dart'; // Ensure this is REMOVED or commented out
import 'package:meepshoptest/features/chat/domain/entities/conversation_entity.dart'; // Ensure this is ADDED
import 'package:meepshoptest/features/chat/domain/entities/participant_entity.dart'; // Ensure this is ADDED
import 'package:meepshoptest/features/conversation/presentation/blocs/conversation_list_bloc.dart';
import 'package:meepshoptest/injectable.dart'; // For getIt
import 'package:meepshoptest/core/router/router.dart'; // Ensure this is ADDED

@RoutePage()
class ConversationListPage extends StatelessWidget {
  const ConversationListPage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create:
          (context) =>
              getIt<ConversationListBloc>()..add(const LoadConversations()),
      child: Scaffold(
        appBar: AppBar(
          title: const Text('Conversations'),
          actions: [
            IconButton(
              icon: const Icon(Icons.logout),
              tooltip: 'Logout',
              onPressed: () {
                context.read<AuthBloc>().add(const AuthLogoutRequested());
              },
            ),
          ],
        ),
        body: BlocBuilder<ConversationListBloc, ConversationListState>(
          builder: (context, state) {
            return switch (state) {
              Initial() ||
              Loading() => const Center(child: CircularProgressIndicator()),
              Loaded(:final conversations) => _buildConversationList(
                context,
                conversations,
              ),
              Error(:final failure) => Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'Failed to load conversations: ${failure.message}',
                      textAlign: TextAlign.center,
                    ),
                    Gap(16.h),
                    ElevatedButton(
                      onPressed: () {
                        context.read<ConversationListBloc>().add(
                          const LoadConversations(),
                        );
                      },
                      child: const Text('Retry'),
                    ),
                  ],
                ),
              ),
            };
          },
        ),
      ),
    );
  }

  Widget _buildConversationList(
    BuildContext context,
    List<ConversationEntity> conversations,
  ) {
    if (conversations.isEmpty) {
      return const Center(
        child: Text('No conversations yet. Start a new one!'),
      );
    }
    return ListView.builder(
      itemCount: conversations.length,
      itemBuilder: (context, index) {
        final conversation = conversations[index];

        String? currentUserId;
        final authState = context.read<AuthBloc>().state;
        if (authState is AuthAuthenticated) {
          currentUserId = authState.user.id;
        }

        String displayTitle = conversation.name;
        if (displayTitle.isEmpty || displayTitle == "Unknown Conversation") {
          displayTitle = conversation.participants
              .map((p) => p.user ?? 'Unknown')
              .join(', ');
          if (displayTitle.isEmpty) displayTitle = "Conversation";
        }

        return ListTile(
          leading: CircleAvatar(
            child: Text(
              displayTitle.isNotEmpty ? displayTitle[0].toUpperCase() : 'C',
            ),
          ),
          title: Text(
            displayTitle,
            style: TextStyle(fontSize: 16.sp, fontWeight: FontWeight.bold),
          ),
          subtitle: Text(
            conversation.lastMessage ?? 'No messages yet',
            maxLines: 1,
            overflow: TextOverflow.ellipsis,
            style: TextStyle(fontSize: 14.sp),
          ),
          trailing:
              conversation.timestamp != null
                  ? Text(
                    StringUtils.formatRelativeTime(conversation.timestamp!),
                    style: TextStyle(fontSize: 12.sp, color: Colors.grey),
                  )
                  : null,
          onTap: () {
            if (currentUserId != null) {
              context.router.push(
                ChatMessageRoute(
                  conversation: conversation,
                  conversationTitle: displayTitle,
                  currentUserId: currentUserId,
                ),
              );
            }
            print('Tapped on conversation: ${conversation.id}');
          },
        );
      },
    );
  }
}
