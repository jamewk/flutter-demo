import 'package:demo/core/providers/auth_provider.dart';
import 'package:demo/features/content_page.dart';
import 'package:demo/features/login_page.dart';
import 'package:demo/features/splash_page.dart';
import 'package:demo/routes.dart';
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
      initialRoute: Routes.splash, // เริ่มต้นที่ Splash
      routes: {
        Routes.splash: (context) => const SplashPage() ,
        Routes.login: (context) => const LoginPage(),
        Routes.home: (context) => const ContentPage(),
      },
    );
  }
}
