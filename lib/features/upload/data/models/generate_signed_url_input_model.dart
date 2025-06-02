import 'package:freezed_annotation/freezed_annotation.dart';

part 'generate_signed_url_input_model.freezed.dart';
part 'generate_signed_url_input_model.g.dart';

@freezed
class GenerateSignedUrlInputModel with _$GenerateSignedUrlInputModel {
  @JsonSerializable(fieldRename: FieldRename.snake, explicitToJson: true)
  const factory GenerateSignedUrlInputModel({
    required String fileName,
    required String fileType,
    String? directory, // e.g., 'user-uploads/userId'
  }) = _GenerateSignedUrlInputModel;

  factory GenerateSignedUrlInputModel.fromJson(Map<String, dynamic> json) =>
      _$GenerateSignedUrlInputModelFromJson(json);
}
