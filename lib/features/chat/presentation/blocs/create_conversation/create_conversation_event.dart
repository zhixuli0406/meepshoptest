part of 'create_conversation_bloc.dart';

@freezed
sealed class CreateConversationEvent with _$CreateConversationEvent {
  const factory CreateConversationEvent.createRequested({
    required String name,
    required List<String> memberIds,
    required String currentUserId,
  }) = _CreateConversationRequested;
}
