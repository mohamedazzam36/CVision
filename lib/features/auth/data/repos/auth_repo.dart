import 'package:cvision/core/errors/failures.dart';
import 'package:dartz/dartz.dart';

abstract class AuthRepo {
  Future<Either<Failures, dynamic>> signInWithGoogle();

  Future<Either<Failures, dynamic>> emailAndPaawordSignIn({
    required String email,
    required String password,
  });

  Future<Either<Failures, dynamic>> emailAndPaawordRegister({
    required String name,
    required String email,
    required String password,
  });

  Future<Either<Failures, dynamic>> signInWithFacebook();

  Future<Either<Failures, dynamic>> signOut();

  Future<Either<Failures, dynamic>> updatePassword(String email);

  Future<Either<Failures, dynamic>> updateName(String name);

  Future<Either<Failures, dynamic>> updateEmail(String email);

  Future<void> setRememberMe(bool isRemembered);
}
