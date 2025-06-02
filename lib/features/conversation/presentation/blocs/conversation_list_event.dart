import 'package:freezed_annotation/freezed_annotation.dart';

part 'conversation_list_event.freezed.dart';

@freezed
sealed class ConversationListEvent with _$ConversationListEvent {
  const factory ConversationListEvent.loadConversations() = LoadConversations;
  // Potentially add other events later, e.g., refresh, conversationTapped
}
