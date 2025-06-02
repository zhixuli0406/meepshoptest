import 'package:fpdart/fpdart.dart';
import 'package:injectable/injectable.dart';
import 'package:meepshoptest/core/errors/failure.dart';
import 'package:meepshoptest/core/network/api_client.dart';
import 'package:meepshoptest/features/message/data/models/message_api_model.dart';
import 'package:meepshoptest/features/message/data/models/message_input_model.dart';

abstract class MessageApiService {
  Future<Either<Failure, List<MessageApiModel>>> getMessages(
    String conversationId, {
    int? before, // Timestamp as int (Unix milliseconds)
    int? limit,
  });
  Future<Either<Failure, MessageApiModel>> createMessage(
    String conversationId,
    MessageInputModel messageInput,
  );
}

@LazySingleton(as: MessageApiService)
class MessageApiServiceImpl implements MessageApiService {
  final ApiClient _apiClient;

  MessageApiServiceImpl(this._apiClient);

  @override
  Future<Either<Failure, List<MessageApiModel>>> getMessages(
    String conversationId, {
    int? before,
    int? limit,
  }) {
    final Map<String, dynamic> queryParameters = {};
    if (before != null) {
      queryParameters['before'] = before;
    }
    if (limit != null) {
      queryParameters['limit'] = limit;
    }

    return _apiClient.get<List<MessageApiModel>>(
      '/conversations/$conversationId/messages',
      queryParameters: queryParameters.isNotEmpty ? queryParameters : null,
      dataFromJson: (json) {
        if (json is List) {
          return json
              .map(
                (item) =>
                    MessageApiModel.fromJson(item as Map<String, dynamic>),
              )
              .toList();
        } else if (json is Map<String, dynamic> &&
            json.containsKey('messages')) {
          final list = json['messages'] as List<dynamic>;
          return list
              .map(
                (item) =>
                    MessageApiModel.fromJson(item as Map<String, dynamic>),
              )
              .toList();
        }
        throw Exception('Invalid data structure for messages list from API');
      },
    );
  }

  @override
  Future<Either<Failure, MessageApiModel>> createMessage(
    String conversationId,
    MessageInputModel messageInput,
  ) {
    return _apiClient.post<MessageApiModel>(
      '/conversations/$conversationId/messages', // Path based on Swagger for creating message
      data: messageInput.toJson(),
      dataFromJson:
          (json) => MessageApiModel.fromJson(json as Map<String, dynamic>),
    );
  }
}
