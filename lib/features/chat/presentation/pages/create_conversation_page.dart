import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';
import 'package:meepshoptest/core/router/router.dart'; // For pop navigation
import 'package:meepshoptest/features/auth/presentation/blocs/auth_bloc.dart'; // Added to get currentUserId
import 'package:meepshoptest/features/auth/presentation/blocs/auth_state.dart'
    as auth_state;
import 'package:meepshoptest/features/chat/domain/entities/conversation_entity.dart';
import 'package:meepshoptest/features/chat/presentation/blocs/create_conversation/create_conversation_bloc.dart'
    as create_conversation_bloc;
import 'package:meepshoptest/features/user_selection/presentation/blocs/user_list_bloc.dart'
    as user_list_bloc;
import 'package:meepshoptest/injectable.dart'; // For getIt
import 'package:meepshoptest/features/conversation/presentation/blocs/conversation_list_bloc.dart';

@RoutePage()
class CreateConversationPage extends StatelessWidget {
  final String currentUserId;

  const CreateConversationPage({super.key, required this.currentUserId});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create:
              (context) =>
                  getIt<create_conversation_bloc.CreateConversationBloc>(),
        ),
        BlocProvider(
          create: (context) {
            final bloc = getIt<user_list_bloc.UserListBloc>();
            bloc.add(
              user_list_bloc.UserListEvent.loadUsersRequested(
                currentUserId: currentUserId,
              ),
            );
            return bloc;
          },
        ),
      ],
      child: _CreateConversationView(currentUserId: currentUserId),
    );
  }
}

class _CreateConversationView extends StatefulWidget {
  final String currentUserId;
  const _CreateConversationView({required this.currentUserId});

  @override
  State<_CreateConversationView> createState() =>
      _CreateConversationViewState();
}

class _CreateConversationViewState extends State<_CreateConversationView> {
  final _formKey = GlobalKey<FormState>();
  final _nameController = TextEditingController();

  @override
  void initState() {
    super.initState();
    context.read<user_list_bloc.UserListBloc>().add(
      user_list_bloc.UserListEvent.loadUsersRequested(
        currentUserId: widget.currentUserId,
      ),
    );
  }

  @override
  void dispose() {
    _nameController.dispose();
    super.dispose();
  }

  void _onCreateButtonPressed(BuildContext blocContext) {
    if (_formKey.currentState!.validate()) {
      final conversationName = _nameController.text;

      List<String> participantIds = [];
      final user_list_bloc.UserListState userListState =
          blocContext.read<user_list_bloc.UserListBloc>().state;

      switch (userListState) {
        case user_list_bloc.Loaded(selectedUserIds: final ids):
          participantIds = ids.toList();
          break;
        case user_list_bloc.Initial():
        case user_list_bloc.Loading():
        case user_list_bloc.Error():
          print(
            'UserListState is not Loaded or in error, cannot get participants: $userListState',
          );
          // Optionally, show a message to the user if participants couldn't be loaded
          break;
      }

      // Note: currentUserId is already added to allMemberIds inside CreateConversationBloc
      blocContext.read<create_conversation_bloc.CreateConversationBloc>().add(
        create_conversation_bloc.CreateConversationEvent.createRequested(
          name: conversationName,
          memberIds:
              participantIds, // Only selected members, creator added in BLoC
          currentUserId: widget.currentUserId, // Pass creator's ID
        ),
      );
    }
  }

  @override
  Widget build(BuildContext buildContext) {
    return BlocListener<
      create_conversation_bloc.CreateConversationBloc,
      create_conversation_bloc.CreateConversationState
    >(
      listener: (context, state) {
        final currentState =
            state; // Use a local variable for exhaustive switch
        switch (currentState) {
          case create_conversation_bloc.Loading():
            // Optionally show loading indicator
            break;
          case create_conversation_bloc.Success(
            conversation: final conversation,
          ):
            ScaffoldMessenger.of(context).showSnackBar(
              SnackBar(content: Text('聊天室 "${conversation.name}" 已成功建立')),
            );
            // Trigger refresh of the conversation list
            // Ensure ConversationListBloc is accessible, it should be if provided globally or above.
            // If using getIt for ConversationListBloc and it's a singleton:
            getIt<ConversationListBloc>().add(
              const ConversationListEvent.loadConversations(),
            );

            // Pop until ConversationListRoute
            if (context.mounted) {
              context.router.popUntil(
                (route) => route.settings.name == ConversationListRoute.name,
              );
            }
            break;
          case create_conversation_bloc.Error(failure: final failure):
            ScaffoldMessenger.of(context).showSnackBar(
              SnackBar(
                content: Text(
                  'Failed to create conversation: ${failure.message ?? 'Unknown error'}', // Added null check for message
                ),
                backgroundColor: Theme.of(context).colorScheme.error,
              ),
            );
          case create_conversation_bloc.Initial():
            break;
        }
      },
      child: Scaffold(
        appBar: AppBar(title: const Text('Create New Chat')),
        body: Padding(
          padding: EdgeInsets.all(16.w),
          child: Form(
            key: _formKey,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                TextFormField(
                  controller: _nameController,
                  decoration: const InputDecoration(
                    labelText: 'Chat Name',
                    hintText: 'Enter a name for your chat',
                    border: OutlineInputBorder(),
                  ),
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Please enter a chat name';
                    }
                    return null;
                  },
                ),
                const Gap(16),
                Text(
                  'Select Other Participants:', // Changed title
                  style: Theme.of(buildContext).textTheme.titleMedium,
                ),
                const Gap(8),
                Expanded(
                  child: BlocBuilder<
                    user_list_bloc.UserListBloc,
                    user_list_bloc.UserListState
                  >(
                    builder: (context, userListState) {
                      // Handle the case where UserListBloc might not have been initialized
                      // if currentUserId was null during its creation.
                      if (widget.currentUserId == null &&
                          !(userListState is user_list_bloc.Initial &&
                              userListState is user_list_bloc.Loading)) {
                        // This is a defensive check. If currentUserId was null,
                        // UserListEvent.loadUsersRequested might not have been dispatched.
                        return const Center(
                          child: Text(
                            "Cannot load users: Missing user context.",
                          ),
                        );
                      }

                      return switch (userListState) {
                        user_list_bloc.Initial() || user_list_bloc.Loading() =>
                          const Center(child: CircularProgressIndicator()),
                        user_list_bloc.Loaded(
                          users: final users,
                          selectedUserIds: final selectedUserIds,
                        ) =>
                          users.isEmpty
                              ? const Center(
                                child: Text(
                                  'No other users available to chat with.',
                                ),
                              ) // Updated message
                              : ListView.builder(
                                itemCount: users.length,
                                itemBuilder: (context, index) {
                                  final user = users[index];
                                  return CheckboxListTile(
                                    title: Text(
                                      user.username ?? 'Unknown User',
                                    ),
                                    subtitle: Text(user.id),
                                    value: selectedUserIds.contains(user.id),
                                    onChanged: (bool? selected) {
                                      context
                                          .read<user_list_bloc.UserListBloc>()
                                          .add(
                                            user_list_bloc
                                                .UserListEvent.toggleUserSelection(
                                              userId: user.id,
                                            ),
                                          );
                                    },
                                  );
                                },
                              ),
                        user_list_bloc.Error(failure: final failure) => Center(
                          child: Text(
                            'Error loading users: ${failure.message}',
                          ),
                        ),
                      };
                    },
                  ),
                ),
                const Gap(16),
                BlocBuilder<
                  create_conversation_bloc.CreateConversationBloc,
                  create_conversation_bloc.CreateConversationState
                >(
                  builder: (
                    context,
                    create_conversation_bloc.CreateConversationState
                    createConversationState,
                  ) {
                    return switch (createConversationState) {
                      create_conversation_bloc.Loading() => const Center(
                        child: CircularProgressIndicator(),
                      ),
                      _ => ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          minimumSize: Size(double.infinity, 50.h),
                        ),
                        onPressed: () => _onCreateButtonPressed(buildContext),
                        child: const Text('Create Chat'),
                      ),
                    };
                  },
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  void _popAndPushToChat(
    BuildContext context,
    ConversationEntity conversation,
  ) {
    String title = conversation.name;
    if (title.isEmpty) {
      if (conversation.participants.isNotEmpty) {
        title = conversation.participants
            .where((p) => p.userId != widget.currentUserId)
            .map((p) => p.user ?? 'Participant')
            .join(', ');
        if (title.isEmpty) {
          // If still empty (e.g. only current user is participant)
          title = conversation.participants
              .map((p) => p.user ?? 'Participant')
              .join(', ');
        }
      }
    }
    if (title.isEmpty) title = "New Chat"; // Fallback

    context.router.popUntil((route) {
      return route.settings.name == ConversationListRoute.name || route.isFirst;
    });
    context.pushRoute(
      ChatMessageRoute(
        conversation: conversation,
        conversationTitle: title,
        currentUserId: widget.currentUserId!,
      ),
    );
  }
}
