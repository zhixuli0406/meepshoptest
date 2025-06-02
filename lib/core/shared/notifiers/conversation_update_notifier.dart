import 'package:flutter/foundation.dart';
import 'package:injectable/injectable.dart';
import 'package:meepshoptest/features/message/domain/entities/message_entity.dart';

@lazySingleton
class ConversationUpdateNotifier extends ValueNotifier<MessageEntity?> {
  ConversationUpdateNotifier() : super(null);

  void notify({MessageEntity? lastMessage}) {
    value = lastMessage;
  }

  void clear() {
    value = null;
  }
}
