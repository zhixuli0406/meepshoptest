// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'auth_response_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$AuthResponseDataModelImpl _$$AuthResponseDataModelImplFromJson(
        Map<String, dynamic> json) =>
    _$AuthResponseDataModelImpl(
      user: UserModel.fromJson(json['user'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$AuthResponseDataModelImplToJson(
        _$AuthResponseDataModelImpl instance) =>
    <String, dynamic>{
      'user': instance.user,
    };

_$AuthResponseModelImpl _$$AuthResponseModelImplFromJson(
        Map<String, dynamic> json) =>
    _$AuthResponseModelImpl(
      status: json['status'] as String,
      token: json['token'] as String,
      data:
          AuthResponseDataModel.fromJson(json['data'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$AuthResponseModelImplToJson(
        _$AuthResponseModelImpl instance) =>
    <String, dynamic>{
      'status': instance.status,
      'token': instance.token,
      'data': instance.data,
    };
