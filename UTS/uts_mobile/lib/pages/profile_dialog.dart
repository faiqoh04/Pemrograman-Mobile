import 'package:flutter/material.dart';

/// Dialog untuk menampilkan profil pengguna dan opsi logout
class ProfileDialog extends StatelessWidget {
  final VoidCallback onLogout;

  const ProfileDialog({
    required this.onLogout,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      title: const Text(
        'Profil Pengguna',
        style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 24,
            color: Color(0xFF6D6D6D)),
      ),
      shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(16.0)), // Sudut bulat
      content: const SingleChildScrollView(
        // Membuat konten bisa discroll
        child: SizedBox(
          width: double
              .maxFinite, // Membuat lebar dialog sesuai dengan lebar maksimum
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisSize: MainAxisSize.min, // Agar ukuran sesuai dengan konten
            children: [
              CircleAvatar(
                radius: 50, // Ukuran lingkaran foto profil
                backgroundImage: AssetImage(
                    'assets/images.png'), // Menggunakan gambar dari assets
              ),
              SizedBox(height: 16),
              Text(
                'admin',
                style: TextStyle(
                    fontSize: 22,
                    fontWeight: FontWeight.bold,
                    color: Color(0xFF4A4A4A)),
                textAlign: TextAlign.center,
              ),
              SizedBox(height: 8),
              Text(
                'email@example.com',
                style: TextStyle(color: Colors.grey),
                textAlign: TextAlign.center,
              ),
              SizedBox(height: 16),
              Divider(thickness: 1.5, color: Color(0xFFD9A8C9)), // Pemisah
              SizedBox(height: 16),
              Text(
                'Deskripsi:',
                style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                    color: Color(0xFF4A4A4A)),
              ),
              SizedBox(height: 8),
              Text(
                'Seorang pengembang aplikasi dengan ketertarikan dalam teknologi terbaru dan pengembangan perangkat lunak. Menyukai tantangan baru dan selalu berusaha untuk meningkatkan keterampilan',
                style: TextStyle(color: Colors.black54),
                textAlign: TextAlign.center,
              ),
              SizedBox(height: 20),
            ],
          ),
        ),
      ),
      actions: [
        TextButton(
          onPressed: onLogout,
          child:
              const Text('Logout', style: TextStyle(color: Color(0xFFD9A8C9))),
        ),
        TextButton(
          onPressed: () {
            Navigator.pop(context); // Tutup dialog
          },
          child:
              const Text('Tutup', style: TextStyle(color: Color(0xFFD9A8C9))),
        ),
      ],
    );
  }
}
