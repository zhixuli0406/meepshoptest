import 'package:freezed_annotation/freezed_annotation.dart';

part 'user_login_input_entity.freezed.dart';

@freezed
sealed class UserLoginInputEntity with _$UserLoginInputEntity {
  const factory UserLoginInputEntity({
    required String username,
    required String password,
  }) = _UserLoginInputEntity;
}
