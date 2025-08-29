import 'package:cvision/core/failures/failures.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/services.dart';
import 'package:flutter_facebook_auth/flutter_facebook_auth.dart';

class AuthFailures extends Failures {
  AuthFailures(super.errMessage);

  factory AuthFailures.fromFirebase(FirebaseAuthException e) {
    switch (e.code) {
      case "invalid-email":
        return AuthFailures("The email address is not valid.");
      case "user-disabled":
        return AuthFailures("This account has been disabled.");
      case "user-not-found":
        return AuthFailures("No user found with this email.");
      case "wrong-password":
        return AuthFailures("Wrong password provided.");
      case "email-already-in-use":
        return AuthFailures("This email is already registered.");
      case "weak-password":
        return AuthFailures("The password is too weak.");
      case "network-request-failed":
        return AuthFailures("Network error, please check your connection.");
      case "too-many-requests":
        return AuthFailures("Too many attempts, please try again later.");
      case "operation-not-allowed":
        return AuthFailures("This sign-in method is not enabled.");
      case "internal-error":
        return AuthFailures("An internal error occurred.");
      case "invalid-credential":
        return AuthFailures("Invalid login credentials.");
      case "account-exists-with-different-credential":
        return AuthFailures("This email is linked with another sign-in provider.");
      case "popup-closed-by-user":
        return AuthFailures("Sign-in popup was closed before completing.");
      case "unauthorized-domain":
        return AuthFailures("This domain is not authorized for Firebase Auth.");
      default:
        return AuthFailures("An unexpected error occurred. (${e.code})");
    }
  }

  factory AuthFailures.fromGooglePlatform(PlatformException e) {
    switch (e.code) {
      case "sign_in_failed":
        return AuthFailures("Sign-in with Google failed.");
      case "network_error":
        return AuthFailures("Network error. Please check your connection.");
      case "popup_closed_by_user":
        return AuthFailures("Sign-in was cancelled before completion.");
      case "user_cancelled":
        return AuthFailures("You cancelled the sign-in process.");
      default:
        return AuthFailures("Google sign-in error: ${e.code}");
    }
  }

  factory AuthFailures.googleCancelled() {
    return AuthFailures("Google sign-in was cancelled by the user.");
  }

  factory AuthFailures.fromFacebook(LoginResult facebookLoginResult) {
    switch (facebookLoginResult.status) {
      case LoginStatus.success:
        return AuthFailures("Unexpected: Facebook login returned success inside failure.");
      case LoginStatus.cancelled:
        return AuthFailures("Facebook sign-in was cancelled by user.");
      case LoginStatus.failed:
        return AuthFailures("Facebook sign-in failed. ${facebookLoginResult.message ?? ''}");
      case LoginStatus.operationInProgress:
        return AuthFailures("Facebook sign-in is already in progress. Please wait.");
    }
  }
}
