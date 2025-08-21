import 'package:demo/core/utils/auth_provider.dart';
import 'package:demo/features/content_page.dart';
import 'package:demo/features/login/login_page.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(
    ChangeNotifierProvider(create: (_) => AuthProvider(), child: const MyApp()),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: context.watch<AuthProvider>().isLogin
          ? ContentPage()
          : const LoginPage(),
    );
  }
}
