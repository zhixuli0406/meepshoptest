import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:meepshoptest/features/upload/domain/entities/presigned_url_response_entity.dart';

part 'presigned_url_response_model.freezed.dart';
part 'presigned_url_response_model.g.dart';

@freezed
sealed class PresignedUrlResponseModel with _$PresignedUrlResponseModel {
  const factory PresignedUrlResponseModel({
    required String presignedUrl,
    required String fileKey,
    required String publicUrl,
  }) = _PresignedUrlResponseModel;

  factory PresignedUrlResponseModel.fromJson(Map<String, dynamic> json) =>
      _$PresignedUrlResponseModelFromJson(json);
}

// Extension to convert Model to Entity
extension PresignedUrlResponseModelX on PresignedUrlResponseModel {
  PresignedUrlResponseEntity toEntity() {
    return PresignedUrlResponseEntity(
      presignedUrl: presignedUrl,
      fileKey: fileKey,
      publicUrl: publicUrl,
    );
  }
}
