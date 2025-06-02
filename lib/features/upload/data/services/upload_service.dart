import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:meepshoptest/core/errors/failure.dart';
import 'package:meepshoptest/features/upload/data/models/presigned_url_response_model.dart';
import 'package:meepshoptest/core/network/api_client.dart';

@lazySingleton
class UploadService {
  final ApiClient _apiClient;

  UploadService(this._apiClient);

  Future<PresignedUrlResponseModel> getPresignedUrl({
    required String fileName,
    required String fileType,
  }) async {
    print(
      '[UploadService-GetPresignedUrl] Requesting presigned URL for fileName: $fileName, fileType: $fileType',
    );
    try {
      final result = await _apiClient.get<PresignedUrlResponseModel>(
        '/upload/presigned-url',
        queryParameters: {'fileName': fileName, 'fileType': fileType},
        dataFromJson:
            (json) => PresignedUrlResponseModel.fromJson(
              json as Map<String, dynamic>,
            ),
      );

      return result.fold(
        (failure) {
          print(
            '[UploadService-GetPresignedUrl] Error from ApiClient: ${failure.toString()}',
          );
          if (failure is ServerError) throw failure;
          if (failure is NetworkError)
            throw Failure.networkError(
              message:
                  failure.message ?? "Network error during presigned URL fetch",
            );
          throw Failure.serverError(
            message: 'Failed to get presigned URL: ${failure.toString()}',
          );
        },
        (presignedUrlResponseModel) {
          print(
            '[UploadService-GetPresignedUrl] Success from ApiClient. Response: ${presignedUrlResponseModel.toJson()}',
          );
          return presignedUrlResponseModel;
        },
      );
    } on Failure catch (f) {
      print("[UploadService-GetPresignedUrl] Caught Failure: ${f.toString()}");
      rethrow;
    } catch (e, s) {
      print(
        "[UploadService-GetPresignedUrl] Unexpected generic error: ${e.toString()}",
      );
      print("[UploadService-GetPresignedUrl] Stack trace: $s");
      throw Failure.serverError(
        message:
            'An unexpected error occurred while getting presigned URL: ${e.toString()}',
      );
    }
  }

  Future<void> uploadFileToS3({
    required String presignedUrl,
    required List<int> fileBytes,
    required String contentType,
  }) async {
    try {
      print(
        '[UploadService-UploadToS3] Uploading to S3. URL: $presignedUrl, ContentType: $contentType, Bytes: ${fileBytes.length}',
      );
      final result = await _apiClient.rawPutToUrl(
        presignedUrl,
        dataStream: Stream.fromIterable(fileBytes.map((e) => [e])),
        contentLength: fileBytes.length,
        contentType: contentType,
        includeAuthHeader: false,
      );

      result.fold(
        (failure) {
          print(
            "[UploadService-UploadToS3] Error from rawPutToUrl: ${failure.toString()}",
          );
          if (failure is ServerError && failure.details != null) {
            print(
              "[UploadService-UploadToS3] ServerError details: ${failure.details}",
            );
          } else if (failure is ValidationError && failure.details != null) {
            print(
              "[UploadService-UploadToS3] ValidationError details: ${failure.details}",
            );
          }
          throw failure;
        },
        (_) {
          print(
            "[UploadService-UploadToS3] File uploaded successfully via rawPutToUrl.",
          );
        },
      );
    } on Failure catch (f) {
      print("[UploadService-UploadToS3] Caught Failure: ${f.toString()}");
      if (f is ServerError && f.details != null) {
        print(
          "[UploadService-UploadToS3] Caught ServerError details: ${f.details}",
        );
      } else if (f is ValidationError && f.details != null) {
        print(
          "[UploadService-UploadToS3] Caught ValidationError details: ${f.details}",
        );
      }
      rethrow;
    } catch (e, s) {
      print("[UploadService-UploadToS3] Unexpected error: ${e.toString()}");
      print("[UploadService-UploadToS3] StackTrace: $s");
      throw Failure.serverError(
        message:
            'An unexpected error occurred during S3 upload: ${e.toString()}',
      );
    }
  }
}
