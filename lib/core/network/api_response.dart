import 'package:freezed_annotation/freezed_annotation.dart';

part 'api_response.freezed.dart';
part 'api_response.g.dart';

@freezed
class StatusResponse with _$StatusResponse {
  const factory StatusResponse({required String status, String? message}) =
      _StatusResponse;

  factory StatusResponse.fromJson(Map<String, dynamic> json) =>
      _$StatusResponseFromJson(json);
}

@Freezed(genericArgumentFactories: true)
class ApiResponse<T> with _$ApiResponse<T> {
  const factory ApiResponse({
    required String status,
    String? message,
    T? data,
    String? errorCode, // For ErrorResponse compatibility
    List<ErrorDetailResponse>? details, // For ErrorResponse compatibility
  }) = _ApiResponse<T>;

  factory ApiResponse.fromJson(
    Map<String, dynamic> json,
    T Function(Object? json) fromJsonT,
  ) => _$ApiResponseFromJson<T>(json, fromJsonT);
}

// This mirrors the ErrorDetail in swagger but is specific to the response parsing
// It can be mapped to core/errors/failure.dart ErrorDetail
@freezed
class ErrorDetailResponse with _$ErrorDetailResponse {
  const factory ErrorDetailResponse({String? field, String? message}) =
      _ErrorDetailResponse;

  factory ErrorDetailResponse.fromJson(Map<String, dynamic> json) =>
      _$ErrorDetailResponseFromJson(json);
}

enum ApiStatus {
  success,
  fail,
  error;

  static ApiStatus fromString(String status) {
    switch (status) {
      case 'success':
        return ApiStatus.success;
      case 'fail':
        return ApiStatus.fail;
      case 'error':
        return ApiStatus.error;
      default:
        // Consider logging this unexpected status or throwing a specific error
        return ApiStatus.error; // Default to error if status is unknown
    }
  }
}
