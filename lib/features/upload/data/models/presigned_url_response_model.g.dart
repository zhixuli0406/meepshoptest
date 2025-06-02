// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'presigned_url_response_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$PresignedUrlResponseModelImpl _$$PresignedUrlResponseModelImplFromJson(
        Map<String, dynamic> json) =>
    _$PresignedUrlResponseModelImpl(
      presignedUrl: json['presignedUrl'] as String,
      fileKey: json['fileKey'] as String,
      publicUrl: json['publicUrl'] as String,
    );

Map<String, dynamic> _$$PresignedUrlResponseModelImplToJson(
        _$PresignedUrlResponseModelImpl instance) =>
    <String, dynamic>{
      'presignedUrl': instance.presignedUrl,
      'fileKey': instance.fileKey,
      'publicUrl': instance.publicUrl,
    };
