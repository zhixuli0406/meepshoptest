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
  const factory ConversationModel({
    @JsonKey(name: '_id') required String id,
    required List<ParticipantModel> participants,
    @JsonKey(name: 'lastMessageText')
    String? lastMessage, // Maps to 'lastMessageText' and is nullable
    @JsonKey(
      name: 'lastMessageTimestamp',
      fromJson: _dateTimeFromNullableTimestamp,
      toJson: _dateTimeToNullableIso8601String,
    )
    DateTime?
    timestamp, // Maps to 'lastMessageTimestamp', is nullable, and uses custom converters
    @JsonKey(
      fromJson: _dateTimeFromNullableTimestamp,
      toJson: _dateTimeToNullableIso8601String,
    )
    DateTime? createdAt, // Added createdAt, nullable
    @JsonKey(
      fromJson: _dateTimeFromNullableTimestamp,
      toJson: _dateTimeToNullableIso8601String,
    )
    DateTime? updatedAt, // Added updatedAt, nullable
    int? legacyConvId, // Added legacyConvId, nullable
    // If __v is needed, add it as: int? v,
  }) = _ConversationModel;

  factory ConversationModel.fromJson(Map<String, dynamic> json) =>
      _$ConversationModelFromJson(json);
}

// Keep the toEntity extension, but ensure it handles nullable fields appropriately
// if ConversationEntity fields are not all nullable.
extension ConversationModelX on ConversationModel {
  ConversationEntity toEntity() {
    // Ensure that ConversationEntity can handle potentially null values from ConversationModel
    // For example, if ConversationEntity.lastMessage is non-nullable, provide a default value:
    return ConversationEntity(
      id: id,
      participants: participants.map((p) => p.toEntity()).toList(),
      lastMessage: lastMessage ?? '', // Provide default if null
      timestamp: timestamp ?? DateTime.now(), // Provide default if null
      // Map other new fields if they exist in ConversationEntity
      // legacyConvId: legacyConvId,
      // createdAt: createdAt,
      // updatedAt: updatedAt,
    );
  }
}
