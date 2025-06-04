import 'package:freezed_annotation/freezed_annotation.dart';
// For ReactionDetailEntity

part 'reaction_update_response_entity.freezed.dart';

@freezed
class ReactionUpdateResponseEntity with _$ReactionUpdateResponseEntity {
  const factory ReactionUpdateResponseEntity({
    required String messageId,
    // Assuming API returns a map like {"like": 1, "love": 0}
    // which needs to be converted to List<ReactionDetailEntity>
    // For now, let's expect the repository to handle this conversion if needed
    // or expect the API model to represent this structure directly.
    // Let's keep it simple: the API response structure is { messageId: "xxx", reactions: {"like":0, ...} }
    // So, the entity should reflect this.
    required Map<String, int> reactions,
  }) = _ReactionUpdateResponseEntity;
}
