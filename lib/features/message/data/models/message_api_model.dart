import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:meepshoptest/features/message/data/models/message_sender_api_model.dart';
import 'package:meepshoptest/features/message/domain/entities/message_entity.dart';
import 'package:meepshoptest/features/message/domain/entities/message_sender_entity.dart';

part 'message_api_model.freezed.dart';
part 'message_api_model.g.dart';

// Enum for MessageType based on swagger
enum MessageTypeApiModel { text, image, system }

@freezed
class MessageApiModel with _$MessageApiModel {
  @JsonSerializable(fieldRename: FieldRename.snake, explicitToJson: true)
  const factory MessageApiModel({
    // Swagger uses 'id' for message, not '_id'. Ensure consistency.
    required String id,
    required String conversationId,
    required MessageSenderApiModel sender,
    required MessageTypeApiModel type,
    required String content,
    String? s3Key,
    // Swagger shows timestamp as int64 (Unix milliseconds). Dart DateTime handles this.
    // Or can use JsonKey with a custom converter if direct parsing fails for int.
    required int timestamp,
  }) = _MessageApiModel;

  factory MessageApiModel.fromJson(Map<String, dynamic> json) =>
      _$MessageApiModelFromJson(json);
}

extension MessageApiModelX on MessageApiModel {
  MessageEntity toEntity() {
    MessageType domainType;
    switch (type) {
      case MessageTypeApiModel.text:
        domainType = MessageType.text;
        break;
      case MessageTypeApiModel.image:
        domainType = MessageType.image;
        break;
      case MessageTypeApiModel.system:
        domainType = MessageType.system;
        break;
      default:
        domainType =
            MessageType.unknown; // Should not happen if enums are aligned
    }

    return MessageEntity(
      id: id,
      conversationId: conversationId,
      sender: sender.toEntity(),
      type: domainType,
      content: content,
      imageUrl: type == MessageTypeApiModel.image ? content : null,
      s3Key: s3Key,
      timestamp: DateTime.fromMillisecondsSinceEpoch(timestamp),
    );
  }
}
