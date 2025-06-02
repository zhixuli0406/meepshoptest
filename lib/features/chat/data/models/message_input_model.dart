import 'package:meta/meta.dart';

class MessageInputModel {
  final String content;
  final String senderId;
  final String type;

  MessageInputModel({
    required this.content,
    required this.senderId,
    this.type = 'text', // Default to text as per swagger example
  });

  Map<String, dynamic> toJson() => {
    'content': content,
    'senderId': senderId,
    'type': type,
  };
}
