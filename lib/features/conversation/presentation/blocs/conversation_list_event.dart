part of 'conversation_list_bloc.dart';

@freezed
sealed class ConversationListEvent with _$ConversationListEvent {
  const factory ConversationListEvent.loadConversations() = LoadConversations;
  const factory ConversationListEvent.initialize({
    required String currentUserId,
  }) = InitializeConversationList;
  const factory ConversationListEvent.handleWebSocketUpdate({
    required UpdateConversationListData updateData,
  }) = HandleWebSocketUpdate;
}
