import 'package:flutter/material.dart';
import 'screens/login_screen.dart';
import 'screens/main_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Book & Brew',
      theme: ThemeData(
        primaryColor: Color(0xFF8B4513),
        scaffoldBackgroundColor: Color(0xFFF5F0E6),
        fontFamily: 'Georgia',
      ),
      home: LoginScreen(),
      routes: {
        '/main': (context) => MainScreen(),
        '/login': (context) => LoginScreen(),
      },
    );
  }
}