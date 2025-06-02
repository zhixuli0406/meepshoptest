import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:meepshoptest/features/auth/domain/entities/user_entity.dart';

part 'auth_response_entity.freezed.dart';

@freezed
sealed class AuthResponseDataEntity with _$AuthResponseDataEntity {
  const factory AuthResponseDataEntity({required UserEntity user}) =
      _AuthResponseDataEntity;
}

@freezed
sealed class AuthResponseEntity with _$AuthResponseEntity {
  const factory AuthResponseEntity({
    required String
    status, // Or consider if domain layer needs 'status' string, often just token and user entity are enough
    required String token,
    required AuthResponseDataEntity data,
  }) = _AuthResponseEntity;
}
