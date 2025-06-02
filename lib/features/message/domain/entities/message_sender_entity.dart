import 'package:freezed_annotation/freezed_annotation.dart';

part 'message_sender_entity.freezed.dart';

@freezed
sealed class MessageSenderEntity with _$MessageSenderEntity {
  const factory MessageSenderEntity({
    required String userId,
    String? username,
    String? avatarUrl,
  }) = _MessageSenderEntity;
}
