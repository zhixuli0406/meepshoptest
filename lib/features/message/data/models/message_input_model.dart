import 'package:freezed_annotation/freezed_annotation.dart';

part 'message_input_model.freezed.dart';
part 'message_input_model.g.dart';

// Enum for MessageTypeInput based on swagger
// Note: Swagger for MessageInput only lists 'text' and 'image'.
// 'system' messages are typically server-generated, not client-input.
enum MessageTypeInputApiModel { text, image }

@freezed
class MessageInputModel with _$MessageInputModel {
  @JsonSerializable(fieldRename: FieldRename.snake)
  const factory MessageInputModel({
    required String senderId,
    required MessageTypeInputApiModel type,
    required String content,
    String? s3Key, // Required for image type
  }) = _MessageInputModel;

  factory MessageInputModel.fromJson(Map<String, dynamic> json) =>
      _$MessageInputModelFromJson(json);
}
