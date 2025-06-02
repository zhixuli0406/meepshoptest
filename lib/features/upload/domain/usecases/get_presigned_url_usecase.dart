import 'package:fpdart/fpdart.dart';
import 'package:injectable/injectable.dart';
import 'package:meepshoptest/core/errors/failure.dart';
import 'package:meepshoptest/core/usecase/usecase.dart';
import 'package:meepshoptest/features/upload/domain/entities/presigned_url_response_entity.dart';
import 'package:meepshoptest/features/upload/domain/repositories/upload_repository.dart';

class GetPresignedUrlParams {
  final String fileName;
  final String fileType;

  GetPresignedUrlParams({required this.fileName, required this.fileType});
}

@lazySingleton
class GetPresignedUrlUseCase
    implements UseCase<PresignedUrlResponseEntity, GetPresignedUrlParams> {
  final UploadRepository _uploadRepository;

  GetPresignedUrlUseCase(this._uploadRepository);

  @override
  Future<Either<Failure, PresignedUrlResponseEntity>> call(
    GetPresignedUrlParams params,
  ) async {
    return _uploadRepository
        .getPresignedUrl(fileName: params.fileName, fileType: params.fileType)
        .run(); // .run() to execute the TaskEither
  }
}
