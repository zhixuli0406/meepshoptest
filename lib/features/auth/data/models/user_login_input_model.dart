import 'package:freezed_annotation/freezed_annotation.dart';

part 'user_login_input_model.freezed.dart';
part 'user_login_input_model.g.dart';

@freezed
sealed class UserLoginInputModel with _$UserLoginInputModel {
  const factory UserLoginInputModel({
    required String username,
    required String password,
  }) = _UserLoginInputModel;

  factory UserLoginInputModel.fromJson(Map<String, dynamic> json) =>
      _$UserLoginInputModelFromJson(json);
}
