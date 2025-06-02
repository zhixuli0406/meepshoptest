import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:meepshoptest/features/chat/data/models/message_model.dart';
import 'package:meepshoptest/features/chat/data/models/sender_model.dart';

part 'conversation_response_model.freezed.dart';
part 'conversation_response_model.g.dart';

@freezed
class ConversationResponseModel with _$ConversationResponseModel {
  const factory ConversationResponseModel({
    @JsonKey(name: '_id') required String id,
    required List<SenderModel> participants,
    String? title,
    MessageModel? lastMessage,
    String? lastMessageText,
    DateTime? lastMessageTimestamp,
    int? legacyConvId,
    SenderModel? createdBy,
    required DateTime createdAt,
    required DateTime updatedAt,
  }) = _ConversationResponseModel;

  factory ConversationResponseModel.fromJson(Map<String, dynamic> json) =>
      _$ConversationResponseModelFromJson(json);
}
