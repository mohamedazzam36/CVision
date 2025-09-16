import 'dart:convert';

import 'package:cvision/core/models/app_user.dart';
import 'package:cvision/core/service_locator/service_locator.dart';

class UserPrefs {
  static const String _userKey = 'app_user';

  static setCurrentUser(AppUser appUser) async {
    await prefs.setString(_userKey, jsonEncode(appUser.toJson()));
  }

  static AppUser get currentUser {
    return AppUser.fromJson(jsonDecode(prefs.getString(_userKey)!));
  }

  static Future<void> clearCurrentUser() async {
    await prefs.remove(_userKey);
  }
}
