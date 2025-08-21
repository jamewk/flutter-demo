import 'package:flutter/material.dart';
import '../../routes.dart';
import '../../widgets/index.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Welcome Page"),
        actions: [
          IconButton(
            icon: const Icon(Icons.logout),
            onPressed: () {
              Navigator.pushReplacementNamed(context, Routes.login);
            },
          ),
        ],
      ),
      body: Center(
        child: PandaText(data: '🎉 Welcome! You are logged in.'),
      ),
      floatingActionButton: Builder(
        builder: (context) {
          return DialogExample();
        },
      ),
    );
  }
}
