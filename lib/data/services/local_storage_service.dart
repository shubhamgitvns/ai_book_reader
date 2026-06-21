import 'dart:convert';

import 'package:shared_preferences/shared_preferences.dart';

class LocalStorageService {
  static const String userKey = "user";

  // Save User Data

  Future<void> saveUser(UserModel user) async {
    final SharedPreferences prefs = await SharedPreferences.getInstance();

    String userJson = jsonEncode(user.toJson());

    await prefs.setString(userKey, userJson);
  }

  // Get User Data

  Future<UserModel?> getUser() async {
    final SharedPreferences prefs = await SharedPreferences.getInstance();

    String? userJson = prefs.getString(userKey);

    if (userJson == null) {
      return null;
    }

    Map<String, dynamic> json = jsonDecode(userJson);

    return UserModel.fromJson(json);
  }

  // Clear User Data

  Future<void> clearUser() async {
    final SharedPreferences prefs = await SharedPreferences.getInstance();

    await prefs.remove(userKey);
  }
}
