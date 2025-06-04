import 'package:freezed_annotation/freezed_annotation.dart';

part 'presigned_upload_info_model.freezed.dart';
part 'presigned_upload_info_model.g.dart';

@freezed
class PresignedUploadInfoModel with _$PresignedUploadInfoModel {
  @JsonSerializable(
    fieldRename: FieldRename.none,
  ) // Assuming backend uses camelCase or exact names
  const factory PresignedUploadInfoModel({
    required String presignedUrl,
    required String fileKey,
    String? publicUrl,
  }) = _PresignedUploadInfoModel;

  factory PresignedUploadInfoModel.fromJson(Map<String, dynamic> json) =>
      _$PresignedUploadInfoModelFromJson(json);
}
