import 'package:flutter/material.dart';
import 'package:new_you/pages/home_page.dart';
import 'package:new_you/pages/profile_page.dart';
import 'package:new_you/pages/settings_page.dart';

class FirstPage extends StatefulWidget {
   const FirstPage({super.key});

  @override
  State<FirstPage> createState() => _FirstPageState();
}

class _FirstPageState extends State<FirstPage> {
   int _selectedIndex = 0;

   void _navigatorBottomBar(int index) {
     setState(() {
       _selectedIndex = index;
     });
   }

  final List _pages = [
    const HomePage(),
    const ProfilePage(),
    const SettingsPage(),
  ];

   final List<String> _pageTitles = [
     'Home Page',
     'Profile Page',
     'Settings Page',
   ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(_pageTitles[_selectedIndex].toString()),),
      body: _pages[_selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _selectedIndex,
        onTap: _navigatorBottomBar,
        items: const [
          BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'Profile',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.settings),
            label: 'Setting',
          ),
        ],
      ),
    );
  }
}
