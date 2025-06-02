import 'package:freezed_annotation/freezed_annotation.dart';

part 'user_update_input_model.freezed.dart';
part 'user_update_input_model.g.dart';

@freezed
class UserUpdateInputModel with _$UserUpdateInputModel {
  const factory UserUpdateInputModel({String? username, String? avatar}) =
      _UserUpdateInputModel;

  factory UserUpdateInputModel.fromJson(Map<String, dynamic> json) =>
      _$UserUpdateInputModelFromJson(json);
}
