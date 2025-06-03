import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:meepshoptest/features/chat/domain/entities/participant_entity.dart';

part 'participant_model.freezed.dart';
part 'participant_model.g.dart';

@freezed
class ParticipantModel with _$ParticipantModel {
  const ParticipantModel._();

  const factory ParticipantModel({
    @JsonKey(name: '_id') String? userId,
    @JsonKey(name: 'username') String? user,
    String? avatar,
  }) = _ParticipantModel;

  factory ParticipantModel.fromJson(Map<String, dynamic> json) =>
      _$ParticipantModelFromJson(json);

  ParticipantEntity toEntity() {
    return ParticipantEntity(
      userId: userId ?? 'unknown_user_id',
      user: user,
      avatar: avatar,
    );
  }
}
