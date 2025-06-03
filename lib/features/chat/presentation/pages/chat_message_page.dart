import 'dart:io';

import 'package:auto_route/auto_route.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';
import 'package:image_picker/image_picker.dart';
import 'package:intl/intl.dart';
import 'package:meepshoptest/features/chat/domain/entities/conversation_entity.dart';
import 'package:meepshoptest/features/chat/domain/entities/message_entity.dart';
import 'package:meepshoptest/features/chat/domain/entities/reaction_type.dart';
import 'package:meepshoptest/features/chat/domain/entities/reactions_entity.dart';
import 'package:meepshoptest/features/chat/presentation/blocs/chat_message/chat_message_bloc.dart';
import 'package:meepshoptest/injectable.dart';
import 'package:meepshoptest/core/router/router.dart';
import 'package:meepshoptest/features/chat/domain/entities/message_type.dart';

@RoutePage()
class ChatMessagePage extends StatefulWidget {
  final ConversationEntity conversation;
  final String conversationTitle;
  final String currentUserId;

  const ChatMessagePage({
    super.key,
    required this.conversation,
    required this.conversationTitle,
    required this.currentUserId,
  });

  @override
  State<ChatMessagePage> createState() => _ChatMessagePageState();
}

class _ChatMessagePageState extends State<ChatMessagePage> {
  final TextEditingController _messageController = TextEditingController();
  final FocusNode _messageFocusNode = FocusNode();
  final ScrollController _scrollController = ScrollController();
  final ImagePicker _picker = ImagePicker();
  OverlayEntry? _reactionOverlayEntry;

  @override
  void initState() {
    super.initState();

    print('[ChatMessagePage] initState called.');
    print('[ChatMessagePage] Received Conversation Details:');
    print('[ChatMessagePage]   ID: ${widget.conversation.id}');
    print('[ChatMessagePage]   Name: "${widget.conversation.name}"');
    print(
      '[ChatMessagePage]   LastMessage: "${widget.conversation.lastMessage}"',
    );
    print('[ChatMessagePage]   Timestamp: ${widget.conversation.timestamp}');
    print(
      '[ChatMessagePage]   Participants (${widget.conversation.participants.length}):',
    );
    for (var p in widget.conversation.participants) {
      print(
        '[ChatMessagePage]     - UserID: ${p.userId}, Name: "${p.user}", Avatar: "${p.avatar}"',
      );
    }
    print('[ChatMessagePage] Received currentUserId: ${widget.currentUserId}');
    print(
      '[ChatMessagePage] Received conversationTitle: "${widget.conversationTitle}"',
    );
  }

  @override
  void dispose() {
    _messageController.dispose();
    _messageFocusNode.dispose();
    _scrollController.dispose();
    _reactionOverlayEntry?.remove();
    super.dispose();
  }

  void _removeReactionOverlay() {
    _reactionOverlayEntry?.remove();
    _reactionOverlayEntry = null;
  }

  Widget _buildReactionOverlayWidget(
    ChatMessageBloc bloc,
    ReactionType reactionType,
    String? messageId,
  ) {
    return GestureDetector(
      onTap: () {
        if (messageId == null) return;
        bloc.add(
          ChatMessageEvent.addReaction(
            conversationId: widget.conversation.id,
            messageId: messageId,
            reactionType: reactionType,
            currentUserId: widget.currentUserId,
          ),
        );
        _removeReactionOverlay();
      },
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 6.0),
        child: Text(
          reactionType.emoji,
          style: TextStyle(fontSize: ScreenUtil().setSp(24)),
        ),
      ),
    );
  }

  Widget _buildFullReactionPickerOverlayWidget(
    BuildContext anchorBubbleContext,
    MessageEntity message,
    ChatMessageBloc bloc,
  ) {
    final availableReactions =
        ReactionType.values
            .where((type) => type != ReactionType.unknown)
            .toList();
    final theme = Theme.of(anchorBubbleContext);

    return Material(
      elevation: 4.0,
      borderRadius: BorderRadius.circular(20.0),
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 12.0, vertical: 8.0),
        decoration: BoxDecoration(
          color: theme.cardColor,
          borderRadius: BorderRadius.circular(20.0),
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.1),
              blurRadius: 5,
              offset: const Offset(0, 2),
            ),
          ],
        ),
        child: Row(
          mainAxisSize: MainAxisSize.min,
          children:
              availableReactions.map((reaction) {
                return _buildReactionOverlayWidget(bloc, reaction, message.id);
              }).toList(),
        ),
      ),
    );
  }

  void _showReactionPicker(
    BuildContext anchorBubbleContext,
    MessageEntity message,
  ) {
    _removeReactionOverlay();

    final ChatMessageBloc chatBloc =
        anchorBubbleContext.read<ChatMessageBloc>();

    final RenderBox renderBox =
        anchorBubbleContext.findRenderObject() as RenderBox;
    final Size bubbleSize = renderBox.size;
    final Offset bubbleOffset = renderBox.localToGlobal(Offset.zero);
    final MediaQueryData mediaQuery = MediaQuery.of(anchorBubbleContext);
    final double screenWidth = mediaQuery.size.width;
    final double screenPaddingTop = mediaQuery.padding.top;

    final Widget reactionPickerWidget = _buildFullReactionPickerOverlayWidget(
      anchorBubbleContext,
      message,
      chatBloc,
    );

    final double estimatedEmojiWidth = ScreenUtil().setSp(24) + 12.0;
    final double estimatedPickerWidth =
        ReactionType.values.length * estimatedEmojiWidth + 24.0;

    const double estimatedPickerHeight = 50.0;
    const double spacingFromBubble = 8.0;

    double topPosition =
        bubbleOffset.dy - estimatedPickerHeight - spacingFromBubble;
    if (topPosition < screenPaddingTop + spacingFromBubble) {
      topPosition = bubbleOffset.dy + bubbleSize.height + spacingFromBubble;
      if (topPosition + estimatedPickerHeight >
          mediaQuery.size.height - mediaQuery.padding.bottom) {
        topPosition = screenPaddingTop + spacingFromBubble;
      }
    }

    double leftPosition =
        bubbleOffset.dx + (bubbleSize.width / 2) - (estimatedPickerWidth / 2);

    if (leftPosition < mediaQuery.padding.left + 8.0) {
      leftPosition = mediaQuery.padding.left + 8.0;
    } else if (leftPosition + estimatedPickerWidth >
        screenWidth - mediaQuery.padding.right - 8.0) {
      leftPosition =
          screenWidth - estimatedPickerWidth - mediaQuery.padding.right - 8.0;
    }

    _reactionOverlayEntry = OverlayEntry(
      builder: (overlayContext) {
        return Positioned(
          left: leftPosition,
          top: topPosition,
          child: reactionPickerWidget,
        );
      },
    );

    Overlay.of(
      anchorBubbleContext,
      debugRequiredFor: widget,
    ).insert(_reactionOverlayEntry!);
  }

  void _scrollToBottom() {
    if (_scrollController.hasClients) {
      _scrollController.animateTo(
        _scrollController.position.maxScrollExtent,
        duration: const Duration(milliseconds: 300),
        curve: Curves.easeOut,
      );
    }
  }

  Widget _buildMessagesListView(
    BuildContext context,
    List<MessageEntity> messages,
    Map<String, Set<ReactionType>> userSessionReactions,
  ) {
    if (messages.isEmpty) {
      return const Center(child: Text('No messages yet.'));
    }
    return ListView.builder(
      key: const PageStorageKey('chat_message_list'),
      controller: _scrollController,
      padding: const EdgeInsets.all(8.0),
      itemCount: messages.length,
      itemBuilder: (itemBuilderContext, index) {
        final message = messages[index];
        final bool isCurrentUser =
            message.sender.userId == widget.currentUserId;

        if (message.type == MessageType.system) {
          return Padding(
            padding: const EdgeInsets.symmetric(vertical: 8.0),
            child: Center(
              child: Text(
                message.content,
                style: TextStyle(
                  fontStyle: FontStyle.italic,
                  color: Theme.of(
                    itemBuilderContext,
                  ).colorScheme.onSurface.withOpacity(0.6),
                ),
              ),
            ),
          );
        }
        return _buildMessageBubble(
          itemBuilderContext,
          message,
          isCurrentUser,
          userSessionReactions,
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) {
        final bloc = getIt<ChatMessageBloc>();
        bloc.add(
          ChatMessageEvent.initializeChat(
            conversation: widget.conversation,
            currentUserId: widget.currentUserId,
          ),
        );
        print(
          '[ChatMessagePage] BlocProvider created. Dispatched InitializeChat event.',
        );
        print(
          '[ChatMessagePage] ChatMessageBloc state (after create and event add): ${bloc.state}',
        );
        return bloc;
      },
      child: GestureDetector(
        onTap: () {
          FocusScope.of(context).unfocus();
          _removeReactionOverlay();
        },
        child: Scaffold(
          appBar: AppBar(
            title: Text(widget.conversationTitle),
            leading: const AutoLeadingButton(),
          ),
          body: Column(
            children: [
              Expanded(
                child: BlocConsumer<ChatMessageBloc, ChatMessageState>(
                  listener: (consumerContext, state) {
                    if (state is MessageSent ||
                        state is MessageReactionUpdated) {
                      WidgetsBinding.instance.addPostFrameCallback(
                        (_) => _scrollToBottom(),
                      );
                    }
                    if (state is Error) {
                      ScaffoldMessenger.of(consumerContext).showSnackBar(
                        SnackBar(
                          content: Text('Error: ${state.failure.message}'),
                        ),
                      );
                    }
                  },
                  buildWhen: (previous, current) {
                    if (previous.runtimeType != current.runtimeType) {
                      return true;
                    }

                    Object? prevVersion;
                    Object? currVersion;
                    List<MessageEntity>? prevMessages;
                    List<MessageEntity>? currMessages;

                    if (previous is Loaded) {
                      prevVersion = previous.version;
                      prevMessages = previous.messages;
                    } else if (previous is MessageSending) {
                      prevVersion = previous.version;
                      prevMessages = previous.messages;
                    } else if (previous is MessageSent) {
                      prevVersion = previous.version;
                      prevMessages = previous.messages;
                    } else if (previous is MessageReactionUpdating) {
                      prevVersion = previous.version;
                      prevMessages = previous.messages;
                    } else if (previous is MessageReactionUpdated) {
                      prevVersion = previous.version;
                      prevMessages = previous.messages;
                    }

                    if (current is Loaded) {
                      currVersion = current.version;
                      currMessages = current.messages;
                    } else if (current is MessageSending) {
                      currVersion = current.version;
                      currMessages = current.messages;
                    } else if (current is MessageSent) {
                      currVersion = current.version;
                      currMessages = current.messages;
                    } else if (current is MessageReactionUpdating) {
                      currVersion = current.version;
                      currMessages = current.messages;
                    } else if (current is MessageReactionUpdated) {
                      currVersion = current.version;
                      currMessages = current.messages;
                    }

                    if (prevVersion != null && currVersion != null) {
                      if (prevVersion != currVersion) {
                        return true;
                      }
                      return false;
                    }

                    return true;
                  },
                  builder: (consumerBuilderContext, state) {
                    return switch (state) {
                      Initial() || Loading() => const Center(
                        child: CircularProgressIndicator(),
                      ),
                      Error(:final failure) => () {
                        // Attempt to get messages that might have been loaded before the error
                        final previousMessages = _extractMessagesFromState(
                          state,
                        );
                        if (previousMessages.isEmpty) {
                          return Center(
                            child: Text('Error: ${failure.message}'),
                          );
                        }
                        // If there was an error but we have some messages, show them
                        return _buildMessagesListView(
                          consumerBuilderContext,
                          previousMessages,
                          const {}, // Default or extract sessionReactions if relevant
                        );
                      }(),
                      Loaded(:final messages, :final userSessionReactions) ||
                      MessageSending(
                        :final messages,
                        :final userSessionReactions,
                      ) ||
                      MessageSent(
                        :final messages,
                        :final userSessionReactions,
                      ) ||
                      MessageReactionUpdating(
                        :final messages,
                        :final userSessionReactions,
                      ) ||
                      MessageReactionUpdated(
                        :final messages,
                        :final userSessionReactions,
                      ) => _buildMessagesListView(
                        consumerBuilderContext,
                        messages,
                        userSessionReactions,
                      ),
                    };
                  },
                ),
              ),
              Builder(
                builder: (BuildContext inputBarBuilderContext) {
                  return _buildMessageInputBar(inputBarBuilderContext);
                },
              ),
            ],
          ),
        ),
      ),
    );
  }

  List<MessageEntity> _extractMessagesFromState(ChatMessageState state) {
    return switch (state) {
      Loaded(:final messages) => messages,
      MessageSending(:final messages) => messages,
      MessageSent(:final messages) => messages,
      MessageReactionUpdating(:final messages) => messages,
      MessageReactionUpdated(:final messages) => messages,
      _ => [],
    };
  }

  Widget _buildMessageBubble(
    BuildContext bubbleContext,
    MessageEntity message,
    bool isCurrentUser,
    Map<String, Set<ReactionType>> userSessionReactions,
  ) {
    final theme = Theme.of(bubbleContext);
    final colorScheme = theme.colorScheme;
    final chatMessageBloc = bubbleContext.read<ChatMessageBloc>();

    final String formattedTimestamp = DateFormat(
      'yyyy-MM-dd HH:mm',
    ).format(message.timestamp);

    final TextStyle metadataStyle =
        theme.textTheme.bodySmall?.copyWith(
          color: colorScheme.onSurface.withOpacity(0.6),
        ) ??
        TextStyle(
          fontSize: 12.sp,
          color: colorScheme.onSurface.withOpacity(0.6),
        );

    final bubbleColor =
        isCurrentUser
            ? colorScheme.primaryContainer
            : colorScheme.secondaryContainer;
    final textColor =
        isCurrentUser
            ? colorScheme.onPrimaryContainer
            : colorScheme.onSecondaryContainer;

    Widget messageContentWidget;
    if (message.type == MessageType.image) {
      final imagePath = message.content;
      final bool isLocal = imagePath.startsWith('/');
      Widget imageWidget;
      if (isLocal) {
        imageWidget = Image.file(
          File(imagePath),
          fit: BoxFit.contain,
          errorBuilder: (context, error, stackTrace) {
            return const Icon(Icons.broken_image, size: 50);
          },
        );
      } else {
        imageWidget = CachedNetworkImage(
          imageUrl: imagePath,
          fit: BoxFit.contain,
          placeholder:
              (context, url) =>
                  const Center(child: CircularProgressIndicator()),
          errorWidget: (context, url, error) {
            return const Icon(Icons.broken_image, size: 50);
          },
        );
      }
      messageContentWidget = GestureDetector(
        onTap: () {
          AutoRouter.of(bubbleContext).push(
            FullScreenImageViewerRoute(
              imageUrl: imagePath,
              isFilePath: isLocal,
            ),
          );
        },
        child: ConstrainedBox(
          constraints: BoxConstraints(
            maxHeight: 200.h,
            maxWidth: MediaQuery.of(bubbleContext).size.width * 0.6,
          ),
          child: imageWidget,
        ),
      );
    } else if (message.type == MessageType.system) {
      return Padding(
        padding: const EdgeInsets.symmetric(vertical: 8.0),
        child: Center(
          child: Text(
            message.content,
            style: theme.textTheme.bodySmall?.copyWith(
              fontStyle: FontStyle.italic,
              color: Theme.of(
                bubbleContext,
              ).colorScheme.onSurface.withOpacity(0.6),
            ),
          ),
        ),
      );
    } else {
      messageContentWidget = Text(
        message.content,
        style: TextStyle(color: textColor),
      );
    }

    final Widget bubbleCoreContent = Container(
      padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
      constraints: BoxConstraints(
        maxWidth:
            MediaQuery.of(bubbleContext).size.width *
            (isCurrentUser ? 0.7 : 0.6),
      ),
      decoration: BoxDecoration(
        color: bubbleColor,
        borderRadius: BorderRadius.circular(16),
      ),
      child: messageContentWidget,
    );

    final Widget messageBubbleContainer = Builder(
      builder: (BuildContext bubbleSpecificContext) {
        return GestureDetector(
          onLongPress: () {
            if (message.id != null) {
              _showReactionPicker(bubbleSpecificContext, message);
            }
          },
          onTap: _removeReactionOverlay,
          child: Column(
            crossAxisAlignment:
                isCurrentUser
                    ? CrossAxisAlignment.center
                    : CrossAxisAlignment.start,
            mainAxisSize: MainAxisSize.min,
            children: [
              bubbleCoreContent,
              if (message.reactions?.isNotEmpty ?? false)
                _buildReactionsDisplay(
                  bubbleSpecificContext,
                  message.reactions!,
                  chatMessageBloc,
                  message,
                  userSessionReactions,
                ),
            ],
          ),
        );
      },
    );

    final Widget contentColumn;
    if (isCurrentUser) {
      contentColumn = Column(
        crossAxisAlignment: CrossAxisAlignment.end,
        mainAxisSize: MainAxisSize.min,
        children: [
          Text(formattedTimestamp, style: metadataStyle),
          Gap(4.h),
          messageBubbleContainer,
        ],
      );
    } else {
      contentColumn = Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisSize: MainAxisSize.min,
        children: [
          Text(message.sender.username ?? 'Unknown User', style: metadataStyle),
          Gap(2.h),
          Text(formattedTimestamp, style: metadataStyle),
          Gap(4.h),
          messageBubbleContainer,
        ],
      );
    }

    final String senderInitial =
        (message.sender.username?.isNotEmpty ?? false)
            ? message.sender.username![0].toUpperCase()
            : '?';

    final Widget avatarWidget = CircleAvatar(
      radius: 16.r,
      backgroundImage:
          (message.sender.avatarUrl?.isNotEmpty ?? false)
              ? CachedNetworkImageProvider(message.sender.avatarUrl!)
              : null,
      onBackgroundImageError:
          message.sender.avatarUrl?.isNotEmpty ?? false
              ? (exception, stackTrace) {}
              : null,
      backgroundColor:
          (message.sender.avatarUrl?.isEmpty ?? true)
              ? colorScheme.primary
              : Colors.transparent,
      child:
          (message.sender.avatarUrl?.isEmpty ?? true)
              ? Text(
                senderInitial,
                style: TextStyle(fontSize: 14.sp, color: colorScheme.onPrimary),
              )
              : null,
    );

    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 4.0),
      child: Column(
        crossAxisAlignment:
            isCurrentUser ? CrossAxisAlignment.end : CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment:
                isCurrentUser ? MainAxisAlignment.end : MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              if (!isCurrentUser) ...[avatarWidget, Gap(8.w)],
              Flexible(child: contentColumn),
              if (isCurrentUser) ...[Gap(8.w), avatarWidget],
            ],
          ),
        ],
      ),
    );
  }

  Widget _buildReactionsDisplay(
    BuildContext displayContext,
    List<ReactionDetailEntity> reactions,
    ChatMessageBloc bloc,
    MessageEntity message,
    Map<String, Set<ReactionType>> currentUserSessionReactions,
  ) {
    final Set<ReactionType> userReactionsForThisMessage =
        (message.id != null &&
                currentUserSessionReactions.containsKey(message.id))
            ? currentUserSessionReactions[message.id]!
            : <ReactionType>{};

    return Padding(
      padding: const EdgeInsets.only(top: 4.0, left: 8.0, right: 8.0),
      child: Wrap(
        spacing: 4.0,
        runSpacing: 2.0,
        children:
            reactions.map((reactionDetail) {
              if (reactionDetail.count <= 0) return const SizedBox.shrink();

              bool currentUserReacted = userReactionsForThisMessage.contains(
                reactionDetail.type,
              );

              return GestureDetector(
                onTap: () {
                  if (message.id != null) {
                    bloc.add(
                      ChatMessageEvent.addReaction(
                        conversationId: widget.conversation.id,
                        messageId: message.id!,
                        reactionType: reactionDetail.type,
                        currentUserId: widget.currentUserId,
                      ),
                    );
                  }
                },
                child: Container(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 6.0,
                    vertical: 2.0,
                  ),
                  decoration: BoxDecoration(
                    color:
                        currentUserReacted
                            ? Theme.of(displayContext)
                                .colorScheme
                                .primaryContainer // Fully opaque
                            : Theme.of(displayContext)
                                .colorScheme
                                .surfaceContainerHighest
                                .withOpacity(0.5),
                    borderRadius: BorderRadius.circular(10.0),
                    border: Border.all(
                      color:
                          currentUserReacted
                              ? Theme.of(displayContext).colorScheme.primary
                              : Theme.of(
                                displayContext,
                              ).colorScheme.outline.withOpacity(0.3),
                      width:
                          currentUserReacted
                              ? 1.5
                              : 1.0, // Slightly thicker border when selected
                    ),
                  ),
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Text(
                        reactionDetail.type.emoji,
                        style: TextStyle(fontSize: 12.sp),
                      ),
                      Gap(2.w),
                      Text(
                        reactionDetail.count.toString(),
                        style: TextStyle(
                          fontSize: 11.sp,
                          fontWeight:
                              currentUserReacted
                                  ? FontWeight.bold
                                  : FontWeight.normal,
                          color:
                              currentUserReacted
                                  ? Theme.of(
                                    displayContext,
                                  ).colorScheme.onPrimaryContainer
                                  : Theme.of(
                                    displayContext,
                                  ).colorScheme.onSurfaceVariant,
                          // Removed backgroundColor change for now, as it might be too much with other changes
                        ),
                      ),
                    ],
                  ),
                ),
              );
            }).toList(),
      ),
    );
  }

  Widget _buildMessageInputBar(BuildContext pageContext) {
    final theme = Theme.of(pageContext);
    return Container(
      padding: const EdgeInsets.all(8.0),
      decoration: BoxDecoration(
        color: theme.cardColor,
        boxShadow: [
          BoxShadow(
            offset: const Offset(0, -1),
            blurRadius: 1,
            color: Colors.black.withOpacity(0.1),
          ),
        ],
      ),
      child: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Row(
          children: [
            IconButton(
              icon: Icon(Icons.camera_alt, color: theme.colorScheme.primary),
              tooltip: 'Take Photo',
              onPressed: () {
                _pickImage(
                  ImageSource.camera,
                  pageContext.read<ChatMessageBloc>(),
                );
              },
            ),
            Expanded(
              child: TextField(
                controller: _messageController,
                focusNode: _messageFocusNode,
                decoration: InputDecoration(
                  hintText: 'Type a message...',
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20.0),
                    borderSide: BorderSide.none,
                  ),
                  filled: true,
                  fillColor: Theme.of(
                    pageContext,
                  ).colorScheme.surfaceVariant.withOpacity(0.5),
                  contentPadding: const EdgeInsets.symmetric(
                    horizontal: 16.0,
                    vertical: 10.0,
                  ),
                ),
                onSubmitted: (_) => _sendMessage(pageContext),
                textInputAction: TextInputAction.send,
              ),
            ),
            Gap(ScreenUtil().setWidth(8)),
            IconButton(
              icon: Icon(
                Icons.send,
                color:
                    _messageController.text.isNotEmpty
                        ? theme.colorScheme.primary
                        : theme.disabledColor,
              ),
              tooltip: 'Send Message',
              onPressed:
                  _messageController.text.isNotEmpty
                      ? () => _sendMessage(pageContext)
                      : null,
            ),
          ],
        ),
      ),
    );
  }

  Future<void> _pickImage(ImageSource source, ChatMessageBloc bloc) async {
    try {
      final XFile? pickedFile = await _picker.pickImage(source: source);
      if (pickedFile != null) {
        bloc.add(
          ChatMessageEvent.sendImageMessage(
            conversationId: widget.conversation.id,
            imagePath: pickedFile.path,
            currentUserId: widget.currentUserId,
          ),
        );
      }
    } catch (e) {
      if (mounted) {
        ScaffoldMessenger.of(
          context,
        ).showSnackBar(SnackBar(content: Text('Failed to pick image: $e')));
      }
    }
  }

  void _sendMessage(BuildContext pageContext) {
    if (_messageController.text.trim().isEmpty) return;

    final bloc = pageContext.read<ChatMessageBloc>();
    bloc.add(
      ChatMessageEvent.sendMessage(
        conversationId: widget.conversation.id,
        messageText: _messageController.text.trim(),
        currentUserId: widget.currentUserId,
      ),
    );
    _messageController.clear();
    _messageFocusNode.requestFocus();
    Future.delayed(const Duration(milliseconds: 100), _scrollToBottom);
  }
}
