part of 'create_conversation_bloc.dart';

@freezed
sealed class CreateConversationState with _$CreateConversationState {
  const factory CreateConversationState.initial() = Initial;
  const factory CreateConversationState.loading() = Loading;
  const factory CreateConversationState.success(
    ConversationEntity conversation,
  ) = Success;
  const factory CreateConversationState.error(Failure failure) = Error;
}
