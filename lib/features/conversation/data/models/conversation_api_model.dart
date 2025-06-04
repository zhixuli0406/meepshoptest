import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:meepshoptest/features/conversation/data/models/conversation_participant_api_model.dart';
// import 'package:meepshoptest/features/message/data/models/message_api_model.dart'; // Keep for X.toEntity if needed
import 'package:meepshoptest/features/conversation/domain/entities/conversation_entity.dart';
import 'package:meepshoptest/features/chat/data/models/message_api_model.dart'; // Import for MessageApiModel.fromJson

part 'conversation_api_model.freezed.dart';
part 'conversation_api_model.g.dart';

// Custom fromJson for lastMessage
MessageApiModel? _lastMessageFromJson(dynamic jsonValue) {
  if (jsonValue is Map<String, dynamic>) {
    try {
      return MessageApiModel.fromJson(jsonValue);
    } catch (e) {
      print('Error parsing lastMessage map in _lastMessageFromJson: $e');
      return null;
    }
  }
  if (jsonValue is String) {
    // If it's a string, we treat it as if there's no valid MessageApiModel object.
    // The string content itself might be logged or handled elsewhere if needed.
    print('lastMessage field was a string: $jsonValue');
  }
  return null;
}

// Custom toJson for lastMessage (optional, depends on API send requirements)
// For now, just default to MessageApiModel's toJson or null.
dynamic _lastMessageToJson(MessageApiModel? message) {
  return message?.toJson();
}

@freezed
class ConversationApiModel with _$ConversationApiModel {
  @JsonSerializable(fieldRename: FieldRename.snake, explicitToJson: true)
  const factory ConversationApiModel({
    @JsonKey(name: '_id') required String id,
    required List<ConversationParticipantApiModel> participants,
    @JsonKey(fromJson: _lastMessageFromJson, toJson: _lastMessageToJson)
    MessageApiModel? lastMessage,
    DateTime? createdAt,
    DateTime? updatedAt,
  }) = _ConversationApiModel;

  factory ConversationApiModel.fromJson(Map<String, dynamic> json) =>
      _$ConversationApiModelFromJson(json);
}

extension ConversationApiModelX on ConversationApiModel {
  ConversationEntity toEntity() {
    return ConversationEntity(
      id: id,
      participants: participants.map((p) => p.toEntity()).toList(),
      lastMessage:
          lastMessage
              ?.toEntity(), // This should now work as lastMessage is MessageApiModel?
      createdAt: createdAt,
      updatedAt: updatedAt,
    );
  }
}
