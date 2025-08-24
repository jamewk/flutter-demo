import 'package:demo/core/providers/auth_provider.dart';
import 'package:demo/routes.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../../widgets/index.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    final auth = Provider.of<AuthProvider>(context);

    Future<void> logout(context) async {
      await auth.logout();
      if (context.mounted) {
        Navigator.pushReplacementNamed(context, Routes.login);
      }
    }

    return Scaffold(
      appBar: AppBar(
        title: const Text("Welcome Page"),
        actions: [
          IconButton(
            icon: const Icon(Icons.logout),
            onPressed: () => logout(context),
          ),
        ],
      ),
      body: Container(
        margin: const EdgeInsets.all(20.0),
        child: Center(child: Text("Welcome! Your token is: ${auth.token}")),
      ),
      floatingActionButton: Builder(
        builder: (context) {
          return DialogExample();
        },
      ),
    );
  }
}
