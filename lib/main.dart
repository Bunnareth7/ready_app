import 'package:flutter/material.dart';
import 'package:ready_app/screen/home_screen.dart';
import 'package:ready_app/screen/login_screen.dart';
import 'package:ready_app/screen/setting_screen.dart';

void main(List<String> args) {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Ready App',
      initialRoute: '/login',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      // Start with Login Screen
      home: const LoginScreen(),
      routes: {
        '/login': (context) => const LoginScreen(),
        '/home': (context) =>  HomeScreen(), // Your MyApp screen
        '/settings': (context) =>  SettingScreen(),
      },
    );
  }
}