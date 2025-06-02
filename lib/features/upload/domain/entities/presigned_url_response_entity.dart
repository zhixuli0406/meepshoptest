import 'package:freezed_annotation/freezed_annotation.dart';

part 'presigned_url_response_entity.freezed.dart';

@freezed
sealed class PresignedUrlResponseEntity with _$PresignedUrlResponseEntity {
  const factory PresignedUrlResponseEntity({
    required String presignedUrl,
    required String fileKey,
    required String publicUrl,
  }) = _PresignedUrlResponseEntity;
}
