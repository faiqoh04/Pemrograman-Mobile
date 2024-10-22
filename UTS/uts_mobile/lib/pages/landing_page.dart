import 'package:flutter/material.dart';

class LandingPage extends StatelessWidget {
  const LandingPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(
          0xFFF3E5F5), // Ubah warna latar belakang sesuai dengan tema login
      appBar: AppBar(
        title: const Text('Welcome to To-Do List'),
        backgroundColor: const Color(0xFFD9A8C9), // Warna lavender
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              'Selamat datang di Aplikasi To-Do List!',
              style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                  color: Color(0xFF4A4A4A)), // Ganti warna teks agar sesuai
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                foregroundColor: Colors.white,
                backgroundColor: const Color(0xFFD9A8C9), // Warna teks tombol
              ),
              onPressed: () {
                Navigator.pushReplacementNamed(
                    context, '/login'); // Arahkan ke halaman login
              },
              child: const Text('Mulai'),
            ),
          ],
        ),
      ),
    );
  }
}
