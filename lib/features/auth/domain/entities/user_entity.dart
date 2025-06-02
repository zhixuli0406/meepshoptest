import 'package:freezed_annotation/freezed_annotation.dart';

part 'user_entity.freezed.dart';

@freezed
sealed class UserEntity with _$UserEntity {
  const factory UserEntity({
    required String id,
    required String username,
    String? avatarUrl,
    int? legacyUserId,
    DateTime? createdAt,
    DateTime? updatedAt,
  }) = _UserEntity;
}
