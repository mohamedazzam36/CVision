import 'package:cvision/constants.dart';
import 'package:cvision/core/service_locator/service_locator.dart';
import 'package:dartz/dartz.dart';

abstract class AuthServices {
  static Future<Either<String, dynamic>> signInWithGoogle() async {
    try {
      await googleSignInService.signOut();
      final googleAccount = await googleSignInService.signIn();
      await firebaseAuthService.signInWithGoogle(googleAccount!);
      return right('');
    } catch (e) {
      return left(e.toString());
    }
  }

  static Future<Either<String, dynamic>> emailAndPaawordSignIn({
    required String email,
    required String password,
  }) async {
    try {
      await firebaseAuthService.emailAndPaawordSignIn(email: email, password: password);
      return right('');
    } catch (e) {
      return left(e.toString());
    }
  }

  static Future<Either<String, dynamic>> emailAndPaawordRegister({
    required String name,
    required String email,
    required String password,
  }) async {
    try {
      await firebaseAuthService.emailAndPaawordRegister(
        name: name,
        email: email,
        password: password,
      );
      return right('');
    } catch (e) {
      return left(e.toString());
    }
  }

  static Future<Either<String, dynamic>> updatePassword(String email) async {
    try {
      await firebaseAuthService.updatePassword(email: email);
      return right('');
    } catch (e) {
      return left(e.toString());
    }
  }

  static Future<void> setRememberMe(bool isRemembered) async {
    await prefs.setBool(kHideAuthView, isRemembered);
  }
}
