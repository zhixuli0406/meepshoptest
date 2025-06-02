import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:meepshoptest/features/conversation/domain/entities/conversation_participant_entity.dart';

part 'conversation_participant_api_model.freezed.dart';
part 'conversation_participant_api_model.g.dart';

@freezed
class ConversationParticipantApiModel with _$ConversationParticipantApiModel {
  @JsonSerializable(fieldRename: FieldRename.snake)
  const factory ConversationParticipantApiModel({
    required String userId,
    String? user, // In swagger this is 'user', assuming it's username
    String? avatar,
  }) = _ConversationParticipantApiModel;

  factory ConversationParticipantApiModel.fromJson(Map<String, dynamic> json) =>
      _$ConversationParticipantApiModelFromJson(json);
}

extension ConversationParticipantApiModelX on ConversationParticipantApiModel {
  ConversationParticipantEntity toEntity() {
    return ConversationParticipantEntity(
      userId: userId,
      username: user, // 'user' field from api model maps to 'username'
      avatarUrl: avatar, // 'avatar' field from api model maps to 'avatarUrl'
    );
  }
}
