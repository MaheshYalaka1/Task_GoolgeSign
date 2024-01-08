import 'package:flutter/material.dart';

import 'package:google_sign/screens/disocver.dart';
import 'package:google_sign/screens/home.dart';
import 'package:google_sign/screens/profile.dart';

class TabScreen extends StatefulWidget {
  @override
  State<TabScreen> createState() {
    return _TabScreenState();
  }
}

class _TabScreenState extends State<TabScreen> {
  int _currentIndex = 0;

  void _selectedpage(int index) {
    setState(() {
      _currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    Widget activePage = const HomePage();

    if (_currentIndex == 1) {
      activePage = const DiscoverPage();
    } else if (_currentIndex == 2) {
      activePage = const ProfilePage();
    }

    return Scaffold(
      body: activePage,
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.lightBlue,
        selectedItemColor:
            Colors.black, // Set the selected icon color to yellow
        unselectedItemColor:
            Colors.white, // Set the unselected icon color to blue
        showSelectedLabels: true, // Show labels for selected items
        showUnselectedLabels: true, // Show labels for unselected items
        onTap: _selectedpage,
        currentIndex: _currentIndex,
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.search),
            label: 'Discover',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'Profile',
          ),
        ],
      ),
    );
  }
}
