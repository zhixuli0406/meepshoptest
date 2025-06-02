import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:meepshoptest/features/chat/domain/entities/reaction_type.dart';

part 'reactions_entity.freezed.dart';

@freezed
class ReactionDetailEntity with _$ReactionDetailEntity {
  const factory ReactionDetailEntity({
    required ReactionType type,
    required int count,
  }) = _ReactionDetailEntity;
}

typedef ReactionsEntity = List<ReactionDetailEntity>;
