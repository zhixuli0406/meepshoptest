class ServerException implements Exception {
  final String? message;
  final int? statusCode;

  ServerException({this.message, this.statusCode});

  @override
  String toString() {
    return 'ServerException: ${statusCode ?? "N/A"} - ${message ?? "An unknown server error occurred."}';
  }

  // Optional: Factory constructor to handle DioException if you want to centralize that logic here
  // factory ServerException.fromDioError(DioException dioError) {
  //   return ServerException(
  //     message: dioError.message ?? dioError.response?.data?['message'] ?? 'Network error',
  //     statusCode: dioError.response?.statusCode,
  //   );
  // }
}

class CacheException implements Exception {
  final String? message;

  CacheException({this.message});

  @override
  String toString() {
    return 'CacheException: ${message ?? "An unknown cache error occurred."}';
  }
}

class ValidationException implements Exception {
  final String? message;
  final Map<String, String>? errors; // For field-specific errors

  ValidationException({this.message, this.errors});

  @override
  String toString() {
    String errorDetails =
        errors?.entries.map((e) => '${e.key}: ${e.value}').join(', ') ?? '';
    return 'ValidationException: ${message ?? "Validation failed."}${errorDetails.isNotEmpty ? " ($errorDetails)" : ""}';
  }
}
