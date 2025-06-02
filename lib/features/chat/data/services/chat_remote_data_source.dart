// import 'package:dio/dio.dart'; // REMOVED
import 'package:fpdart/fpdart.dart'; // ADDED for Either
import 'package:injectable/injectable.dart';
import 'package:meepshoptest/core/errors/failure.dart'; // For Failure type
import 'package:meepshoptest/core/network/api_client.dart'; // ADDED
import 'package:meepshoptest/features/chat/data/models/conversation_model.dart';
import 'package:meepshoptest/features/chat/data/models/message_model.dart';
import 'package:meepshoptest/features/chat/data/models/message_input_model.dart'; // Ensure import
import './chat_data_source_service.dart';
import 'package:dio/dio.dart';

@LazySingleton(as: ChatDataSourceService)
class ChatRemoteDataSourceImpl implements ChatDataSourceService {
  // final Dio _dio; // REMOVED
  final ApiClient _apiClient; // ADDED

  // ChatRemoteDataSourceImpl(this._dio); // REMOVED
  ChatRemoteDataSourceImpl(this._apiClient); // ADDED

  @override
  Future<Either<Failure, List<ConversationModel>>> getConversations() async {
    return _apiClient.get<List<ConversationModel>>(
      '/conversations',
      dataFromJson: (json) {
        // Corrected logic: ApiClient passes the content of response.data.data to this callback.
        // For GET /conversations, this is: { "conversations": [...] }
        if (json is Map<String, dynamic> && json['conversations'] is List) {
          final List<dynamic> conversationsJson =
              json['conversations'] as List<dynamic>;
          return conversationsJson
              .map(
                (item) =>
                    ConversationModel.fromJson(item as Map<String, dynamic>),
              )
              .toList();
        } else {
          // This case should ideally not be reached if the API response is consistent.
          print(
            '[ChatRemoteDataSourceImpl-getConversations] Unexpected data structure: $json',
          );
          throw Exception(
            'Invalid data structure for conversations list. Expected a map with a conversations list.',
          );
        }
      },
    );
  }

  @override
  Future<Either<Failure, List<MessageModel>>> getMessages(
    String conversationId,
  ) async {
    final eitherResult = await _apiClient.get<List<MessageModel>>(
      '/conversations/$conversationId/messages',
      dataFromJson: (json) {
        if (json is Map<String, dynamic> && json['messages'] is List) {
          final List<dynamic> messagesJson = json['messages'] as List<dynamic>;
          return messagesJson
              .map(
                (item) => MessageModel.fromJson(item as Map<String, dynamic>),
              )
              .toList();
        } else if (json is List) {
          if (json.isEmpty) return <MessageModel>[];
          return json
              .map(
                (item) => MessageModel.fromJson(item as Map<String, dynamic>),
              )
              .toList();
        }
        print(
          '[ChatRemoteDataSourceImpl-getMessages] Unexpected data structure from ApiClient: $json',
        );
        throw Exception(
          'Invalid data structure for messages list. Expected a map with a "messages" list or an empty list.',
        );
      },
    );

    return eitherResult.fold(
      (failure) {
        // This is where we handle the Failure from ApiClient
        print(
          '[ChatRemoteDataSourceImpl-getMessages] Received Failure. Type: ${failure.runtimeType}, Failure: $failure',
        );
        if (failure is ServerError && failure.statusCode == 404) {
          print(
            '[ChatRemoteDataSourceImpl-getMessages] Received 404 for $conversationId, treating as empty message list.',
          );
          return const Right([]); // Return empty list on 404
        } else {
          return Left(failure); // Propagate other failures
        }
      },
      (messages) {
        // This is the success case, messages is List<MessageModel>
        return Right(messages);
      },
    );
  }

  @override
  Future<Either<Failure, MessageModel>> createMessage(
    String conversationId,
    MessageInputModel messagePayload, // CHANGED from MessageModel
  ) async {
    // Endpoint updated to match Swagger: /conversations/{conversationId}/messages (POST)
    return _apiClient.post<MessageModel>(
      '/conversations/$conversationId/messages',
      data: messagePayload.toJson(), // Uses MessageInputModel.toJson()
      dataFromJson: (json) {
        // json here is response.data['data']
        if (json is Map<String, dynamic> && json.containsKey('message')) {
          // Extract the actual user message object
          final messageJson = json['message'] as Map<String, dynamic>;
          return MessageModel.fromJson(messageJson);
        } else {
          // Handle unexpected structure
          print(
            '[ChatRemoteDataSourceImpl-createMessage] Unexpected data structure: $json',
          );
          throw Exception(
            'Invalid data structure for createMessage response. Expected a map with a "message" field.',
          );
        }
      },
    );
  }
}
