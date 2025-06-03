import 'package:fpdart/fpdart.dart';
import 'package:meepshoptest/core/errors/failure.dart';
import 'package:meepshoptest/features/chat/data/models/conversation_model.dart';
import 'package:meepshoptest/features/chat/data/models/message_input_model.dart';
import 'package:meepshoptest/features/chat/data/models/message_model.dart';
import 'package:meepshoptest/features/chat/data/services/chat_data_source_service.dart';
import 'package:meepshoptest/features/chat/domain/entities/conversation_entity.dart';
import 'package:meepshoptest/features/chat/domain/entities/message_entity.dart';
import 'package:meepshoptest/features/chat/domain/repositories/chat_repository.dart';
// Required for @LazySingleton if you use injectable
import 'package:injectable/injectable.dart';
import 'package:meepshoptest/features/chat/data/models/message_api_model.dart';

// If using injectable, you would uncomment this:
@LazySingleton(as: ChatRepository)
class ChatRepositoryImpl implements ChatRepository {
  final ChatDataSourceService dataSourceService;

  ChatRepositoryImpl({required this.dataSourceService});

  @override
  Future<Either<Failure, List<ConversationEntity>>> getConversations() async {
    try {
      final result = await dataSourceService.getConversations();
      return result.map(
        (conversationModels) =>
            conversationModels.map((model) => model.toEntity()).toList(),
      );
    } catch (e) {
      print('Unexpected error in ChatRepositoryImpl getConversations: $e');
      return Left(
        Failure.unexpectedError(
          message: 'Repository error during getConversations: ${e.toString()}',
        ),
      );
    }
  }

  @override
  Future<Either<Failure, ConversationEntity>> createConversation({
    required String name,
    required List<String> memberIds,
  }) async {
    try {
      final result = await dataSourceService.createConversation(
        name: name,
        memberIds: memberIds,
      );
      return result.map((conversationModel) => conversationModel.toEntity());
    } catch (e) {
      print('Unexpected error in ChatRepositoryImpl createConversation: $e');
      return Left(
        Failure.unexpectedError(
          message:
              'Repository error during createConversation: ${e.toString()}',
        ),
      );
    }
  }

  @override
  Future<Either<Failure, List<MessageEntity>>> getMessages(
    String conversationId, {
    int? before,
    int? limit,
  }) async {
    try {
      final result = await dataSourceService.getMessages(conversationId);
      return result.map(
        (messageModels) =>
            messageModels
                .map<MessageEntity>((model) => model.toEntity())
                .toList(),
      );
    } catch (e) {
      print('Unexpected error in ChatRepositoryImpl getMessages: $e');
      return Left(
        Failure.unexpectedError(
          message: 'Repository error during getMessages: ${e.toString()}',
        ),
      );
    }
  }

  @override
  Future<Either<Failure, MessageEntity>> createMessage(
    String conversationId,
    String messageText,
    String currentUserId,
    String senderName,
    String senderAvatar,
    String messageType,
  ) async {
    try {
      final messageInput = MessageInputModel(
        content: messageText,
        senderId: currentUserId,
        type: messageType,
      );
      final result = await dataSourceService.createMessage(
        conversationId,
        messageInput,
      );
      return result.map<MessageEntity>(
        (messageModel) => messageModel.toEntity(),
      );
    } catch (e) {
      print('Unexpected error in ChatRepositoryImpl createMessage: $e');
      return Left(
        Failure.unexpectedError(
          message: 'Repository error during createMessage: ${e.toString()}',
        ),
      );
    }
  }

  // Providing basic implementations for other repository methods to satisfy the interface
  @override
  Future<Either<Failure, ConversationEntity>> getConversation({
    required String conversationId,
  }) async {
    // TODO: Implement actual logic if needed
    throw UnimplementedError('getConversation is not implemented yet.');
  }

  @override
  Future<Either<Failure, List<ConversationEntity>>> listConversations() async {
    // TODO: Implement actual logic if needed
    throw UnimplementedError('listConversations is not implemented yet.');
  }

  /* TODO: Uncomment and implement if MessageEntity and related logic are defined
  @override
  Future<Either<Failure, MessageEntity>> sendMessage({
    required String conversationId, 
    required String text
  }) async {
    // TODO: Implement actual logic
    throw UnimplementedError('sendMessage is not implemented yet.');
  }

  @override
  Stream<Either<Failure, List<MessageEntity>>> getMessages({required String conversationId}) async* {
    // TODO: Implement actual logic
    throw UnimplementedError('getMessages is not implemented yet.');
  }
  */
}
