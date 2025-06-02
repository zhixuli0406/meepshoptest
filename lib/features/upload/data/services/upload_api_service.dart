import 'package:fpdart/fpdart.dart';
import 'package:injectable/injectable.dart';
import 'package:meepshoptest/core/errors/failure.dart';
import 'package:meepshoptest/core/network/api_client.dart';
// import 'package:meepshoptest/core/network/api_response.dart';
import 'package:meepshoptest/features/upload/data/models/generate_signed_url_input_model.dart';
import 'package:meepshoptest/features/upload/data/models/generated_signed_url_data_api_model.dart';

abstract class UploadApiService {
  Future<Either<Failure, GeneratedSignedUrlDataApiModel>> generateSignedUrl(
    GenerateSignedUrlInputModel input,
  );
}

@LazySingleton(as: UploadApiService)
class UploadApiServiceImpl implements UploadApiService {
  final ApiClient _apiClient;

  UploadApiServiceImpl(this._apiClient);

  @override
  Future<Either<Failure, GeneratedSignedUrlDataApiModel>> generateSignedUrl(
    GenerateSignedUrlInputModel input,
  ) {
    return _apiClient.post<GeneratedSignedUrlDataApiModel>(
      '/uploads/generate-signed-url',
      data: input.toJson(),
      dataFromJson:
          (json) => GeneratedSignedUrlDataApiModel.fromJson(
            json as Map<String, dynamic>,
          ),
    );
  }
}
