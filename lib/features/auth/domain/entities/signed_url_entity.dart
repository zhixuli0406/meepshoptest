import 'package:freezed_annotation/freezed_annotation.dart';

part 'signed_url_entity.freezed.dart';

@freezed
sealed class SignedUrlEntity with _$SignedUrlEntity {
  const factory SignedUrlEntity({
    required String signedUrl,
    required String objectKey,
    required String fileUrl,
  }) = _SignedUrlEntity;
}
