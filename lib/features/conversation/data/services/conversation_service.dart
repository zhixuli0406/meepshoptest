import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:meepshoptest/core/network/api_client.dart';
import 'package:meepshoptest/core/errors/failure.dart';
import 'package:fpdart/fpdart.dart';
import 'package:meepshoptest/features/conversation/data/models/conversation_input_model.dart';
import 'package:meepshoptest/features/conversation/data/models/conversation_response_model.dart';

@lazySingleton
class ConversationService {
  final ApiClient _apiClient;

  ConversationService(this._apiClient) {
    print(
      '[ConversationService] Initialized. _apiClient is null: ${_apiClient == null}',
    );
  }

  Future<Either<Failure, List<ConversationResponseModel>>>
  getConversations() async {
    try {
      print('[ConversationService-GetConversations] Requesting conversations');

      final result = await _apiClient.get<List<ConversationResponseModel>>(
        '/conversations',
        dataFromJson: (json) {
          if (json is Map<String, dynamic> && json['conversations'] is List) {
            final List<dynamic> conversationsJson = json['conversations'];
            return conversationsJson
                .map(
                  (conversationJson) => ConversationResponseModel.fromJson(
                    conversationJson as Map<String, dynamic>,
                  ),
                )
                .toList();
          } else {
            print(
              '[ConversationService-GetConversations] Invalid data structure for conversations list.',
            );
            throw Exception('Invalid data structure for conversations list.');
          }
        },
      );

      return result.fold(
        (failure) {
          print(
            '[ConversationService-GetConversations] Failed: ${failure.message}',
          );
          return Left(failure);
        },
        (conversations) {
          print(
            '[ConversationService-GetConversations] Parsed ${conversations.length} conversations',
          );
          return Right(conversations);
        },
      );
    } on DioException catch (e) {
      print(
        '[ConversationService-GetConversations] DioException: ${e.response?.data}',
      );
      if (e.response?.statusCode == 401) {
        return Left(
          Failure.unauthorized(
            message:
                e.response?.data?['message'] ??
                'Failed to get conversations: Unauthorized',
          ),
        );
      }
      return Left(
        Failure.serverError(
          message:
              e.response?.data?['message'] ??
              e.message ??
              'Failed to get conversations: Server error',
        ),
      );
    } catch (e, s) {
      print(
        '[ConversationService-GetConversations] Generic error type: ${e.runtimeType}',
      );
      print(
        '[ConversationService-GetConversations] Generic error: $e, Stacktrace: $s',
      );
      if (e is Failure) {
        return Left(e);
      }
      return Left(
        Failure.unknownError(
          message:
              'An unknown error occurred while fetching conversations: ${e.toString()}',
          error: e,
          stackTrace: s,
        ),
      );
    }
  }

  TaskEither<Failure, ConversationResponseModel> createConversation(
    ConversationInputModel input,
  ) {
    return TaskEither.tryCatch(
      () async {
        print(
          '[ConversationService-CreateConversation] Requesting to create conversation with participants: ${input.participantIds}, title: ${input.title}',
        );
        final response = await _apiClient.post(
          '/conversations',
          data: input.toJson(),
          dataFromJson: (json) {
            if (json is Map<String, dynamic> &&
                json['data'] is Map<String, dynamic> &&
                json['data']['conversation'] is Map<String, dynamic>) {
              return ConversationResponseModel.fromJson(
                json['data']['conversation'] as Map<String, dynamic>,
              );
            } else {
              print(
                '[ConversationService-CreateConversation] Invalid data structure for created conversation.',
              );
              throw Exception(
                'Invalid data structure for created conversation.',
              );
            }
          },
        );

        return response.fold(
          (failure) {
            print(
              '[ConversationService-CreateConversation] Failed: ${failure.message}',
            );
            throw failure;
          },
          (conversationModel) {
            print(
              '[ConversationService-CreateConversation] Successfully created conversation: ${conversationModel.id}',
            );
            return conversationModel;
          },
        );
      },
      (error, stackTrace) {
        print(
          '[ConversationService-CreateConversation] Exception: $error, Stacktrace: $stackTrace',
        );
        if (error is DioException) {
          if (error.response?.statusCode == 401) {
            return Failure.unauthorized(
              message:
                  error.response?.data?['message'] ??
                  'Failed to create conversation: Unauthorized',
            );
          }
          return Failure.serverError(
            message:
                error.response?.data?['message'] ??
                error.message ??
                'Failed to create conversation: Server error',
          );
        }
        if (error is Failure) {
          return error;
        }
        return Failure.unknownError(
          message:
              'An unknown error occurred while creating conversation: ${error.toString()}',
          error: error,
          stackTrace: stackTrace,
        );
      },
    );
  }
}
