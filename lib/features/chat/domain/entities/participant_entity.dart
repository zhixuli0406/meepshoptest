import 'package:equatable/equatable.dart';

class ParticipantEntity extends Equatable {
  final String userId;
  final String? user; // Username or display name
  final String? avatar; // Avatar URL

  const ParticipantEntity({required this.userId, this.user, this.avatar});

  @override
  List<Object?> get props => [userId, user, avatar];
}
