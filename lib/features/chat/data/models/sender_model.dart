import 'package:freezed_annotation/freezed_annotation.dart';

part 'sender_model.freezed.dart';
part 'sender_model.g.dart';

@freezed
class SenderModel with _$SenderModel {
  const factory SenderModel({
    @JsonKey(name: '_id') required String userId,
    @JsonKey(name: 'username') required String user,
    required String avatar,
    int? legacyUserId,
  }) = _SenderModel;

  factory SenderModel.fromJson(Map<String, dynamic> json) =>
      _$SenderModelFromJson(json);
}
