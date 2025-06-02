part of 'conversation_list_bloc.dart';

@freezed
sealed class ConversationListState with _$ConversationListState {
  const factory ConversationListState.initial() = Initial;
  const factory ConversationListState.loading() = Loading;
  const factory ConversationListState.loaded({
    required List<ConversationEntity> conversations,
  }) = Loaded;
  const factory ConversationListState.error({required Failure failure}) = Error;
}
