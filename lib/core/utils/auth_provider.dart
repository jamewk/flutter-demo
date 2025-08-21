
import 'package:flutter/material.dart';

class AuthProvider extends ChangeNotifier {
  bool _isLogin = false;
  bool get isLogin => _isLogin;

  login({required String username, required String password}) {
    if (username == "admin" && password == "1234") {
      _isLogin = true;

      notifyListeners();
    } 
  }

  logout() {
    _isLogin = false;

    notifyListeners();
  }
}
