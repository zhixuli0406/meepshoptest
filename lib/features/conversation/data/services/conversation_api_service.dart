import 'package:fpdart/fpdart.dart';
import 'package:injectable/injectable.dart';
import 'package:meepshoptest/core/errors/failure.dart';
import 'package:meepshoptest/core/network/api_client.dart';
import 'package:meepshoptest/features/conversation/data/models/conversation_api_model.dart';
import 'package:meepshoptest/features/conversation/data/models/conversation_input_model.dart';

abstract class ConversationApiService {
  Future<Either<Failure, List<ConversationApiModel>>> getConversations();
  Future<Either<Failure, ConversationApiModel>> createConversation(
    ConversationInputModel conversationInput,
  );
}

@LazySingleton(as: ConversationApiService)
class ConversationApiServiceImpl implements ConversationApiService {
  final ApiClient _apiClient;

  ConversationApiServiceImpl(this._apiClient);

  @override
  Future<Either<Failure, List<ConversationApiModel>>> getConversations() {
    return _apiClient.get<List<ConversationApiModel>>(
      '/conversations',
      dataFromJson: (json) {
        // Assuming ApiClient returns the 'data' part of ApiResponse directly.
        // And that 'data' is the list of conversations.
        if (json is List) {
          return json
              .map(
                (item) =>
                    ConversationApiModel.fromJson(item as Map<String, dynamic>),
              )
              .toList();
        } else if (json is Map<String, dynamic> &&
            json.containsKey('conversations')) {
          // If swagger means data: { conversations: [] }
          final list = json['conversations'] as List<dynamic>;
          return list
              .map(
                (item) =>
                    ConversationApiModel.fromJson(item as Map<String, dynamic>),
              )
              .toList();
        }
        // This case should ideally not be reached if ApiClient and backend are aligned.
        // ApiClient's _request method already checks if apiResponse.data is null.
        // If data is present but not a list, it's a server/contract issue.
        throw Exception(
          'Invalid data structure for conversations list from API',
        );
      },
    );
  }

  @override
  Future<Either<Failure, ConversationApiModel>> createConversation(
    ConversationInputModel conversationInput,
  ) {
    return _apiClient.post<ConversationApiModel>(
      '/conversations',
      data: conversationInput.toJson(),
      dataFromJson:
          (json) => ConversationApiModel.fromJson(json as Map<String, dynamic>),
    );
  }
}
