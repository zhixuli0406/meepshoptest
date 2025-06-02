// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'api_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$StatusResponseImpl _$$StatusResponseImplFromJson(Map<String, dynamic> json) =>
    _$StatusResponseImpl(
      status: json['status'] as String,
      message: json['message'] as String?,
    );

Map<String, dynamic> _$$StatusResponseImplToJson(
        _$StatusResponseImpl instance) =>
    <String, dynamic>{
      'status': instance.status,
      'message': instance.message,
    };

_$ApiResponseImpl<T> _$$ApiResponseImplFromJson<T>(
  Map<String, dynamic> json,
  T Function(Object? json) fromJsonT,
) =>
    _$ApiResponseImpl<T>(
      status: json['status'] as String,
      message: json['message'] as String?,
      data: _$nullableGenericFromJson(json['data'], fromJsonT),
      errorCode: json['errorCode'] as String?,
      details: (json['details'] as List<dynamic>?)
          ?.map((e) => ErrorDetailResponse.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$ApiResponseImplToJson<T>(
  _$ApiResponseImpl<T> instance,
  Object? Function(T value) toJsonT,
) =>
    <String, dynamic>{
      'status': instance.status,
      'message': instance.message,
      'data': _$nullableGenericToJson(instance.data, toJsonT),
      'errorCode': instance.errorCode,
      'details': instance.details,
    };

T? _$nullableGenericFromJson<T>(
  Object? input,
  T Function(Object? json) fromJson,
) =>
    input == null ? null : fromJson(input);

Object? _$nullableGenericToJson<T>(
  T? input,
  Object? Function(T value) toJson,
) =>
    input == null ? null : toJson(input);

_$ErrorDetailResponseImpl _$$ErrorDetailResponseImplFromJson(
        Map<String, dynamic> json) =>
    _$ErrorDetailResponseImpl(
      field: json['field'] as String?,
      message: json['message'] as String?,
    );

Map<String, dynamic> _$$ErrorDetailResponseImplToJson(
        _$ErrorDetailResponseImpl instance) =>
    <String, dynamic>{
      'field': instance.field,
      'message': instance.message,
    };
