import 'package:firebase_auth/firebase_auth.dart';

class AppUser {
  final String name, email;
  final String? picture;
  AppUser({required this.name, required this.email, this.picture});

  factory AppUser.fromFacebookUser(fbData) {
    return AppUser(
      name: fbData['name'],
      email: fbData['email'],
      picture: fbData['picture']['data']['url'],
    );
  }

  factory AppUser.fromFirebase(User user) {
    return AppUser(
      name: user.displayName!,
      email: user.email!,
      picture: user.photoURL,
    );
  }

  factory AppUser.fromJson(jsonData) {
    return AppUser(
      name: jsonData['name'],
      email: jsonData['email'],
      picture: jsonData['picture'],
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'name': name,
      'email': email,
      'picture': picture,
    };
  }
}
