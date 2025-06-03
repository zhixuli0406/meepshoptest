import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:meepshoptest/features/chat/data/models/message_sender_api_model.dart';
import 'package:meepshoptest/features/chat/domain/entities/message_entity.dart';
import 'package:meepshoptest/features/chat/domain/entities/message_sender_entity.dart';
import 'package:meepshoptest/features/chat/domain/entities/message_type.dart'; // Domain enum
import 'package:meepshoptest/features/chat/domain/entities/reaction_type.dart';
import 'package:meepshoptest/features/chat/domain/entities/reactions_entity.dart';

part 'message_api_model.freezed.dart';
part 'message_api_model.g.dart';

@freezed
class MessageApiModel with _$MessageApiModel {
  @JsonSerializable(fieldRename: FieldRename.snake)
  const factory MessageApiModel({
    @JsonKey(name: '_id') required String id,
    String? conversationId,
    @JsonKey(name: 'senderId') MessageSenderApiModel? sender,
    @JsonKey(name: 'createdAt') String? createdAt,
    String? type, // API still sends type as string e.g. "text", "image"
    String? content,
    Map<String, int>? reactions,
    List<String>? readBy,
    int? legacyConvId,
    int? legacySenderId,
    @JsonKey(name: '__v') int? v,
    String? updatedAt,
  }) = _MessageApiModel;

  factory MessageApiModel.fromJson(Map<String, dynamic> json) =>
      _$MessageApiModelFromJson(json);
}

extension MessageApiModelX on MessageApiModel {
  MessageEntity toEntity() {
    print(
      '[MessageApiModel] Original type from API: "$type"',
    ); // Log original type from API
    MessageType domainMessageType;
    switch (type?.toLowerCase()) {
      case 'text':
        domainMessageType = MessageType.text;
        break;
      case 'image':
        domainMessageType = MessageType.image;
        break;
      case 'system':
        domainMessageType = MessageType.system;
        break;
      // Add other types if API supports them and MessageType enum has them
      // case 'video': domainMessageType = MessageType.video; break;
      // case 'audio': domainMessageType = MessageType.audio; break;
      // case 'file': domainMessageType = MessageType.file; break;
      default:
        print(
          '[MessageApiModel] Unknown type "$type" mapped to MessageType.unknown', // Log unknown types from API
        );
        domainMessageType = MessageType.unknown;
    }
    print(
      '[MessageApiModel] Mapped to domainMessageType: $domainMessageType', // Log mapped type from API
    );

    List<ReactionDetailEntity> reactionEntities = [];
    if (reactions != null) {
      reactions!.forEach((key, value) {
        reactionEntities.add(
          ReactionDetailEntity(
            type: ReactionTypeUtils.fromString(key),
            count: value,
          ),
        );
      });
    }

    DateTime parsedTimestamp;
    if (createdAt != null) {
      try {
        parsedTimestamp = DateTime.parse(createdAt!).toLocal();
      } catch (e) {
        print('Error parsing createdAt date: $createdAt, error: $e');
        parsedTimestamp = DateTime.fromMillisecondsSinceEpoch(0);
      }
    } else {
      parsedTimestamp = DateTime.fromMillisecondsSinceEpoch(0);
    }

    // If the message type is image, content might be the URL.
    // If other types like video/file are introduced, their specific URL fields
    // from API would need to be mapped here, or content field conventions defined.
    String displayContent = content ?? '';
    // Example: if (domainMessageType == MessageType.image && apiModel.imageUrlField != null) displayContent = apiModel.imageUrlField!;

    return MessageEntity(
      id: id, // This should now be correctly typed as String after build_runner
      conversationId: conversationId ?? 'unknown_conversation_id',
      sender:
          sender?.toEntity() ??
          const MessageSenderEntity(
            userId: 'unknown_user_id',
            username: 'Unknown Sender',
          ),
      timestamp: parsedTimestamp,
      type: domainMessageType,
      content: displayContent,
      reactions: reactionEntities,
      // s3Key and imageUrl are part of MessageEntity, but MessageApiModel doesn't have direct fields for them yet.
      // If API provides them, they should be added to MessageApiModel and mapped here.
      // For now, they will be null/default in MessageEntity unless content itself is the URL for an image.
    );
  }
}
