import 'package:freezed_annotation/freezed_annotation.dart';

part 'reactions_model.freezed.dart';
part 'reactions_model.g.dart';

@freezed
class ReactionsModel with _$ReactionsModel {
  const factory ReactionsModel({
    required int like,
    required int love,
    required int laugh,
  }) = _ReactionsModel;

  factory ReactionsModel.fromJson(Map<String, dynamic> json) =>
      _$ReactionsModelFromJson(json);
}
