import 'package:flutter/material.dart';
import 'package:new_you/pages/first_page.dart';
import 'package:new_you/pages/home_page.dart';
import 'package:new_you/pages/settings_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: const FirstPage(),
      routes: {
        '/firstpage' : (context) => const FirstPage(),
        '/settingspage' : (context) => const SettingsPage(),
        '/homepage' : (context) => const HomePage(),
      },
    );
  }
}