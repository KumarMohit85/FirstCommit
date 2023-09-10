import 'package:flutter/material.dart';
import 'package:medical_app/screens/message_screen.dart';
import 'package:medical_app/screens/settings_screen.dart';

import 'home_screen.dart';

class NavBarRoots extends StatefulWidget {
  const NavBarRoots({super.key});

  @override
  State<NavBarRoots> createState() => _NavBarRootsState();
}

class _NavBarRootsState extends State<NavBarRoots> {
  final _screens = [
    //Homescreen
    HomeScreen(),
    //Messages screen
    MessageScreen(),
    //ScheduleScreen
    Container(),
    //Settings Screen
    SettingsScreen(),
  ];
  var _selectedIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: _screens[_selectedIndex],
      bottomNavigationBar: Container(
        height: 80,
        child: BottomNavigationBar(
          backgroundColor: Colors.white,
          type: BottomNavigationBarType.shifting,
          selectedItemColor: Colors.blue,
          unselectedItemColor: Colors.black,
          selectedLabelStyle:
              const TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
          currentIndex: _selectedIndex,
          onTap: (index) {
            setState(() {
              _selectedIndex = index;
            });
          },
          items: const [
            BottomNavigationBarItem(
                icon: Icon(Icons.home_filled), label: "Home"),
            BottomNavigationBarItem(
                icon: Icon(Icons.message), label: "Messages"),
            BottomNavigationBarItem(
                icon: Icon(Icons.calendar_month), label: "Schedule"),
            BottomNavigationBarItem(
                icon: Icon(Icons.settings), label: "Setting"),
          ],
        ),
      ),
    );
  }
}
