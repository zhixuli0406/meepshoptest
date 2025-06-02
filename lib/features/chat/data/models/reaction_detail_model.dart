import 'package:freezed_annotation/freezed_annotation.dart';

part 'reaction_detail_model.freezed.dart';
part 'reaction_detail_model.g.dart';

@freezed
@JsonSerializable(explicitToJson: true, createFactory: false)
class ReactionDetailModel with _$ReactionDetailModel {
  const factory ReactionDetailModel({
    required String type,
    required List<int> userIds,
  }) = _ReactionDetailModel;

  factory ReactionDetailModel.fromJson(Map<String, dynamic> json) =>
      _$ReactionDetailModelFromJson(json);
}
