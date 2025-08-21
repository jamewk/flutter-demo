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

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  void initState() {
    context.read<AuthProvider>().checkLogin();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    if (context.watch<AuthProvider>().loading) {
      return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(body: Center(child: CircularProgressIndicator())),
      );
    }else{
      return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: context.watch<AuthProvider>().isLogin
            ? ContentPage()
            : const LoginPage(),
      );
    }
  }
}
