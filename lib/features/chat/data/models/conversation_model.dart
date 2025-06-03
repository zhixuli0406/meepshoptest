import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:meepshoptest/features/chat/data/models/participant_model.dart';
import 'package:meepshoptest/features/chat/domain/entities/conversation_entity.dart';
// import 'package:meepshoptest/features/chat/domain/entities/participant_entity.dart'; // Not directly used in this file after change

part 'conversation_model.freezed.dart';
part 'conversation_model.g.dart';

// Helper function for handling potential null timestamps before conversion
DateTime? _dateTimeFromNullableTimestamp(dynamic timestamp) {
  if (timestamp == null) return null;
  if (timestamp is String) return DateTime.tryParse(timestamp);
  if (timestamp is int) return DateTime.fromMillisecondsSinceEpoch(timestamp);
  return null; // Or throw an error if the type is unexpected
}

// Helper for converting DateTime to a format suitable for JSON (e.g., ISO string)
String? _dateTimeToNullableIso8601String(DateTime? dateTime) {
  return dateTime?.toIso8601String();
}

@freezed
class ConversationModel with _$ConversationModel {
  const ConversationModel._(); // Private constructor for implementing methods

  const factory ConversationModel({
    @JsonKey(name: '_id') required String id,
    @JsonKey(name: 'title') String? name,
    required List<ParticipantModel> participants,
    @JsonKey(name: 'createdAt') required DateTime createdAt,
    @JsonKey(name: 'updatedAt') DateTime? updatedAt,
    @JsonKey(name: 'lastMessageText') String? lastMessage,
    @JsonKey(name: 'lastMessageTimestamp') DateTime? timestamp,
  }) = _ConversationModel;

  factory ConversationModel.fromJson(Map<String, dynamic> json) =>
      _$ConversationModelFromJson(json);

  // Factory constructor to create a ConversationModel from a ConversationEntity
  factory ConversationModel.fromEntity(ConversationEntity entity) {
    return ConversationModel(
      id: entity.id,
      name: entity.name,
      participants:
          entity.participants
              .map(
                (pEntity) => ParticipantModel(
                  userId: pEntity.userId,
                  user: pEntity.user,
                  avatar: pEntity.avatar,
                ),
              )
              .toList(),
      createdAt: entity.createdAt,
      updatedAt: entity.updatedAt,
      lastMessage: entity.lastMessage,
      timestamp: entity.timestamp,
    );
  }

  // Method to convert ConversationModel to ConversationEntity
  ConversationEntity toEntity() {
    return ConversationEntity(
      id: id,
      name: name ?? 'Unknown Conversation',
      participants: participants.map((pModel) => pModel.toEntity()).toList(),
      createdAt: createdAt,
      updatedAt: updatedAt,
      lastMessage: lastMessage,
      timestamp: timestamp,
    );
  }
}

// Keep the toEntity extension, but ensure it handles nullable fields appropriately
// if ConversationEntity fields are not all nullable.
extension ConversationModelX on ConversationModel {
  ConversationEntity toEntity() {
    // Ensure that ConversationEntity can handle potentially null values from ConversationModel
    // For example, if ConversationEntity.lastMessage is non-nullable, provide a default value:
    return ConversationEntity(
      id: id,
      name: name ?? 'Unknown Conversation',
      participants: participants.map((pModel) => pModel.toEntity()).toList(),
      createdAt: createdAt,
      updatedAt: updatedAt,
      lastMessage: lastMessage,
      timestamp: timestamp,
    );
  }
}
