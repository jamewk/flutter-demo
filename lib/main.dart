import 'package:demo/core/providers/auth_provider.dart';
import 'package:demo/features/content_page.dart';
import 'package:demo/features/login_page.dart';
import 'package:demo/features/splash_page.dart';
import 'package:provider/provider.dart';
import 'package:flutter/material.dart';

void main() async {
  runApp(
    ChangeNotifierProvider(
      create: (_) => AuthProvider()..loadAuth(),
      child: const MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: '/', // เริ่มต้นที่ Splash
      routes: {
        '/': (context) => const SplashPage(),
        '/login': (context) => const LoginPage(),
        '/home': (context) => const ContentPage(),
      },
    );
  }
}
