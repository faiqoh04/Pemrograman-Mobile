import 'package:flutter/material.dart';
import 'pages/login_page.dart';
import 'pages/home_page.dart'; // Pastikan Anda juga memiliki home_page.dart
import 'pages/landing_page.dart'; // Import halaman landing

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'To-Do List',
      theme: ThemeData(
        primarySwatch: Colors.pink,
      ),
      initialRoute: '/landing', // Halaman awal adalah landing
      routes: {
        '/landing': (context) => const LandingPage(), // Rute untuk landing page
        '/login': (context) => const LoginPage(), // Rute untuk login
        '/home': (context) => const HomePage(), // Rute untuk halaman utama
      },
    );
  }
}
