import 'package:fpdart/fpdart.dart';
import 'package:injectable/injectable.dart';
import 'package:meepshoptest/core/errors/failure.dart';
import 'package:meepshoptest/features/upload/data/services/upload_service.dart';
import 'package:meepshoptest/features/upload/domain/entities/presigned_url_response_entity.dart';
import 'package:meepshoptest/features/upload/domain/repositories/upload_repository.dart';
import 'package:meepshoptest/features/upload/data/models/presigned_url_response_model.dart';

@LazySingleton(as: UploadRepository)
class UploadRepositoryImpl implements UploadRepository {
  final UploadService _uploadService;

  UploadRepositoryImpl(this._uploadService);

  @override
  TaskEither<Failure, PresignedUrlResponseEntity> getPresignedUrl({
    required String fileName,
    required String fileType,
  }) {
    return TaskEither.tryCatch(
      () async {
        final model = await _uploadService.getPresignedUrl(
          fileName: fileName,
          fileType: fileType,
        );
        return model.toEntity();
      },
      (error, stackTrace) {
        if (error is Failure) {
          return error;
        }
        print(
          "[UploadRepositoryImpl-GetPresignedUrl] Error: $error, StackTrace: $stackTrace",
        );
        return UnknownError(
          message: 'Failed to get presigned URL: ${error.toString()}',
        );
      },
    );
  }

  @override
  TaskEither<Failure, Unit> uploadFileToS3({
    required String presignedUrl,
    required List<int> fileBytes,
    required String contentType,
  }) {
    return TaskEither.tryCatch(
      () async {
        await _uploadService.uploadFileToS3(
          presignedUrl: presignedUrl,
          fileBytes: fileBytes,
          contentType: contentType,
        );
        return unit; // Represents void success
      },
      (error, stackTrace) {
        if (error is Failure) {
          return error;
        }
        print(
          "[UploadRepositoryImpl-UploadToS3] Error: $error, StackTrace: $stackTrace",
        );
        return UnknownError(
          message: 'Failed to upload file to S3: ${error.toString()}',
        );
      },
    );
  }
}
