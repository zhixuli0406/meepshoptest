import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:meepshoptest/features/chat/domain/entities/message_entity.dart';
import 'package:meepshoptest/core/errors/failure.dart';

part 'chat_message_state.freezed.dart';

@freezed
sealed class ChatMessageState with _$ChatMessageState {
  const factory ChatMessageState.initial() = Initial;
  const factory ChatMessageState.loading() = Loading;
  const factory ChatMessageState.loaded({
    required List<MessageEntity> messages,
  }) = Loaded;
  const factory ChatMessageState.messageSending({
    required List<MessageEntity> messages,
  }) = MessageSending;
  const factory ChatMessageState.messageSent({
    required List<MessageEntity> messages,
    required MessageEntity newMessage,
  }) = MessageSent;
  const factory ChatMessageState.error({required Failure failure}) = Error;
}
