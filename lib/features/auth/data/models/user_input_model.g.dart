// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_input_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$UserInputModelImpl _$$UserInputModelImplFromJson(Map<String, dynamic> json) =>
    _$UserInputModelImpl(
      username: json['username'] as String,
      password: json['password'] as String,
      passwordConfirm: json['passwordConfirm'] as String,
      avatar: json['avatar'] as String?,
      legacyUserId: (json['legacyUserId'] as num?)?.toInt(),
    );

Map<String, dynamic> _$$UserInputModelImplToJson(
        _$UserInputModelImpl instance) =>
    <String, dynamic>{
      'username': instance.username,
      'password': instance.password,
      'passwordConfirm': instance.passwordConfirm,
      'avatar': instance.avatar,
      'legacyUserId': instance.legacyUserId,
    };
