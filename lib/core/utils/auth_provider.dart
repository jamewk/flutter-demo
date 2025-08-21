
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class AuthProvider extends ChangeNotifier {
  bool _loading = true;
  bool get loading => _loading;

  bool _isLogin = false;
  bool get isLogin => _isLogin;

  Future<void> checkLogin() async {
    _loading = true;
    final SharedPreferences prefs = await SharedPreferences.getInstance();
    _isLogin = prefs.getBool("_isLogin") ?? false;

    _loading = false;
    notifyListeners();
  }

  Future<void> login({required String username, required String password}) async {
    if (username == "admin" && password == "1234") {
      _isLogin = true;

      final SharedPreferences prefs = await SharedPreferences.getInstance();
      prefs.setBool("_isLogin", true);
      notifyListeners();
    } 
  }

  Future<void> logout() async {
    _isLogin = false;

    final SharedPreferences prefs = await SharedPreferences.getInstance();
    prefs.setBool("_isLogin", false);
    notifyListeners();
  }
}
