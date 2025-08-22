import 'package:demo/core/utils/auth_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../../widgets/index.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _selectedIndex = 0;

  static const TextStyle optionStyle = TextStyle(
    fontSize: 30,
    fontWeight: FontWeight.bold,
  );
  static const List<Widget> _widgetOptions = <Widget>[
    Text('Index 0: Home', style: optionStyle),
    Text('Index 1: Business', style: optionStyle),
    Text('Index 2: School', style: optionStyle),
  ];

  // void _onItemTapped(int index) {
  //   setState(() {
  //     _selectedIndex = index;
  //   });
  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Welcome Page"),
        actions: [
          IconButton(
            icon: const Icon(Icons.logout),
            onPressed: () {
              context.read<AuthProvider>().logout();
            },
          ),
        ],
      ),
      // drawer: Drawer(
      //   child: ListView(
      //     // Important: Remove any padding from the ListView.
      //     padding: EdgeInsets.zero,
      //     children: [
      //       const DrawerHeader(
      //         decoration: BoxDecoration(),
      //         child: Text('Home Menu'),
      //       ),
      //       ListTile(
      //         title: const Text('Home'),
      //         selected: _selectedIndex == 0,
      //         onTap: () {
      //           // Update the state of the app
      //           _onItemTapped(0);
      //           // Then close the drawer
      //           Navigator.pop(context);
      //         },
      //       ),
      //       ListTile(
      //         title: const Text('Business'),
      //         selected: _selectedIndex == 1,
      //         onTap: () {
      //           // Update the state of the app
      //           _onItemTapped(1);
      //           // Then close the drawer
      //           Navigator.pop(context);
      //         },
      //       ),
      //       ListTile(
      //         title: const Text('School'),
      //         selected: _selectedIndex == 2,
      //         onTap: () {
      //           // Update the state of the app
      //           _onItemTapped(2);
      //           // Then close the drawer
      //           Navigator.pop(context);
      //         },
      //       ),
      //     ],
      //   ),
      // ),
      body: Center(child: _widgetOptions[_selectedIndex]),
      floatingActionButton: Builder(
        builder: (context) {
          return DialogExample();
        },
      ),
    );
  }
}
