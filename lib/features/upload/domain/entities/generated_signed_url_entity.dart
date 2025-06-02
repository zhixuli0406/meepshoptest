import 'package:freezed_annotation/freezed_annotation.dart';

part 'generated_signed_url_entity.freezed.dart';

@freezed
sealed class GeneratedSignedUrlEntity with _$GeneratedSignedUrlEntity {
  const factory GeneratedSignedUrlEntity({
    required String signedUrl,
    required String objectKey,
    required String fileUrl, // This is the public URL after upload
  }) = _GeneratedSignedUrlEntity;
}
