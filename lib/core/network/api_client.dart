import 'dart:io'; // For SocketException
import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:meepshoptest/core/errors/failure.dart';
import 'package:fpdart/fpdart.dart';
import 'package:meepshoptest/features/auth/data/repositories/auth_repository_impl.dart'; // For TokenLocalService
import 'package:meepshoptest/injectable.dart'; // For getIt instance

// Key for the extra option to control auth header inclusion in requests.
const String kIncludeAuthHeaderOption = 'includeAuthHeader';

// Standardized API response structure model.
class ApiResponse<T> {
  final String status;
  final T? data;
  final String? message;
  final String? errorCode;
  final List<dynamic>? details;

  ApiResponse({
    required this.status,
    this.data,
    this.message,
    this.errorCode,
    this.details,
  });

  factory ApiResponse.fromJson(
    Map<String, dynamic> json,
    T Function(dynamic json)? dataFromJson,
  ) {
    return ApiResponse<T>(
      status: json['status'] as String,
      data:
          json['data'] != null && dataFromJson != null
              ? dataFromJson(json['data'])
              : null,
      message: json['message'] as String?,
      errorCode: json['errorCode'] as String?,
      details: json['details'] as List<dynamic>?,
    );
  }
}

@lazySingleton
class ApiClient {
  late Dio _dio;
  final String baseUrl = 'https://meeptestapi.zhixu-li.com/api/v1';

  ApiClient() {
    final options = BaseOptions(
      baseUrl: baseUrl,
      connectTimeout: const Duration(seconds: 15),
      receiveTimeout: const Duration(seconds: 15),
      headers: {
        'Content-Type': 'application/json',
        'Accept': 'application/json',
      },
    );
    _dio = Dio(options);

    _dio.interceptors.add(
      LogInterceptor(
        requestBody: true,
        responseBody: true,
        responseHeader: false,
        requestHeader: true,
      ),
    );

    _dio.interceptors.add(
      InterceptorsWrapper(
        onRequest: (options, handler) async {
          final bool includeAuth =
              options.extra[kIncludeAuthHeaderOption] as bool? ?? true;

          if (includeAuth) {
            final tokenLocalService = getIt<TokenLocalService>();
            final token = await tokenLocalService.getToken();
            if (token != null && token.isNotEmpty) {
              options.headers['Authorization'] = 'Bearer $token';
            }
          }
          return handler.next(
            options,
          ); // IMPORTANT: Ensures the request proceeds.
        },
        onError: (DioException e, handler) async {
          if (e.response?.statusCode == 401) {
            print('[ApiClient] Unauthorized error: ${e.message}');
            // Further actions like token refresh or logout could be handled here.
          }
          return handler.next(e); // IMPORTANT: Ensures the error is propagated.
        },
      ),
    );
  }

  Future<Either<Failure, T>> _request<T>(
    Future<Response<dynamic>> Function() requestCall, {
    required T Function(dynamic json) dataFromJson,
  }) async {
    try {
      final response = await requestCall();

      if (response.data is! Map<String, dynamic>) {
        return Left(
          Failure.serverError(
            message: 'Invalid response format: Expected a JSON object.',
          ),
        );
      }

      final apiResponse = ApiResponse.fromJson(
        response.data as Map<String, dynamic>,
        dataFromJson,
      );

      if (apiResponse.status == 'success') {
        if (apiResponse.data != null) {
          return Right(apiResponse.data as T);
        } else {
          return Left(
            Failure.serverError(
              message: 'API reported success but no data was received.',
            ),
          );
        }
      } else {
        String errorMessage = apiResponse.message ?? 'Unknown API error';
        if (apiResponse.errorCode != null) {
          errorMessage += ' (Code: ${apiResponse.errorCode})';
        }
        if (apiResponse.details != null && apiResponse.details!.isNotEmpty) {
          final firstDetail = apiResponse.details!.first;
          if (firstDetail is Map && firstDetail.containsKey('message')) {
            errorMessage += '\nDetails: ${firstDetail['message']}';
          }
        }

        if (apiResponse.errorCode == 'VALIDATION_ERROR') {
          return Left(Failure.validationError(message: errorMessage));
        } else if (apiResponse.errorCode == 'NOT_FOUND' ||
            apiResponse.errorCode == 'CONVERSATION_NOT_FOUND' ||
            apiResponse.errorCode == 'USER_NOT_FOUND') {
          return Left(Failure.notFound(message: errorMessage));
        } else if (apiResponse.errorCode == 'UNAUTHORIZED') {
          return Left(Failure.unauthorized(message: errorMessage));
        }
        return Left(Failure.serverError(message: errorMessage));
      }
    } on DioException catch (e) {
      if (e.type == DioExceptionType.connectionTimeout ||
          e.type == DioExceptionType.sendTimeout ||
          e.type == DioExceptionType.receiveTimeout) {
        return Left(
          Failure.networkError(
            message: 'Connection timeout. Please try again.',
          ),
        );
      } else if (e.type == DioExceptionType.badResponse) {
        if (e.response?.data != null &&
            e.response!.data.toString().contains("<Error>")) {
          print(
            "[ApiClient-_request] DioException badResponse with S3 XML error: ${e.response?.data}",
          );
          String s3ErrorMessage =
              "S3 Operation failed: ${e.response?.statusCode}";
          final responseDataString = e.response!.data.toString();
          final messageMatch = RegExp(
            r"<Message>(.*?)</Message>",
          ).firstMatch(responseDataString);
          if (messageMatch != null && messageMatch.groupCount >= 1) {
            s3ErrorMessage =
                "S3 Error: ${messageMatch.group(1)} (Status: ${e.response?.statusCode})";
          }
          return Left(Failure.serverError(message: s3ErrorMessage));
        }
        return Left(
          Failure.serverError(
            message: 'Server error: ${e.response?.statusCode} - ${e.message}',
            statusCode: e.response?.statusCode,
          ),
        );
      } else if (e.type == DioExceptionType.cancel) {
        return Left(Failure.unknownError(message: 'Request was cancelled.'));
      }
      return Left(
        Failure.networkError(
          message:
              e.message ??
              'A network error occurred. Please check your connection.',
        ),
      );
    } catch (e) {
      return Left(
        Failure.unknownError(
          message: 'An unexpected error occurred: ${e.toString()}',
        ),
      );
    }
  }

  Future<Either<Failure, T>> get<T>(
    String path, {
    Map<String, dynamic>? queryParameters,
    Options? options,
    CancelToken? cancelToken,
    ProgressCallback? onReceiveProgress,
    required T Function(dynamic json) dataFromJson,
  }) async {
    return _request<T>(
      () => _dio.get(
        path,
        queryParameters: queryParameters,
        options: options,
        cancelToken: cancelToken,
        onReceiveProgress: onReceiveProgress,
      ),
      dataFromJson: dataFromJson,
    );
  }

  Future<Either<Failure, T>> post<T>(
    String path, {
    dynamic data,
    Map<String, dynamic>? queryParameters,
    Options? options,
    CancelToken? cancelToken,
    ProgressCallback? onSendProgress,
    ProgressCallback? onReceiveProgress,
    required T Function(dynamic json) dataFromJson,
  }) async {
    return _request<T>(
      () => _dio.post(
        path,
        data: data,
        queryParameters: queryParameters,
        options: options,
        cancelToken: cancelToken,
        onSendProgress: onSendProgress,
        onReceiveProgress: onReceiveProgress,
      ),
      dataFromJson: dataFromJson,
    );
  }

  Future<Either<Failure, T>> put<T>(
    String path, {
    dynamic data,
    Map<String, dynamic>? queryParameters,
    Options? options,
    CancelToken? cancelToken,
    ProgressCallback? onSendProgress,
    ProgressCallback? onReceiveProgress,
    required T Function(dynamic json) dataFromJson,
  }) async {
    return _request<T>(
      () => _dio.put(
        path,
        data: data,
        queryParameters: queryParameters,
        options: options,
        cancelToken: cancelToken,
        onSendProgress: onSendProgress,
        onReceiveProgress: onReceiveProgress,
      ),
      dataFromJson: dataFromJson,
    );
  }

  Future<Either<Failure, T>> delete<T>(
    String path, {
    dynamic data,
    Map<String, dynamic>? queryParameters,
    Options? options,
    CancelToken? cancelToken,
    required T Function(dynamic json) dataFromJson,
  }) async {
    return _request<T>(
      () => _dio.delete(
        path,
        data: data,
        queryParameters: queryParameters,
        options: options,
      ),
      dataFromJson: dataFromJson,
    );
  }

  Future<Either<Failure, Unit>> rawPutToUrl(
    String url, {
    required Stream<List<int>> dataStream,
    required int contentLength,
    required String contentType,
    bool includeAuthHeader = true,
  }) async {
    try {
      final response = await _dio.put<dynamic>(
        url,
        data: dataStream,
        options: Options(
          headers: {
            'Content-Type': contentType,
            'Content-Length': contentLength.toString(),
            // Note: 'Accept' header is not explicitly set here for S3 compatibility.
          },
          extra: {kIncludeAuthHeaderOption: includeAuthHeader},
        ),
      );

      if (response.statusCode! >= 200 && response.statusCode! < 300) {
        return const Right(unit);
      } else {
        return Left(
          Failure.serverError(
            message:
                'Upload failed: ${response.statusCode} - ${response.statusMessage}',
            errorCode: response.statusCode.toString(),
          ),
        );
      }
    } on DioException catch (e) {
      print("[ApiClient-RawPutToUrl] DioException: ${e.toString()}");
      print(
        "[ApiClient-RawPutToUrl] DioException Response: ${e.response?.data}",
      );
      if (e.response?.data != null &&
          e.response!.data.toString().contains("<Error>")) {
        print(
          "[ApiClient-RawPutToUrl] DioException badResponse with S3 XML error: ${e.response?.data}",
        );
        String s3ErrorMessage = "S3 Upload failed: ${e.response?.statusCode}";
        final responseDataString = e.response!.data.toString();
        final messageMatch = RegExp(
          r"<Message>(.*?)</Message>",
        ).firstMatch(responseDataString);
        if (messageMatch != null && messageMatch.groupCount >= 1) {
          s3ErrorMessage =
              "S3 Error: ${messageMatch.group(1)} (Status: ${e.response?.statusCode})";
        }
        return Left(Failure.serverError(message: s3ErrorMessage));
      }
      return Left(
        Failure.serverError(
          message: 'Upload failed: ${e.response?.statusCode} - ${e.message}',
        ),
      );
    } catch (e) {
      print("[ApiClient-RawPutToUrl] Generic Exception: ${e.toString()}");
      return Left(
        Failure.unknownError(
          message:
              'An unexpected error occurred during raw PUT: ${e.toString()}',
        ),
      );
    }
  }
}
