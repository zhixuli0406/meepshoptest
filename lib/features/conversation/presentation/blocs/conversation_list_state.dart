import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:meepshoptest/core/errors/failure.dart';
import 'package:meepshoptest/features/conversation/domain/entities/conversation_entity.dart';

part 'conversation_list_state.freezed.dart';

@freezed
sealed class ConversationListState with _$ConversationListState {
  const factory ConversationListState.initial() = ConversationListInitial;
  const factory ConversationListState.loading() = ConversationListLoading;
  const factory ConversationListState.loaded({
    required List<ConversationEntity> conversations,
  }) = ConversationListLoaded;
  const factory ConversationListState.error({required Failure failure}) =
      ConversationListError;
}
