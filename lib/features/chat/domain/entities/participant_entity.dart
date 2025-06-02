import 'package:freezed_annotation/freezed_annotation.dart';

part 'participant_entity.freezed.dart';

@freezed
class ParticipantEntity with _$ParticipantEntity {
  const factory ParticipantEntity({
    required String userId,
    required String user,
    required String avatar,
  }) = _ParticipantEntity;
}
