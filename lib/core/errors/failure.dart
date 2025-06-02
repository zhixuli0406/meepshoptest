import 'package:freezed_annotation/freezed_annotation.dart';

part 'failure.freezed.dart';
part 'failure.g.dart';

@freezed
sealed class Failure with _$Failure {
  const factory Failure.serverError({
    String? message,
    String? errorCode,
    List<ErrorDetail>? details,
    int? statusCode,
  }) = ServerError;

  const factory Failure.networkError({String? message}) = NetworkError;
  const factory Failure.unauthorized({String? message}) = UnauthorizedFailure;
  const factory Failure.notFound({String? message}) = NotFoundFailure;
  const factory Failure.conflict({String? message, String? errorCode}) =
      ConflictError;
  const factory Failure.validationError({
    String? message,
    String? errorCode,
    List<ErrorDetail>? details,
  }) = ValidationError;
  const factory Failure.forbidden({String? message}) = ForbiddenFailure;
  const factory Failure.localCacheError({String? message}) = LocalCacheError;
  const factory Failure.unknownError({
    String? message,
    Object? error,
    StackTrace? stackTrace,
  }) = UnknownError;
  const factory Failure.multiStageError({
    String? message,
    required Failure originalFailure,
  }) = MultiStageError;
}

@freezed
class ErrorDetail with _$ErrorDetail {
  const factory ErrorDetail({String? field, String? message}) = _ErrorDetail;

  factory ErrorDetail.fromJson(Map<String, dynamic> json) =>
      _$ErrorDetailFromJson(json);
}
