import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:intl/intl.dart';
import 'package:meepshoptest/core/router/router.dart';
import 'package:meepshoptest/core/theme/cubit/theme_cubit.dart';
import 'package:meepshoptest/core/theme/cubit/theme_state.dart';
import 'package:meepshoptest/features/auth/presentation/blocs/auth_bloc.dart';
import 'package:meepshoptest/features/auth/presentation/blocs/auth_event.dart';
import 'package:meepshoptest/features/auth/presentation/blocs/auth_state.dart';
import 'package:meepshoptest/features/chat/domain/entities/conversation_entity.dart';
import 'package:meepshoptest/features/chat/presentation/blocs/conversation_list/conversation_list_bloc.dart';
import 'package:meepshoptest/injectable.dart';

@RoutePage()
class ConversationListPage extends StatelessWidget {
  const ConversationListPage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create:
          (context) =>
              getIt<ConversationListBloc>()
                ..add(const ConversationListEvent.loadConversations()),
      child: Scaffold(
        appBar: AppBar(
          title: const Text('Chats'),
          actions: [
            BlocBuilder<ThemeCubit, ThemeState>(
              builder: (context, themeState) {
                IconData iconData;
                ThemeMode nextMode;

                if (themeState.themeMode == ThemeMode.light) {
                  iconData = Icons.dark_mode_outlined;
                  nextMode = ThemeMode.dark;
                } else {
                  iconData = Icons.light_mode_outlined;
                  nextMode = ThemeMode.light;
                }

                return IconButton(
                  icon: Icon(iconData),
                  tooltip: 'Toggle Theme',
                  onPressed: () {
                    context.read<ThemeCubit>().setThemeMode(nextMode);
                  },
                );
              },
            ),
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
              Loaded(:final conversations) =>
                conversations.isEmpty
                    ? const Center(child: Text('No chats available'))
                    : ListView.builder(
                      itemCount: conversations.length,
                      itemBuilder: (context, index) {
                        final conversation = conversations[index];

                        List<String> participantNames =
                            conversation.participants
                                .map((p) => p.user)
                                .toList();
                        List<String> participantAvatars =
                            conversation.participants
                                .map((p) => p.avatar)
                                .toList();

                        Widget leadingWidget;
                        if (participantAvatars.isEmpty) {
                          leadingWidget = CircleAvatar(
                            backgroundColor:
                                Theme.of(
                                  context,
                                ).colorScheme.secondaryContainer,
                            foregroundColor:
                                Theme.of(
                                  context,
                                ).colorScheme.onSecondaryContainer,
                            child: const Icon(Icons.group),
                          );
                        } else if (participantAvatars.length == 1) {
                          leadingWidget = CircleAvatar(
                            backgroundColor:
                                Theme.of(
                                  context,
                                ).colorScheme.secondaryContainer,
                            foregroundColor:
                                Theme.of(
                                  context,
                                ).colorScheme.onSecondaryContainer,
                            backgroundImage:
                                participantAvatars[0].isNotEmpty
                                    ? NetworkImage(participantAvatars[0])
                                    : null,
                            child:
                                participantAvatars[0].isEmpty &&
                                        participantNames[0].isNotEmpty
                                    ? Text(
                                      participantNames[0][0].toUpperCase(),
                                      style: TextStyle(
                                        color:
                                            Theme.of(
                                              context,
                                            ).colorScheme.onSecondaryContainer,
                                      ),
                                    )
                                    : null,
                          );
                        } else {
                          leadingWidget = SizedBox(
                            width: 56,
                            height: 40,
                            child: Stack(
                              children: [
                                if (participantAvatars.length > 1)
                                  Positioned(
                                    left: 16,
                                    child: CircleAvatar(
                                      radius: 18,
                                      backgroundColor:
                                          Theme.of(
                                            context,
                                          ).colorScheme.secondaryContainer,
                                      foregroundColor:
                                          Theme.of(
                                            context,
                                          ).colorScheme.onSecondaryContainer,
                                      backgroundImage:
                                          participantAvatars[1].isNotEmpty
                                              ? NetworkImage(
                                                participantAvatars[1],
                                              )
                                              : null,
                                      child:
                                          participantAvatars[1].isEmpty &&
                                                  participantNames.length > 1 &&
                                                  participantNames[1].isNotEmpty
                                              ? Text(
                                                participantNames[1][0]
                                                    .toUpperCase(),
                                                style: TextStyle(
                                                  color:
                                                      Theme.of(context)
                                                          .colorScheme
                                                          .onSecondaryContainer,
                                                ),
                                              )
                                              : null,
                                    ),
                                  ),
                                Positioned(
                                  left: 0,
                                  child: CircleAvatar(
                                    radius: 18,
                                    backgroundColor:
                                        Theme.of(
                                          context,
                                        ).colorScheme.secondaryContainer,
                                    foregroundColor:
                                        Theme.of(
                                          context,
                                        ).colorScheme.onSecondaryContainer,
                                    backgroundImage:
                                        participantAvatars[0].isNotEmpty
                                            ? NetworkImage(
                                              participantAvatars[0],
                                            )
                                            : null,
                                    child:
                                        participantAvatars[0].isEmpty &&
                                                participantNames[0].isNotEmpty
                                            ? Text(
                                              participantNames[0][0]
                                                  .toUpperCase(),
                                              style: TextStyle(
                                                color:
                                                    Theme.of(context)
                                                        .colorScheme
                                                        .onSecondaryContainer,
                                              ),
                                            )
                                            : null,
                                  ),
                                ),
                              ],
                            ),
                          );
                        }

                        String titleText = participantNames.join(', ');
                        if (titleText.isEmpty) {
                          titleText = 'Unknown Conversation';
                        }

                        return ListTile(
                          leading: leadingWidget,
                          title: Text(
                            titleText,
                            maxLines: 1,
                            overflow: TextOverflow.ellipsis,
                          ),
                          subtitle: Text(
                            _formatLastMessage(conversation.lastMessage),
                            maxLines: 1,
                            overflow: TextOverflow.ellipsis,
                          ),
                          trailing: Text(
                            _formatConversationTimestamp(
                              conversation.timestamp,
                            ),
                          ),
                          onTap: () async {
                            final authState = context.read<AuthBloc>().state;
                            String? currentUserId;

                            if (authState is AuthAuthenticated) {
                              currentUserId = authState.user.id;
                            }

                            if (currentUserId != null && context.mounted) {
                              final String conversationTitle = participantNames
                                  .join(', ');
                              context.pushRoute(
                                ChatMessageRoute(
                                  key: ValueKey(conversation.id.toString()),
                                  conversation: conversation,
                                  conversationTitle: titleText,
                                  currentUserId: currentUserId,
                                ),
                              );
                            } else {
                              if (context.mounted) {
                                ScaffoldMessenger.of(context).showSnackBar(
                                  const SnackBar(
                                    content: Text(
                                      "Current user ID not found. Please log in again.",
                                    ),
                                  ),
                                );
                              }
                            }
                          },
                        );
                      },
                    ),
              Error(:final failure) => Center(
                child: Text('Error: ${failure.message}'),
              ),
            };
          },
        ),
      ),
    );
  }

  String _formatLastMessage(dynamic lastMessage) {
    if (lastMessage is String) {
      if ((lastMessage.contains('/') || lastMessage.contains('.')) &&
          !lastMessage.toLowerCase().startsWith('http')) {
        final lcLastMessage = lastMessage.toLowerCase();
        if (lcLastMessage.endsWith('.jpg') ||
            lcLastMessage.endsWith('.jpeg') ||
            lcLastMessage.endsWith('.png') ||
            lcLastMessage.endsWith('.gif') ||
            lcLastMessage.endsWith('.webp') ||
            lcLastMessage.contains('image_picker')) {
          return '[Image]';
        }
      }
      return lastMessage;
    } else if (lastMessage != null && lastMessage is Map<String, dynamic>) {
      return lastMessage['content'] as String? ?? '[Message]';
    } else if (lastMessage == null) {
      return '';
    }
    return '[Unsupported message format]';
  }

  String _formatConversationTimestamp(DateTime timestamp) {
    return DateFormat('yyyy-MM-dd HH:mm').format(timestamp);
  }
}
