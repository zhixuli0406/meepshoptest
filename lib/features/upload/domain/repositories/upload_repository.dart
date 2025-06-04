// For Uint8List if we use it, or List<int>
import 'package:fpdart/fpdart.dart';
import 'package:meepshoptest/core/errors/failure.dart';
import 'package:meepshoptest/features/upload/domain/entities/presigned_url_response_entity.dart';

abstract class UploadRepository {
  TaskEither<Failure, PresignedUrlResponseEntity> getPresignedUrl({
    required String fileName,
    required String fileType,
  });

  TaskEither<Failure, Unit> uploadFileToS3({
    required String presignedUrl,
    required List<int>
    fileBytes, // Using List<int> for broader compatibility (e.g. File.readAsBytesSync() returns Uint8List which is a List<int>)
    required String contentType,
  });
}
