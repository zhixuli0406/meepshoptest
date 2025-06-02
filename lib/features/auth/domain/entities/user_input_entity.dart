import 'package:freezed_annotation/freezed_annotation.dart';

part 'user_input_entity.freezed.dart';

@freezed
sealed class UserInputEntity with _$UserInputEntity {
  const factory UserInputEntity({
    required String username,
    required String password,
    required String passwordConfirm,
    String? avatar,
    int? legacyUserId,
  }) = _UserInputEntity;
}
