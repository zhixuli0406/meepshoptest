import 'package:equatable/equatable.dart';
// import 'package:meepshoptest/features/auth/domain/entities/user_entity.dart'; // Old import for participants
import 'package:meepshoptest/features/conversation/domain/entities/conversation_participant_entity.dart'; // New import for participants
import 'package:meepshoptest/features/message/domain/entities/message_entity.dart';
import 'package:meepshoptest/features/auth/domain/entities/user_entity.dart'; // Keep for createdBy field

class ConversationEntity extends Equatable {
  final String id;
  // final List<UserEntity> participants; // Old type
  final List<ConversationParticipantEntity> participants; // New type
  final String? title;
  final MessageEntity? lastMessage;
  final String? lastMessageText;
  final DateTime? lastMessageTimestamp;
  final int? legacyConvId;
  final UserEntity? createdBy; // This still uses UserEntity
  final DateTime? createdAt; // New type: nullable DateTime
  final DateTime? updatedAt; // New type: nullable DateTime

  const ConversationEntity({
    required this.id,
    required this.participants,
    this.title,
    this.lastMessage,
    this.lastMessageText,
    this.lastMessageTimestamp,
    this.legacyConvId,
    this.createdBy,
    this.createdAt, // Now nullable
    this.updatedAt, // Now nullable
  });

  @override
  List<Object?> get props => [
    id,
    participants,
    title,
    lastMessage,
    lastMessageText,
    lastMessageTimestamp,
    legacyConvId,
    createdBy,
    createdAt,
    updatedAt,
  ];
}
