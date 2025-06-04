// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'presigned_upload_info_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$PresignedUploadInfoModelImpl _$$PresignedUploadInfoModelImplFromJson(
        Map<String, dynamic> json) =>
    _$PresignedUploadInfoModelImpl(
      presignedUrl: json['presignedUrl'] as String,
      fileKey: json['fileKey'] as String,
      publicUrl: json['publicUrl'] as String?,
    );

Map<String, dynamic> _$$PresignedUploadInfoModelImplToJson(
        _$PresignedUploadInfoModelImpl instance) =>
    <String, dynamic>{
      'presignedUrl': instance.presignedUrl,
      'fileKey': instance.fileKey,
      'publicUrl': instance.publicUrl,
    };
