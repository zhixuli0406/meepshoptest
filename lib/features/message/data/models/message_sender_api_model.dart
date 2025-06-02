import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:meepshoptest/features/message/domain/entities/message_sender_entity.dart';

part 'message_sender_api_model.freezed.dart';
part 'message_sender_api_model.g.dart';

@freezed
class MessageSenderApiModel with _$MessageSenderApiModel {
  @JsonSerializable(fieldRename: FieldRename.snake)
  const factory MessageSenderApiModel({
    required String userId,
    String? user, // In swagger this is 'user', assuming it's username
    String? avatar,
  }) = _MessageSenderApiModel;

  factory MessageSenderApiModel.fromJson(Map<String, dynamic> json) =>
      _$MessageSenderApiModelFromJson(json);
}

extension MessageSenderApiModelX on MessageSenderApiModel {
  MessageSenderEntity toEntity() {
    return MessageSenderEntity(
      userId: userId,
      username: user,
      avatarUrl: avatar,
    );
  }
}
