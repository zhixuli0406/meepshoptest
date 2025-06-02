import 'package:fpdart/fpdart.dart';
import 'package:injectable/injectable.dart';
import 'package:meepshoptest/core/errors/failure.dart';
import 'package:meepshoptest/features/chat/data/models/conversation_model.dart';
import 'package:meepshoptest/features/chat/data/models/message_model.dart';
import 'package:meepshoptest/features/chat/data/models/message_input_model.dart';
import 'package:meepshoptest/features/chat/data/services/chat_data_source_service.dart';
import 'package:meepshoptest/features/chat/domain/entities/conversation_entity.dart';
import 'package:meepshoptest/features/message/domain/entities/message_entity.dart';
import 'package:meepshoptest/features/chat/domain/repositories/chat_repository.dart';

@LazySingleton(as: ChatRepository)
class ChatRepositoryImpl implements ChatRepository {
  final ChatDataSourceService _dataSource;

  ChatRepositoryImpl(this._dataSource);

  @override
  Future<Either<Failure, List<ConversationEntity>>> getConversations() async {
    final eitherResult = await _dataSource.getConversations();
    return eitherResult.map(
      (models) => models.map((model) => model.toEntity()).toList(),
    );
  }

  @override
  Future<Either<Failure, List<MessageEntity>>> getMessages(
    String conversationIdString, {
    int? before,
    int? limit,
  }) async {
    final eitherResult = await _dataSource.getMessages(conversationIdString);
    return eitherResult.map(
      (models) => models.map((model) => model.toEntity()).toList(),
    );
  }

  @override
  Future<Either<Failure, MessageEntity>> createMessage(
    String conversationIdString,
    String messageText,
    String currentUserId,
    String senderName,
    String senderAvatar,
    String messageType,
  ) async {
    final inputPayload = MessageInputModel(
      content: messageText,
      senderId: currentUserId,
      type: messageType,
    );

    final eitherResult = await _dataSource.createMessage(
      conversationIdString,
      inputPayload,
    );
    return eitherResult.map((model) => model.toEntity());
  }
}
