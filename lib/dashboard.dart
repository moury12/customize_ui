import 'package:flutter/material.dart';

import 'home.dart';

class Dashboard extends StatefulWidget {
  const Dashboard({Key? key}) : super(key: key);
  static List<Widget> _widgetOptions = <Widget>[
    Home(),
    Home(),
    Home(),


  ];

  @override
  State<Dashboard> createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {
  int _selectedIndex = 0;

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
body: Home(),
      bottomNavigationBar: BottomNavigationBar(unselectedItemColor: Colors.grey,
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home_outlined),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.bar_chart),
            label: 'Dashboard',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.list),
            label: 'Profile',
          ),  BottomNavigationBarItem(
            icon: Icon(Icons.notifications_none),
            label: 'Profile',
          ),  BottomNavigationBarItem(
            icon: Icon(Icons.event_note),
            label: 'Profile',
          ),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.blue,
        onTap: _onItemTapped,
      ));
  }
}
