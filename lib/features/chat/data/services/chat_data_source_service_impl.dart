import 'package:fpdart/fpdart.dart';
import 'package:injectable/injectable.dart';
import 'package:meepshoptest/core/errors/failure.dart';
import 'package:meepshoptest/core/network/api_client.dart';
import 'package:meepshoptest/features/chat/data/models/conversation_model.dart';
import 'package:meepshoptest/features/chat/data/models/message_api_model.dart';
import 'package:meepshoptest/features/chat/data/models/message_input_model.dart';
import 'package:meepshoptest/features/chat/data/models/reaction_update_response_api_model.dart';
import 'package:meepshoptest/features/chat/data/services/chat_data_source_service.dart'; // Import the correct service interface
import 'dart:io'; // Added for File operations
import 'package:path/path.dart' as p; // Added for path operations
import 'package:mime/mime.dart'; // Added to get mime type
import 'package:meepshoptest/features/chat/data/models/presigned_upload_info_model.dart'; // Import the new model

@LazySingleton(
  as: ChatDataSourceService,
) // DI for the correct service interface
class ChatDataSourceServiceImpl implements ChatDataSourceService {
  // Renamed class and implements correct interface
  final ApiClient _apiClient;

  ChatDataSourceServiceImpl(this._apiClient);

  @override
  Future<Either<Failure, List<ConversationModel>>> getConversations() async {
    return _apiClient.get<List<ConversationModel>>(
      '/conversations',
      dataFromJson: (json) {
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
          // If the structure is not as expected, dataFromJson should throw an exception.
          // ApiClient._request will catch this and return a Left(Failure.serverError(...)).
          throw Exception(
            'Invalid data structure for conversations list. Expected a map with a conversations list.',
          );
        }
      },
    );
  }

  @override
  Future<Either<Failure, List<MessageApiModel>>> getMessages(
    String conversationId,
  ) async {
    final eitherResult = await _apiClient.get<List<MessageApiModel>>(
      '/conversations/$conversationId/messages',
      dataFromJson: (json) {
        if (json is List) {
          return json
              .map(
                (item) =>
                    MessageApiModel.fromJson(item as Map<String, dynamic>),
              )
              .toList();
        } else if (json is Map<String, dynamic> && json['messages'] is List) {
          return (json['messages'] as List)
              .map(
                (item) =>
                    MessageApiModel.fromJson(item as Map<String, dynamic>),
              )
              .toList();
        }
        throw Exception('Invalid data structure for messages list.');
      },
    );
    return eitherResult.fold((failure) {
      if (failure is ServerError && failure.statusCode == 404) {
        return const Right(<MessageApiModel>[]);
      }
      return Left(failure);
    }, (messages) => Right(messages));
  }

  @override
  Future<Either<Failure, MessageApiModel>> createMessage(
    String conversationId,
    MessageInputModel messagePayload,
  ) async {
    if (messagePayload.type == 'image' && messagePayload.content.isNotEmpty) {
      final String localPath = messagePayload.content;
      final File imageFile = File(localPath);

      if (!await imageFile.exists()) {
        return Left(
          Failure.serverError(
            message: 'Client Error: Image file not found at path: $localPath',
          ),
        );
      }

      final String fileName = p.basename(imageFile.path);
      final String? fileType = lookupMimeType(imageFile.path);

      if (fileType == null) {
        return Left(
          Failure.serverError(
            message:
                'Client Error: Could not determine MIME type for file: $fileName',
          ),
        );
      }

      // 1. Get a pre-signed URL from your backend using POST
      final presignedInfoEither = await _apiClient
          .post<PresignedUploadInfoModel>(
            '/uploads/generate-presigned-url', // Corrected endpoint
            data: {
              // POST request body
              'fileName': fileName,
              'fileType': fileType,
            },
            dataFromJson:
                (json) => PresignedUploadInfoModel.fromJson(
                  json as Map<String, dynamic>,
                ),
          );

      return await presignedInfoEither.fold((failure) => Left(failure), (
        presignedInfo,
      ) async {
        // 2. Upload the file to S3 using the pre-signed URL
        final fileStream = imageFile.openRead();
        final fileLength = await imageFile.length();

        final uploadResultEither = await _apiClient.rawPutToUrl(
          presignedInfo.presignedUrl,
          dataStream: fileStream,
          contentLength: fileLength,
          contentType: fileType,
          includeAuthHeader: false,
        );

        return await uploadResultEither.fold((failure) => Left(failure), (
          _,
        ) async {
          // 3. File uploaded successfully, now create the message record
          //    with s3Key.
          final MessageInputModel finalMessagePayload = MessageInputModel(
            senderId: messagePayload.senderId,
            type: 'image',
            content:
                fileName, // local filename, potentially for optimistic UI or backend reference
            s3Key: presignedInfo.fileKey, // Send fileKey as s3Key
          );

          return _apiClient.post<MessageApiModel>(
            '/conversations/$conversationId/messages',
            data: finalMessagePayload.toJson(),
            dataFromJson: (json) {
              if (json is Map<String, dynamic> && json.containsKey('message')) {
                return MessageApiModel.fromJson(
                  json['message'] as Map<String, dynamic>,
                );
              } else if (json is Map<String, dynamic>) {
                return MessageApiModel.fromJson(json);
              }
              throw Exception(
                'DataFromJSon failed to parse for createMessage after image upload',
              );
            },
          );
        });
      });
    } else {
      // For non-image messages or if content is empty for an image (should not happen with current logic)
      return _apiClient.post<MessageApiModel>(
        '/conversations/$conversationId/messages',
        data: messagePayload.toJson(),
        dataFromJson: (json) {
          if (json is Map<String, dynamic> && json.containsKey('message')) {
            return MessageApiModel.fromJson(
              json['message'] as Map<String, dynamic>,
            );
          } else if (json is Map<String, dynamic>) {
            return MessageApiModel.fromJson(json);
          }
          throw Exception(
            'DataFromJSon failed to parse for createMessage (non-image)',
          );
        },
      );
    }
  }

  @override
  Future<Either<Failure, ReactionUpdateResponseApiModel>>
  updateMessageReaction({
    required String messageId,
    required String reactionType,
    required String action,
  }) async {
    return _apiClient.post<ReactionUpdateResponseApiModel>(
      '/messages/$messageId/reactions',
      data: {'reactionType': reactionType, 'action': action},
      dataFromJson: (json) {
        if (json is Map<String, dynamic>) {
          return ReactionUpdateResponseApiModel.fromJson(json);
        }
        throw Exception(
          'DataFromJSon failed to parse for updateMessageReaction',
        );
      },
    );
  }

  // This method was part of the old ChatDataSourceService, ensure it's handled or removed if not needed.
  // For now, providing a stub implementation if it's still in ChatDataSourceService interface.
  // If createConversation is NOT in the ChatDataSourceService interface defined in chat_data_source_service.dart, this can be removed.
  @override
  Future<Either<Failure, ConversationModel>> createConversation({
    required String name,
    required List<String> memberIds,
  }) async {
    return _apiClient.post<ConversationModel>(
      '/conversations',
      data: {'title': name, 'participantIds': memberIds},
      dataFromJson: (json) {
        Map<String, dynamic> conversationJson;
        if (json is Map<String, dynamic> && json.containsKey('conversation')) {
          conversationJson = json['conversation'] as Map<String, dynamic>;
        } else if (json is Map<String, dynamic>) {
          conversationJson = json;
        } else {
          throw Exception(
            'Invalid data structure for createConversation response.',
          );
        }
        return ConversationModel.fromJson(conversationJson);
      },
    );
  }
}
