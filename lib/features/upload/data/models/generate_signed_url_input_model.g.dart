// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'generate_signed_url_input_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$GenerateSignedUrlInputModelImpl _$$GenerateSignedUrlInputModelImplFromJson(
        Map<String, dynamic> json) =>
    _$GenerateSignedUrlInputModelImpl(
      fileName: json['file_name'] as String,
      fileType: json['file_type'] as String,
      directory: json['directory'] as String?,
    );

Map<String, dynamic> _$$GenerateSignedUrlInputModelImplToJson(
        _$GenerateSignedUrlInputModelImpl instance) =>
    <String, dynamic>{
      'file_name': instance.fileName,
      'file_type': instance.fileType,
      'directory': instance.directory,
    };
