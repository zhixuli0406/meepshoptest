import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:meepshoptest/core/errors/failure.dart';
import 'package:meepshoptest/features/auth/data/models/auth_response_model.dart';
import 'package:meepshoptest/features/auth/data/models/user_input_model.dart';
import 'package:meepshoptest/features/auth/data/models/user_login_input_model.dart';
import 'package:meepshoptest/features/auth/data/models/user_model.dart';
import 'package:meepshoptest/features/auth/data/models/user_update_input_model.dart';

// Removed outdated comment about getMe response model

@lazySingleton
class AuthService {
  final Dio _dio;
  // TODO(AuthService): Consider if this service should use ApiClient for consistency
  // or if direct Dio usage with its own baseUrl is intended long-term.
  final String _apiBaseUrl = 'https://meeptestapi.zhixu-li.com/api/v1';

  AuthService(this._dio);

  Future<AuthResponseModel> register(UserInputModel userInput) async {
    try {
      print(
        '[AuthService-Register] Requesting with input: ${userInput.toJson()}',
      );
      final data = userInput.toJson();
      if (userInput.avatar == null) {
        data.remove('avatar');
      }
      if (userInput.legacyUserId == null) {
        data.remove('legacyUserId');
      }

      final response = await _dio.post(
        '$_apiBaseUrl/auth/register',
        data: data,
      );
      print('[AuthService-Register] Response status: ${response.statusCode}');
      print('[AuthService-Register] Response data: ${response.data}');
      if (response.statusCode == 201 && response.data != null) {
        return AuthResponseModel.fromJson(response.data);
      } else {
        print(
          '[AuthService-Register] ServerError: Unexpected response structure or status code.',
        );
        throw Failure.serverError(
          message:
              response.data?['message'] ??
              'Registration failed: Unexpected response',
        );
      }
    } on DioException catch (e) {
      print('[AuthService-Register] DioException: ${e.response?.data}');
      if (e.response?.statusCode == 400) {
        throw Failure.validationError(
          message:
              e.response?.data?['message'] ??
              'Registration failed: Bad request',
        );
      }
      throw Failure.serverError(
        message:
            e.response?.data?['message'] ??
            e.message ??
            'Registration failed: Server error',
      );
    } catch (e, s) {
      print('[AuthService-Register] Generic error: $e, Stacktrace: $s');
      throw Failure.unknownError(
        message: 'An unknown error occurred during registration: $e',
        error: e,
        stackTrace: s,
      );
    }
  }

  Future<AuthResponseModel> login(UserLoginInputModel loginInput) async {
    try {
      print(
        '[AuthService-Login] Requesting with input: ${loginInput.toJson()}',
      );
      final response = await _dio.post(
        '$_apiBaseUrl/auth/login',
        data: loginInput.toJson(),
      );
      print('[AuthService-Login] Response status: ${response.statusCode}');
      print('[AuthService-Login] Response data: ${response.data}');
      if (response.statusCode == 200 && response.data != null) {
        return AuthResponseModel.fromJson(response.data);
      } else {
        print(
          '[AuthService-Login] ServerError: Unexpected response structure or status code.',
        );
        throw Failure.serverError(
          message:
              response.data?['message'] ?? 'Login failed: Unexpected response',
        );
      }
    } on DioException catch (e) {
      print('[AuthService-Login] DioException: ${e.response?.data}');
      if (e.response?.statusCode == 401) {
        throw Failure.unauthorized(
          message:
              e.response?.data?['message'] ??
              'Login failed: Invalid credentials',
        );
      } else if (e.response?.statusCode == 400) {
        throw Failure.validationError(
          message: e.response?.data?['message'] ?? 'Login failed: Bad request',
        );
      }
      throw Failure.serverError(
        message:
            e.response?.data?['message'] ??
            e.message ??
            'Login failed: Server error',
      );
    } catch (e, s) {
      print('[AuthService-Login] Generic error: $e, Stacktrace: $s');
      throw Failure.unknownError(
        message: 'An unknown error occurred during login: $e',
        error: e,
        stackTrace: s,
      );
    }
  }

  Future<UserModel> getMe(String token) async {
    try {
      print('[AuthService-GetMe] Requesting with token.');
      final response = await _dio.get(
        '$_apiBaseUrl/auth/me',
        options: Options(headers: {'Authorization': 'Bearer $token'}),
      );
      print('[AuthService-GetMe] Response status: ${response.statusCode}');
      print('[AuthService-GetMe] Response data: ${response.data}');
      if (response.statusCode == 200 &&
          response.data?['data']?['user'] != null) {
        return UserModel.fromJson(response.data['data']['user']);
      } else {
        print(
          '[AuthService-GetMe] ServerError: Unexpected response structure or status code.',
        );
        throw Failure.serverError(
          message:
              response.data?['message'] ??
              'Failed to get user: Unexpected response',
        );
      }
    } on DioException catch (e) {
      print('[AuthService-GetMe] DioException: ${e.response?.data}');
      if (e.response?.statusCode == 401) {
        throw Failure.unauthorized(
          message:
              e.response?.data?['message'] ??
              'Failed to get user: Unauthorized',
        );
      }
      throw Failure.serverError(
        message:
            e.response?.data?['message'] ??
            e.message ??
            'Failed to get user: Server error',
      );
    } catch (e, s) {
      print('[AuthService-GetMe] Generic error: $e, Stacktrace: $s');
      throw Failure.unknownError(
        message: 'An unknown error occurred while fetching user: $e',
        error: e,
        stackTrace: s,
      );
    }
  }

  Future<UserModel> updateUserProfile(
    String token,
    UserUpdateInputModel input,
  ) async {
    try {
      print(
        '[AuthService-UpdateProfile] Requesting for /auth/me with input: ${input.toJson()}',
      );
      final data = input.toJson()..removeWhere((key, value) => value == null);
      print('[AuthService-UpdateProfile] Filtered data: $data');

      if (data.isEmpty) {
        print('[AuthService-UpdateProfile] No fields to update.');
        throw Failure.validationError(
          message: 'No fields provided for update.',
        );
      }

      final response = await _dio.patch(
        '$_apiBaseUrl/auth/me',
        data: data,
        options: Options(headers: {'Authorization': 'Bearer $token'}),
      );
      print(
        '[AuthService-UpdateProfile] Response status: ${response.statusCode}',
      );
      print('[AuthService-UpdateProfile] Response data: ${response.data}');

      if (response.statusCode == 200 &&
          response.data != null &&
          response.data['status'] == 'success' &&
          response.data['data']?['user'] != null) {
        return UserModel.fromJson(response.data['data']['user']);
      } else {
        print(
          '[AuthService-UpdateProfile] ServerError: Unexpected response structure or status code.',
        );
        throw Failure.serverError(
          message:
              response.data?['message'] ??
              'Profile update failed: Unexpected response',
        );
      }
    } on Failure {
      rethrow;
    } on DioException catch (e) {
      print('[AuthService-UpdateProfile] DioException: ${e.response?.data}');
      if (e.response?.statusCode == 401) {
        throw Failure.unauthorized(
          message:
              e.response?.data?['message'] ??
              'Profile update failed: Unauthorized',
        );
      } else if (e.response?.statusCode == 400) {
        throw Failure.validationError(
          message:
              e.response?.data?['message'] ??
              'Profile update failed: Bad request',
        );
      } else if (e.response?.statusCode == 404) {
        throw Failure.notFound(
          message:
              e.response?.data?['message'] ??
              'Profile update failed: Endpoint or resource not found for /auth/me',
        );
      }
      throw Failure.serverError(
        message:
            e.response?.data?['message'] ??
            e.message ??
            'Profile update failed: Server error',
      );
    } catch (e, s) {
      print('[AuthService-UpdateProfile] Generic error: $e, Stacktrace: $s');
      throw Failure.unknownError(
        message: 'An unknown error occurred during profile update: $e',
        error: e,
        stackTrace: s,
      );
    }
  }
}
