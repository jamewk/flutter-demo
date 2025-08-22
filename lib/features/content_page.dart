import 'package:demo/features/home/home_page.dart';
import 'package:demo/features/inbox/inbox_page.dart';
import 'package:demo/features/orders/orders_page.dart';
import 'package:demo/features/profile/profile_page.dart';
import 'package:flutter/material.dart';

class ContentPage extends StatefulWidget {
  const ContentPage({super.key});

  @override
  State<ContentPage> createState() => _ContentPageState();
}

class _ContentPageState extends State<ContentPage> {
  int _currentTab = 0;
  final List<Widget> _contents = <Widget>[
    const HomePage(),
    const InboxPage(),
    const OrdersPage(),
    const ProfilePage()
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(child: _contents.elementAt(_currentTab)),
      bottomNavigationBar: BottomNavigationBar(
        onTap: (value) {
          setState(() {
            _currentTab = value;
          });
        },
        type: BottomNavigationBarType.fixed,
        currentIndex: _currentTab,
        selectedItemColor: Color.fromRGBO(143, 148, 251, 1),
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
          BottomNavigationBarItem(icon: Icon(Icons.inbox), label: 'Inbox'),
          BottomNavigationBarItem(icon: Icon(Icons.list), label: 'Orders'),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: 'Profile')
        ],
      ),
    );
  }
}
