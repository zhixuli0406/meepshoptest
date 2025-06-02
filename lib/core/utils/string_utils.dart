import 'package:intl/intl.dart';
import 'package:meepshoptest/features/conversation/domain/entities/conversation_participant_entity.dart';

class StringUtils {
  StringUtils._(); // Private constructor to prevent instantiation

  static String generateConversationTitle(
    List<ConversationParticipantEntity> participants,
    String? currentUserId,
  ) {
    if (participants.isEmpty) {
      return 'Unknown Conversation';
    }

    final otherParticipants =
        participants.where((p) => p.userId != currentUserId).toList();

    if (otherParticipants.isEmpty) {
      // This means it's a conversation with oneself (e.g., saved messages)
      // or only the current user is a participant (less common for actual chats)
      if (participants.isNotEmpty &&
          participants.length == 1 &&
          participants.first.userId == currentUserId) {
        return 'Saved Messages'; // Or your preferred title for self-chats
      }
      // If for some reason currentUserId was null but there are participants, show them.
      return participants.map((p) => p.username ?? 'Unknown User').join(', ');
    }

    if (otherParticipants.length == 1) {
      return otherParticipants.first.username ?? 'Unknown User';
    }

    return otherParticipants
        .map((p) => p.username ?? 'Unknown User')
        .join(', ');
  }

  static String formatRelativeTime(DateTime dateTime) {
    final now = DateTime.now();
    final difference = now.difference(dateTime);

    if (difference.inSeconds < 5) {
      return 'just now';
    } else if (difference.inMinutes < 1) {
      return '${difference.inSeconds}s ago';
    } else if (difference.inHours < 1) {
      return '${difference.inMinutes}m ago';
    } else if (difference.inHours < 24 && now.day == dateTime.day) {
      return DateFormat.jm().format(dateTime); // e.g., 5:30 PM
    } else if (difference.inDays < 1 ||
        (difference.inDays == 1 && now.day == dateTime.day + 1)) {
      return 'Yesterday';
    } else if (difference.inDays < 7) {
      return DateFormat.E().format(dateTime); // e.g., Mon, Tue
    } else {
      return DateFormat.yMd().format(dateTime); // e.g., 12/31/2023
    }
  }
}
