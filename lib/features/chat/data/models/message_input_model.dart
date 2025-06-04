import 'package:freezed_annotation/freezed_annotation.dart';
// Import domain MessageType if you want to use it for validation or conversion before creating this model
// import 'package:meepshoptest/features/chat/domain/entities/message_entity.dart';

part 'message_input_model.freezed.dart';
part 'message_input_model.g.dart';

// Removed MessageTypeInputApiModel enum.
// The 'type' field will now be a String (e.g., "text", "image").

@freezed
class MessageInputModel with _$MessageInputModel {
  @JsonSerializable(fieldRename: FieldRename.snake, createToJson: true)
  const factory MessageInputModel({
    required String senderId,
    required String
    type, // Changed to String. API will expect "text" or "image".
    required String
    content, // For text messages, or local path for optimistic image update
    String? s3Key, // The key for the S3 object, to be sent for image messages
  }) = _MessageInputModel;

  factory MessageInputModel.fromJson(Map<String, dynamic> json) =>
      _$MessageInputModelFromJson(json);
}
