import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:meepshoptest/features/chat/domain/entities/message_entity.dart';
import 'package:meepshoptest/features/chat/domain/entities/reaction_type.dart';

part 'chat_message_event.freezed.dart';

@freezed
sealed class ChatMessageEvent with _$ChatMessageEvent {
  const factory ChatMessageEvent.loadMessages({
    required String conversationId,
  }) = LoadMessages;
  const factory ChatMessageEvent.sendMessage({
    required String conversationId,
    required String messageText,
    required int currentUserId,
  }) = SendMessage;
  const factory ChatMessageEvent.addReaction({
    required String conversationId,
    required String messageId,
    required ReactionType reactionType,
    required int currentUserId,
  }) = AddReaction;
  const factory ChatMessageEvent.sendImageMessage({
    required String conversationId,
    required String imagePath,
    required int currentUserId,
  }) = SendImageMessage;
  const factory ChatMessageEvent.mockMessageAdded({
    required MessageEntity newMessage,
  }) = MockMessageAdded;
}
