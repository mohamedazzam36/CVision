import 'package:cvision/core/service_locator/service_locator.dart';
import 'package:firebase_auth/firebase_auth.dart';

abstract class TokenService {
  static final _auth = FirebaseAuth.instance;
  static const String _tokenKey = 'tokenKey';

  static Future<void> saveCurrentToken() async {
    final token = await _auth.currentUser!.getIdToken();
    await prefs.setString(_tokenKey, token!);
  }

  static String get currentToken {
    return prefs.getString(_tokenKey)!;
  }

  static Future<String> get refreshToken async {
    await _auth.currentUser!.getIdToken(true);
    return prefs.getString(_tokenKey)!;
  }

  static Future<void> removeCurrentToken() async {
    await prefs.remove(_tokenKey);
  }
}
