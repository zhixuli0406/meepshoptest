import 'dart:typed_data';
import 'package:fpdart/fpdart.dart';
import 'package:injectable/injectable.dart';
import 'package:meepshoptest/core/errors/failure.dart';
import 'package:meepshoptest/core/usecase/usecase.dart';
import 'package:meepshoptest/features/upload/domain/repositories/upload_repository.dart';

class UploadFileParams {
  final String presignedUrl;
  final List<int> fileBytes;
  final String contentType;

  UploadFileParams({
    required this.presignedUrl,
    required this.fileBytes,
    required this.contentType,
  });
}

@lazySingleton
class UploadFileUseCase implements UseCase<Unit, UploadFileParams> {
  final UploadRepository _uploadRepository;

  UploadFileUseCase(this._uploadRepository);

  @override
  Future<Either<Failure, Unit>> call(UploadFileParams params) async {
    return _uploadRepository
        .uploadFileToS3(
          presignedUrl: params.presignedUrl,
          fileBytes: params.fileBytes,
          contentType: params.contentType,
        )
        .run(); // .run() to execute the TaskEither
  }
}
