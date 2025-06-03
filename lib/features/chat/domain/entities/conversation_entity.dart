import 'package:equatable/equatable.dart';
import 'package:meepshoptest/features/chat/domain/entities/participant_entity.dart'; // Import the separate ParticipantEntity

class ConversationEntity extends Equatable {
  final String id;
  final String name;
  final List<ParticipantEntity> participants;
  final DateTime createdAt;
  final DateTime? updatedAt;
  final String? lastMessage;
  final DateTime? timestamp;

  const ConversationEntity({
    required this.id,
    required this.name,
    required this.participants,
    required this.createdAt,
    this.updatedAt,
    this.lastMessage,
    this.timestamp,
  });

  ConversationEntity copyWith({
    String? id,
    String? name,
    List<ParticipantEntity>? participants,
    DateTime? createdAt,
    DateTime? updatedAt,
    String? lastMessage,
    DateTime? timestamp,
  }) {
    return ConversationEntity(
      id: id ?? this.id,
      name: name ?? this.name,
      participants: participants ?? this.participants,
      createdAt: createdAt ?? this.createdAt,
      updatedAt: updatedAt ?? this.updatedAt,
      lastMessage: lastMessage ?? this.lastMessage,
      timestamp: timestamp ?? this.timestamp,
    );
  }

  @override
  List<Object?> get props => [
    id,
    name,
    participants,
    createdAt,
    updatedAt,
    lastMessage,
    timestamp,
  ];
}
