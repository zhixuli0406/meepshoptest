import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:meepshoptest/features/chat/data/models/sender_model.dart';
import 'package:meepshoptest/features/message/domain/entities/message_entity.dart';
import 'package:meepshoptest/features/message/domain/entities/message_sender_entity.dart';
import 'package:meepshoptest/features/chat/domain/entities/reaction_type.dart';
import 'package:meepshoptest/features/chat/domain/entities/reactions_entity.dart';

part 'message_model.freezed.dart';
part 'message_model.g.dart';

@freezed
class MessageModel with _$MessageModel {
  const factory MessageModel({
    @JsonKey(name: '_id') String? id,
    required String conversationId,
    @JsonKey(name: 'senderId') SenderModel? sender,
    required String type,
    required String content,
    Map<String, int>? reactions,
    @JsonKey(name: 'createdAt') required DateTime createdAt,
    @JsonKey(name: 'updatedAt') DateTime? updatedAt,
    int? legacyConvId,
    int? legacySenderId,
  }) = _MessageModel;

  factory MessageModel.fromJson(Map<String, dynamic> json) =>
      _$MessageModelFromJson(json);
}

List<ReactionDetailEntity> _convertApiReactionsToEntity(
  Map<String, int>? apiReactions,
) {
  if (apiReactions == null) {
    return [];
  }
  return apiReactions.entries.map((entry) {
    ReactionType type;
    try {
      type = ReactionType.values.firstWhere(
        (e) => e.name.toLowerCase() == entry.key.toLowerCase(),
      );
    } catch (_) {
      type = ReactionType.unknown;
    }
    return ReactionDetailEntity(type: type, count: entry.value);
  }).toList();
}

extension MessageModelX on MessageModel {
  MessageEntity toEntity() {
    MessageType domainType;
    switch (type.toLowerCase()) {
      case 'text':
        domainType = MessageType.text;
        break;
      case 'image':
        domainType = MessageType.image;
        break;
      case 'system':
        domainType = MessageType.system;
        break;
      default:
        domainType = MessageType.unknown;
    }

    MessageSenderEntity senderEntity;
    if (sender != null) {
      senderEntity = MessageSenderEntity(
        userId: sender!.userId ?? 'system',
        username: sender!.user ?? 'System',
        avatarUrl: sender!.avatar,
      );
    } else {
      senderEntity = const MessageSenderEntity(
        userId: 'system',
        username: 'System',
        avatarUrl: null,
      );
    }

    return MessageEntity(
      id: id ?? '',
      conversationId: conversationId,
      sender: senderEntity,
      type: domainType,
      content: content,
      imageUrl: null,
      s3Key: null,
      timestamp: createdAt,
      reactions: _convertApiReactionsToEntity(reactions),
    );
  }
}
