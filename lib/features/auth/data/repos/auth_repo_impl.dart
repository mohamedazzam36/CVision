import 'dart:developer';

import 'package:cvision/core/constants/helper_constants.dart';
import 'package:cvision/core/errors/auth_failures.dart';
import 'package:cvision/core/errors/failures.dart';
import 'package:cvision/core/models/app_user.dart';
import 'package:cvision/core/prefs/user_prefs.dart';
import 'package:cvision/core/service_locator/service_locator.dart';
import 'package:cvision/core/services/token_service.dart';
import 'package:cvision/features/auth/data/repos/auth_repo.dart';
import 'package:dartz/dartz.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/services.dart';
import 'package:flutter_facebook_auth/flutter_facebook_auth.dart';
import 'package:google_sign_in/google_sign_in.dart';

class AuthRepoImpl extends AuthRepo {
  static final _auth = FirebaseAuth.instance;

  @override
  Future<Either<Failures, dynamic>> signInWithGoogle() async {
    try {
      final GoogleSignIn googleSignIn = GoogleSignIn(scopes: ['email', 'profile']);
      await googleSignIn.signOut();

      final googleAccount = await googleSignIn.signIn();
      if (googleAccount == null) return left(AuthFailures.googleCancelled());

      final googleAuth = await googleAccount.authentication;
      final credential = GoogleAuthProvider.credential(
        accessToken: googleAuth.accessToken,
        idToken: googleAuth.idToken,
      );

      await _auth.signInWithCredential(credential);

      UserPrefs.setCurrentUser(AppUser.fromFirebase(_auth.currentUser!));
      await TokenService.saveCurrentToken();

      return right('');
    } on FirebaseAuthException catch (e) {
      return left(AuthFailures.fromFirebase(e));
    } on PlatformException catch (e) {
      return left(AuthFailures.fromGooglePlatform(e));
    } catch (e) {
      return left(AuthFailures(e.toString()));
    }
  }

  @override
  Future<Either<Failures, dynamic>> emailAndPaawordSignIn({
    required String email,
    required String password,
  }) async {
    try {
      await _auth.signInWithEmailAndPassword(email: email, password: password);
      UserPrefs.setCurrentUser(AppUser.fromFirebase(_auth.currentUser!));
      await TokenService.saveCurrentToken();
      final token = await _auth.currentUser!.getIdToken();
      log(token!);
      return right('');
    } on FirebaseAuthException catch (e) {
      return left(AuthFailures.fromFirebase(e));
    } catch (e) {
      return left(AuthFailures(e.toString()));
    }
  }

  @override
  Future<Either<Failures, dynamic>> emailAndPaawordRegister({
    required String name,
    required String email,
    required String password,
  }) async {
    try {
      await _auth.createUserWithEmailAndPassword(email: email, password: password);
      await _auth.currentUser!.updateDisplayName(name);
      UserPrefs.setCurrentUser(AppUser.fromFirebase(_auth.currentUser!));
      return right('');
    } on FirebaseAuthException catch (e) {
      return left(AuthFailures.fromFirebase(e));
    } catch (e) {
      return left(AuthFailures(e.toString()));
    }
  }

  @override
  Future<Either<Failures, dynamic>> signInWithFacebook() async {
    try {
      final LoginResult loginResult = await FacebookAuth.instance.login(
        permissions: ['email', 'public_profile'],
      );

      if (loginResult.status == LoginStatus.success) {
        final OAuthCredential facebookAuthCredential = FacebookAuthProvider.credential(
          loginResult.accessToken!.tokenString,
        );

        await _auth.signInWithCredential(facebookAuthCredential);
        final fbData = await FacebookAuth.instance.getUserData(
          fields: "email,name,picture.width(200)",
        );
        UserPrefs.setCurrentUser(AppUser.fromFacebookUser(fbData));
        await TokenService.saveCurrentToken();

        return right('');
      } else {
        return left(AuthFailures.fromFacebook(loginResult));
      }
    } on FirebaseAuthException catch (e) {
      return left(AuthFailures.fromFirebase(e));
    } catch (e) {
      return left(AuthFailures(e.toString()));
    }
  }

  @override
  Future<Either<Failures, dynamic>> updateEmail(String email) async {
    try {
      await _auth.currentUser!.verifyBeforeUpdateEmail(email);

      return right('');
    } on FirebaseAuthException catch (e) {
      return left(AuthFailures.fromFirebase(e));
    } catch (e) {
      return left(AuthFailures(e.toString()));
    }
  }

  @override
  Future<Either<Failures, dynamic>> updateName(String name) async {
    try {
      await _auth.currentUser!.updateDisplayName(name);

      return right('');
    } on FirebaseAuthException catch (e) {
      return left(AuthFailures.fromFirebase(e));
    } catch (e) {
      return left(AuthFailures(e.toString()));
    }
  }

  @override
  Future<Either<Failures, dynamic>> updatePassword(String email) async {
    try {
      await _auth.sendPasswordResetEmail(email: email);
      return right('');
    } on FirebaseAuthException catch (e) {
      return left(AuthFailures.fromFirebase(e));
    } catch (e) {
      return left(AuthFailures(e.toString()));
    }
  }

  @override
  Future<Either<Failures, dynamic>> signOut() async {
    try {
      await _auth.signOut();
      await TokenService.removeCurrentToken();

      return right('');
    } catch (e) {
      return left(AuthFailures(e.toString()));
    }
  }

  @override
  Future<Either<Failures, dynamic>> setRememberMe(bool isRemembered) async {
    try {
      await prefs.setBool(kHideAuthView, isRemembered);
      return right('');
    } catch (e) {
      return left(Failures(e.toString()));
    }
  }
}
