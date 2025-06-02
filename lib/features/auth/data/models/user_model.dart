import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:meepshoptest/features/auth/domain/entities/user_entity.dart';

part 'user_model.freezed.dart';
part 'user_model.g.dart';

@freezed
sealed class UserModel with _$UserModel {
  const factory UserModel({
    @JsonKey(name: '_id') required String id,
    required String username,
    String? avatar,
    int? legacyUserId,
    DateTime? createdAt,
    DateTime? updatedAt,
  }) = _UserModel; // Standard freezed implementation class name

  factory UserModel.fromJson(Map<String, dynamic> json) =>
      _$$UserModelImplFromJson(
        json,
      ); // Attempt to call the function name found in .g.dart

  // Factory to convert UserEntity to UserModel
  factory UserModel.fromEntity(UserEntity entity) {
    return UserModel(
      id: entity.id,
      username: entity.username,
      avatar: entity.avatarUrl,
      legacyUserId: entity.legacyUserId,
      createdAt: entity.createdAt,
      updatedAt: entity.updatedAt,
    );
  }

  // toEntity method removed from here
}

// Extension method to provide toEntity functionality
extension UserModelX on UserModel {
  UserEntity toEntity() {
    return UserEntity(
      id: id,
      username: username,
      avatarUrl: avatar,
      legacyUserId: legacyUserId,
      createdAt: createdAt,
      updatedAt: updatedAt,
    );
  }
}
