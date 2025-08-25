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
}
