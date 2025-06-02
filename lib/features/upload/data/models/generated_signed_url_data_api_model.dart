import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:meepshoptest/features/upload/domain/entities/generated_signed_url_entity.dart';

part 'generated_signed_url_data_api_model.freezed.dart';
part 'generated_signed_url_data_api_model.g.dart';

@freezed
class GeneratedSignedUrlDataApiModel with _$GeneratedSignedUrlDataApiModel {
  @JsonSerializable(fieldRename: FieldRename.snake)
  const factory GeneratedSignedUrlDataApiModel({
    required String signedUrl,
    required String objectKey,
    required String fileUrl,
  }) = _GeneratedSignedUrlDataApiModel;

  factory GeneratedSignedUrlDataApiModel.fromJson(Map<String, dynamic> json) =>
      _$GeneratedSignedUrlDataApiModelFromJson(json);
}

extension GeneratedSignedUrlDataApiModelX on GeneratedSignedUrlDataApiModel {
  GeneratedSignedUrlEntity toEntity() {
    return GeneratedSignedUrlEntity(
      signedUrl: signedUrl,
      objectKey: objectKey,
      fileUrl: fileUrl,
    );
  }
}
