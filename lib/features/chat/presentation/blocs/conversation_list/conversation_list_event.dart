part of 'conversation_list_bloc.dart';

@freezed
sealed class ConversationListEvent with _$ConversationListEvent {
  const factory ConversationListEvent.loadConversations() = LoadConversations;
}
