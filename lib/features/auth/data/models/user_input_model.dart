import 'package:freezed_annotation/freezed_annotation.dart';

part 'user_input_model.freezed.dart';
part 'user_input_model.g.dart';

@freezed
sealed class UserInputModel with _$UserInputModel {
  const factory UserInputModel({
    required String username,
    required String password,
    required String passwordConfirm,
    String? avatar, // This will be the S3 public URL for the avatar
    int? legacyUserId,
  }) = _UserInputModel;

  factory UserInputModel.fromJson(Map<String, dynamic> json) =>
      _$UserInputModelFromJson(json);
}
