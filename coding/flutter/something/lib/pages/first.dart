import 'package:flutter/material.dart';
import 'package:something/pages/home_page.dart';
import 'package:something/pages/profile_page.dart';
import 'package:something/pages/settings_page.dart';

class FirstPage extends StatefulWidget {
  FirstPage({super.key});

  @override
  State<FirstPage> createState() => _FirstPageState();
}

class _FirstPageState extends State<FirstPage> {
  void _navigateBottomBar(int index) {
    setState(() {
      _selected_index = index;
    });
  }

  int _selected_index = 0;

  final List _pages = [
    HomePage(),
    ProfilePage(),
    SettingsPage(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black87,
      body: _pages[_selected_index],
      appBar: AppBar(
        title: Text("1st Page"),
        centerTitle: true,
        backgroundColor: Colors.grey[900],
        foregroundColor: Colors.grey[400],
      ),
      bottomNavigationBar: BottomNavigationBar(
        onTap: _navigateBottomBar,
        currentIndex: _selected_index,
        backgroundColor: Colors.grey[900],
        unselectedItemColor: Colors.grey[600],
        selectedItemColor: Colors.teal,
        selectedLabelStyle: TextStyle(
          fontFamily: "VictorMono NFM",
          fontWeight: FontWeight.bold,
        ),
        unselectedLabelStyle: TextStyle(
          fontFamily: "VictorMono NFM",
          fontWeight: FontWeight.bold,
        ),
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: "Home",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: "Profile",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.settings),
            label: "Settings",
          ),
        ],
      ),
    );
  }
}
