import 'package:freezed_annotation/freezed_annotation.dart';

part 'conversation_input_model.freezed.dart';
part 'conversation_input_model.g.dart';

@freezed
class ConversationInputModel with _$ConversationInputModel {
  @JsonSerializable(fieldRename: FieldRename.snake, explicitToJson: true)
  const factory ConversationInputModel({
    required List<String> participantIds,
    String? title,
  }) = _ConversationInputModel;

  factory ConversationInputModel.fromJson(Map<String, dynamic> json) =>
      _$ConversationInputModelFromJson(json);
}
