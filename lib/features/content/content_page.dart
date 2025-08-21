import 'package:demo/features/home/home_page.dart';
import 'package:flutter/material.dart';

class ContentPage extends StatefulWidget {
  const ContentPage({super.key});

  @override
  State<ContentPage> createState() => _ContentPageState();
}

class _ContentPageState extends State<ContentPage> {
  int currentTab = 0;
  final List<Widget> _contents = <Widget>[
    const HomePage(),
    Text("Inbox", style: const TextStyle(fontSize: 20)),
    Text("Orders", style: const TextStyle(fontSize: 20)),
    Text("Profile", style: const TextStyle(fontSize: 20)),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(child: _contents.elementAt(currentTab)),
      bottomNavigationBar: BottomNavigationBar(
        onTap: (value) {
          currentTab = value;
          setState(() {});
        },
        type: BottomNavigationBarType.fixed,
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
          BottomNavigationBarItem(icon: Icon(Icons.inbox), label: 'Inbox'),
          BottomNavigationBarItem(icon: Icon(Icons.list), label: 'Orders'),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: 'Profile'),
        ],
      ),
    );
  }
}
