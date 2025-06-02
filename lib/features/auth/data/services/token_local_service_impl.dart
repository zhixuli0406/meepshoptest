import 'package:injectable/injectable.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:meepshoptest/features/auth/data/repositories/auth_repository_impl.dart'; // For TokenLocalService abstract class

const String _tokenKey = 'auth_token';

@LazySingleton(as: TokenLocalService)
class TokenLocalServiceImpl implements TokenLocalService {
  final SharedPreferences _prefs;

  TokenLocalServiceImpl(this._prefs);

  @override
  Future<String?> getToken() async {
    return _prefs.getString(_tokenKey);
  }

  @override
  Future<void> saveToken(String token) async {
    await _prefs.setString(_tokenKey, token);
  }

  @override
  Future<void> deleteToken() async {
    await _prefs.remove(_tokenKey);
  }
}
