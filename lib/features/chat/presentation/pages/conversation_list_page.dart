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
import 'package:meepshoptest/features/chat/domain/entities/participant_entity.dart';
import 'package:meepshoptest/features/chat/presentation/blocs/conversation_list/conversation_list_bloc.dart';
import 'package:meepshoptest/injectable.dart';
import 'package:meepshoptest/main.dart'; // Import for routeObserver

@RoutePage()
class ConversationListPage extends StatefulWidget {
  const ConversationListPage({super.key});

  @override
  State<ConversationListPage> createState() => _ConversationListPageState();
}

class _ConversationListPageState extends State<ConversationListPage>
    with RouteAware {
  late final ConversationListBloc
  _conversationListBloc; // Declare Bloc instance

  @override
  void initState() {
    super.initState();
    _conversationListBloc = getIt<ConversationListBloc>(); // Initialize Bloc
    _conversationListBloc.add(
      const ConversationListEvent.loadConversations(),
    ); // Initial load
  }

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    final route = ModalRoute.of(context) as PageRoute?;
    if (route != null) {
      routeObserver.subscribe(this, route);
    }
  }

  @override
  void dispose() {
    routeObserver.unsubscribe(this);
    _conversationListBloc.close(); // Close the Bloc
    super.dispose();
  }

  @override
  void didPopNext() {
    // Called when the top route has been popped off, and the current route shows up.
    print("ConversationListPage: didPopNext - refreshing conversations");
    _conversationListBloc.add(const ConversationListEvent.loadConversations());
    super.didPopNext();
  }

  @override
  Widget build(BuildContext context) {
    return BlocProvider.value(
      value: _conversationListBloc, // Provide the managed Bloc instance
      child: Scaffold(
        appBar: AppBar(
          title: const Text('Chats'),
          actions: [
            IconButton(
              icon: const Icon(Icons.add_comment_outlined),
              tooltip: 'Create Conversation',
              onPressed: () {
                // Get currentUserId from AuthBloc
                final authState = context.read<AuthBloc>().state;
                if (authState is AuthAuthenticated) {
                  final currentUserId = authState.user.id;
                  context.router.push(
                    CreateConversationRoute(currentUserId: currentUserId),
                  );
                } else {
                  // Handle case where user is not authenticated or userId is not available
                  ScaffoldMessenger.of(context).showSnackBar(
                    const SnackBar(
                      content: Text(
                        'Cannot create conversation: User not authenticated.',
                      ),
                    ),
                  );
                }
              },
            ),
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

                        // <--- 加入日誌輸出 --- Start --->
                        print('----------------------------------');
                        print('Displaying Conversation ID: ${conversation.id}');
                        print(
                          'Raw Conversation Name from Bloc: "${conversation.name}"',
                        );
                        print(
                          'Participants (${conversation.participants.length}):',
                        );
                        for (var p in conversation.participants) {
                          print('  - UserID: ${p.userId}, Name: "${p.user}"');
                        }
                        // <--- 加入日誌輸出 --- End --->

                        String displayTitle;

                        // 決定 displayTitle 的邏輯
                        if (conversation.name != null &&
                            conversation.name!.isNotEmpty &&
                            conversation.name != "Unknown Conversation") {
                          displayTitle = conversation.name!;
                        } else {
                          // 如果 conversation.name 為空、為 "Unknown Conversation"，或 null，則顯示所有參與者的名字
                          final allParticipantNames =
                              conversation.participants
                                  .map(
                                    (p) => p.user ?? '未知用戶',
                                  ) // 直接映射所有參與者的 user (名稱)
                                  .toList();

                          if (allParticipantNames.isNotEmpty) {
                            displayTitle = allParticipantNames.join(', ');
                          } else {
                            // 如果沒有參與者或參與者都沒有名字，則使用備用標題
                            displayTitle = '新聊天室';
                          }
                        }
                        print('Determined Display Title: "$displayTitle"');
                        print('----------------------------------');

                        // 為了頭像邏輯和 onTap 導航，我們仍然需要 currentUserId
                        final authState =
                            context.read<AuthBloc>().state; // Get AuthState
                        String? currentUserIdForLogic; // 使用一個新的變數名以示區分

                        if (authState is AuthAuthenticated) {
                          currentUserIdForLogic = authState.user.id;
                        }

                        // Participant avatars and names logic
                        List<String> participantAvatars =
                            conversation.participants
                                .map((p) => p.avatar ?? "")
                                .toList();

                        Widget leadingWidget;
                        if (participantAvatars.isEmpty ||
                            participantAvatars.every((av) => av.isEmpty)) {
                          leadingWidget = CircleAvatar(
                            backgroundColor:
                                Theme.of(
                                  context,
                                ).colorScheme.secondaryContainer,
                            foregroundColor:
                                Theme.of(
                                  context,
                                ).colorScheme.onSecondaryContainer,
                            child: const Icon(Icons.group_outlined),
                          );
                        } else if (participantAvatars.length == 1 ||
                            (participantAvatars.length > 1 &&
                                participantAvatars
                                        .where((av) => av.isNotEmpty)
                                        .length <=
                                    1 &&
                                currentUserIdForLogic !=
                                    null && // Use currentUserIdForLogic
                                conversation.participants.length == 2)) {
                          String avatarUrl = "";
                          String initialLetter = "?";

                          ParticipantEntity? displayParticipant;
                          if (currentUserIdForLogic !=
                                  null && // Use currentUserIdForLogic
                              conversation.participants.length == 2) {
                            displayParticipant = conversation.participants
                                .firstWhere(
                                  (p) =>
                                      p.userId !=
                                      currentUserIdForLogic, // Use currentUserIdForLogic
                                  orElse: () => conversation.participants.first,
                                );
                          } else {
                            displayParticipant = conversation.participants
                                .firstWhere(
                                  (p) => p.avatar?.isNotEmpty ?? false,
                                  orElse: () => conversation.participants.first,
                                );
                          }

                          avatarUrl = displayParticipant.avatar ?? "";
                          initialLetter =
                              (displayParticipant.user?.isNotEmpty ?? false)
                                  ? displayParticipant.user![0].toUpperCase()
                                  : "U";

                          // Log the avatarUrl before attempting to load it
                          print(
                            '[ConversationListPage] PRE-CHECK avatar. Participant: "${displayParticipant.user}", URL: "$avatarUrl", Length: ${avatarUrl.length}, CharCodes: ${avatarUrl.codeUnits}',
                          );

                          if (avatarUrl.isNotEmpty) {
                            leadingWidget = CircleAvatar(
                              backgroundColor:
                                  Theme.of(
                                    context,
                                  ).colorScheme.secondaryContainer,
                              foregroundColor:
                                  Theme.of(
                                    context,
                                  ).colorScheme.onSecondaryContainer,
                              child: ClipOval(
                                child: Image.network(
                                  avatarUrl,
                                  fit: BoxFit.cover,
                                  width: double.infinity,
                                  height: double.infinity,
                                  loadingBuilder: (
                                    BuildContext context,
                                    Widget child,
                                    ImageChunkEvent? loadingProgress,
                                  ) {
                                    if (loadingProgress == null) return child;
                                    return Center(
                                      child: CircularProgressIndicator(
                                        strokeWidth: 2.0,
                                        value:
                                            loadingProgress
                                                        .expectedTotalBytes !=
                                                    null
                                                ? loadingProgress
                                                        .cumulativeBytesLoaded /
                                                    loadingProgress
                                                        .expectedTotalBytes!
                                                : null,
                                      ),
                                    );
                                  },
                                  errorBuilder: (
                                    BuildContext context,
                                    Object exception,
                                    StackTrace? stackTrace,
                                  ) {
                                    print(
                                      '[ConversationListPage] ERROR loading avatar. Participant: "${displayParticipant?.user}", URL: "$avatarUrl", Length: ${avatarUrl.length}, CharCodes: ${avatarUrl.codeUnits}, Exception: $exception',
                                    );
                                    return Center(
                                      child: Text(
                                        initialLetter,
                                        style: TextStyle(
                                          color:
                                              Theme.of(context)
                                                  .colorScheme
                                                  .onSecondaryContainer,
                                        ),
                                      ),
                                    );
                                  },
                                ),
                              ),
                            );
                          } else {
                            leadingWidget = CircleAvatar(
                              backgroundColor:
                                  Theme.of(
                                    context,
                                  ).colorScheme.secondaryContainer,
                              foregroundColor:
                                  Theme.of(
                                    context,
                                  ).colorScheme.onSecondaryContainer,
                              child: const Icon(Icons.group_outlined),
                            );
                          }
                        } else {
                          List<ParticipantEntity> otherParticipantsForAvatar =
                              currentUserIdForLogic !=
                                      null // Use currentUserIdForLogic
                                  ? conversation.participants
                                      .where(
                                        (p) =>
                                            p.userId != currentUserIdForLogic,
                                      ) // Use currentUserIdForLogic
                                      .toList()
                                  : conversation.participants.toList();

                          if (otherParticipantsForAvatar.isEmpty) {
                            otherParticipantsForAvatar =
                                conversation.participants.toList();
                          }

                          List<String> displayAvatars =
                              otherParticipantsForAvatar
                                  .map((p) => p.avatar ?? "")
                                  .toList();
                          List<String> displayInitials =
                              otherParticipantsForAvatar
                                  .map(
                                    (p) =>
                                        (p.user?.isNotEmpty ?? false)
                                            ? p.user![0].toUpperCase()
                                            : "U",
                                  )
                                  .toList();

                          leadingWidget = SizedBox(
                            width: 56.w, // Using screenutil
                            height: 40.h, // Using screenutil
                            child: Stack(
                              children: [
                                if (displayAvatars.length > 1 &&
                                    displayInitials.length > 1)
                                  Positioned(
                                    left: 16.w,
                                    child: CircleAvatar(
                                      radius: 18.r,
                                      backgroundColor:
                                          Theme.of(
                                            context,
                                          ).colorScheme.secondaryContainer,
                                      foregroundColor:
                                          Theme.of(
                                            context,
                                          ).colorScheme.onSecondaryContainer,
                                      backgroundImage:
                                          displayAvatars[1].isNotEmpty
                                              ? NetworkImage(displayAvatars[1])
                                              : null,
                                      child:
                                          displayAvatars[1].isEmpty
                                              ? Text(
                                                displayInitials[1],
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
                                if (displayAvatars.isNotEmpty &&
                                    displayInitials.isNotEmpty)
                                  Positioned(
                                    left: 0,
                                    child: CircleAvatar(
                                      radius: 18.r,
                                      backgroundColor:
                                          Theme.of(
                                            context,
                                          ).colorScheme.secondaryContainer,
                                      foregroundColor:
                                          Theme.of(
                                            context,
                                          ).colorScheme.onSecondaryContainer,
                                      backgroundImage:
                                          displayAvatars[0].isNotEmpty
                                              ? NetworkImage(displayAvatars[0])
                                              : null,
                                      child:
                                          displayAvatars[0].isEmpty
                                              ? Text(
                                                displayInitials[0],
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

                        String lastMessageText =
                            conversation.lastMessage ?? '還沒有訊息';
                        if (lastMessageText.isEmpty &&
                            conversation.lastMessage == '') {
                          lastMessageText = '還沒有訊息';
                        }

                        String formattedTimestamp = '';
                        if (conversation.timestamp != null) {
                          final now = DateTime.now();
                          final today = DateTime(now.year, now.month, now.day);
                          final yesterday = DateTime(
                            now.year,
                            now.month,
                            now.day - 1,
                          );
                          final messageDate = DateTime(
                            conversation.timestamp!.year,
                            conversation.timestamp!.month,
                            conversation.timestamp!.day,
                          );

                          if (messageDate == today) {
                            formattedTimestamp = DateFormat.Hm().format(
                              conversation.timestamp!,
                            );
                          } else if (messageDate == yesterday) {
                            formattedTimestamp = '昨天';
                          } else {
                            if (conversation.timestamp!.year == now.year) {
                              formattedTimestamp = DateFormat(
                                'M/d',
                              ).format(conversation.timestamp!);
                            } else {
                              formattedTimestamp = DateFormat(
                                'yyyy/M/d',
                              ).format(conversation.timestamp!);
                            }
                          }
                        } else {
                          formattedTimestamp = '';
                        }

                        return ListTile(
                          leading: leadingWidget,
                          title: Text(
                            displayTitle,
                            maxLines: 1,
                            overflow: TextOverflow.ellipsis,
                          ),
                          subtitle: Text(
                            lastMessageText,
                            maxLines: 1,
                            overflow: TextOverflow.ellipsis,
                          ),
                          trailing: Text(formattedTimestamp),
                          onTap: () {
                            if (currentUserIdForLogic != null) {
                              // <--- 加入日誌輸出 --- Start --->
                              print(
                                '=========================================',
                              );
                              print(
                                'Attempting to navigate to ChatMessageRoute',
                              );
                              print(
                                '  Conversation ID from Entity: ${conversation.id}',
                              );
                              print(
                                '  Passed Conversation Title (displayTitle): "$displayTitle"',
                              );
                              print(
                                '  Passed Current User ID (currentUserIdForLogic): "$currentUserIdForLogic"',
                              );

                              // 詳細檢查 conversation 物件中可能導致問題的 String 欄位
                              print(
                                '  Conversation Entity Name (conversation.name): "${conversation.name}"',
                              );
                              print(
                                '  Conversation Entity LastMessage (conversation.lastMessage): "${conversation.lastMessage}"',
                              );
                              print(
                                '  Conversation Entity Timestamp: ${conversation.timestamp}',
                              );
                              print(
                                '  Conversation Participants (${conversation.participants.length}):',
                              );
                              for (
                                var p_idx = 0;
                                p_idx < conversation.participants.length;
                                p_idx++
                              ) {
                                final p = conversation.participants[p_idx];
                                print('    Participant [$p_idx]:');
                                print('      UserID: "${p.userId}"');
                                print('      User Name: "${p.user}"');
                                print('      Avatar: "${p.avatar}"');
                              }
                              print(
                                '=========================================',
                              );
                              // <--- 加入日誌輸出 --- End --->

                              context.router.push(
                                ChatMessageRoute(
                                  conversation: conversation,
                                  conversationTitle: displayTitle,
                                  currentUserId: currentUserIdForLogic,
                                ),
                              );
                            } else {
                              print(
                                'Navigation to ChatMessageRoute aborted: currentUserIdForLogic is null.',
                              );
                              ScaffoldMessenger.of(context).showSnackBar(
                                const SnackBar(
                                  content: Text('無法開啟聊天室：使用者資訊錯誤'),
                                ),
                              );
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

  String _formatConversationTimestamp(DateTime? timestamp) {
    if (timestamp == null) {
      return '';
    }
    return DateFormat('yyyy-MM-dd HH:mm').format(timestamp);
  }
}
