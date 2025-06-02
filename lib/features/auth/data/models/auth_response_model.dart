import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:meepshoptest/features/auth/data/models/user_model.dart'; // Assuming UserModel is the equivalent of UserResponse
import 'package:meepshoptest/features/auth/domain/entities/auth_response_entity.dart';
// import 'package:meepshoptest/features/auth/domain/entities/auth_response_data_entity.dart'; // Removed, as it's part of auth_response_entity.dart
import 'package:meepshoptest/features/auth/domain/entities/user_entity.dart'; // Required for user.toEntity()

part 'auth_response_model.freezed.dart';
part 'auth_response_model.g.dart';

@freezed
sealed class AuthResponseDataModel with _$AuthResponseDataModel {
  const factory AuthResponseDataModel({required UserModel user}) =
      _AuthResponseDataModel;

  factory AuthResponseDataModel.fromJson(Map<String, dynamic> json) =>
      _$AuthResponseDataModelFromJson(json);
}

@freezed
sealed class AuthResponseModel with _$AuthResponseModel {
  const factory AuthResponseModel({
    required String status,
    required String token,
    required AuthResponseDataModel data,
  }) = _AuthResponseModel;

  factory AuthResponseModel.fromJson(Map<String, dynamic> json) =>
      _$AuthResponseModelFromJson(json);
}

// Extensions for toEntity conversion
extension AuthResponseDataModelX on AuthResponseDataModel {
  AuthResponseDataEntity toEntity() {
    return AuthResponseDataEntity(
      user: user.toEntity(), // Assumes UserModel has a toEntity() extension
    );
  }
}

extension AuthResponseModelX on AuthResponseModel {
  AuthResponseEntity toEntity() {
    return AuthResponseEntity(
      status: status,
      token: token,
      data: data.toEntity(), // Calls the extension on AuthResponseDataModel
    );
  }
}
