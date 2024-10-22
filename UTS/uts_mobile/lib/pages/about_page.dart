import 'package:flutter/material.dart';

/// About Page - Halaman tentang aplikasi
class AboutPage extends StatelessWidget {
  const AboutPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xFFD9A8C9), // AppBar warna lavender
        title: const Text('Tentang Aplikasi'),
      ),
      body: const Padding(
        padding: EdgeInsets.all(16.0),
        child: SingleChildScrollView(
          // Memungkinkan scroll jika konten melebihi layar
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Nama Aplikasi: To-Do List',
                style: TextStyle(
                    fontSize: 28,
                    fontWeight: FontWeight.bold,
                    color: Color(0xFF6A0DAD)),
              ),
              SizedBox(height: 16),
              Text(
                'Deskripsi:',
                style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                    color: Color(0xFF6A0DAD)),
              ),
              SizedBox(height: 8),
              Text(
                'Aplikasi To-Do List ini dirancang untuk membantu pengguna dalam mengatur dan mengelola tugas sehari-hari dengan cara yang efisien dan intuitif. Dalam dunia yang serba cepat ini, sangat penting bagi individu untuk memiliki alat yang dapat membantu mereka tetap terorganisir dan fokus pada hal-hal yang paling penting. \n\n'
                'Dengan aplikasi ini, pengguna dapat dengan mudah menambahkan tugas baru, mengedit, dan menghapus tugas yang tidak lagi relevan. Salah satu fitur unggulan adalah kemampuan untuk menandai tugas yang telah selesai, yang memberikan rasa pencapaian dan motivasi untuk terus menyelesaikan tugas-tugas berikutnya. Selain itu, aplikasi ini memungkinkan pengguna untuk mengelompokkan tugas berdasarkan kategori, yang memudahkan dalam manajemen waktu dan prioritas.\n\n'
                'Aplikasi ini juga dilengkapi dengan antarmuka pengguna yang ramah dan responsif, sehingga mudah digunakan oleh semua kalangan, dari pelajar hingga profesional. Dengan fitur pengingat yang dapat disesuaikan, pengguna akan mendapatkan notifikasi untuk tugas yang akan datang, memastikan bahwa tidak ada tenggat waktu yang terlewat. \n\n'
                'Kami terus berkomitmen untuk meningkatkan aplikasi ini dengan menambahkan fitur baru berdasarkan umpan balik pengguna. Tujuan kami adalah untuk menciptakan alat yang tidak hanya membantu pengguna menyelesaikan tugas, tetapi juga meningkatkan produktivitas dan kesejahteraan mereka secara keseluruhan.',
                style: TextStyle(fontSize: 16),
              ),
              SizedBox(height: 16),
              Text(
                'Versi: 1.0.0',
                style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Color(0xFF6A0DAD)),
              ),
              SizedBox(height: 16),
              Text(
                'Kontak:',
                style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Color(0xFF6A0DAD)),
              ),
              SizedBox(height: 8),
              Text(
                'Email: support@ToDoList.com',
                style: TextStyle(fontSize: 16),
              ),
              Text(
                'Website: www.ToDoList.com',
                style: TextStyle(fontSize: 16),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
