import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:meepshoptest/features/chat/domain/entities/reaction_update_response_entity.dart';

part 'reaction_update_response_api_model.freezed.dart';
part 'reaction_update_response_api_model.g.dart';

@freezed
class ReactionUpdateResponseApiModel with _$ReactionUpdateResponseApiModel {
  const factory ReactionUpdateResponseApiModel({
    required String messageId,
    required Map<String, int> reactions,
  }) = _ReactionUpdateResponseApiModel;

  factory ReactionUpdateResponseApiModel.fromJson(Map<String, dynamic> json) =>
      _$ReactionUpdateResponseApiModelFromJson(json);
}

extension ReactionUpdateResponseApiModelX on ReactionUpdateResponseApiModel {
  ReactionUpdateResponseEntity toEntity() {
    return ReactionUpdateResponseEntity(
      messageId: messageId,
      reactions: reactions,
    );
  }
}
