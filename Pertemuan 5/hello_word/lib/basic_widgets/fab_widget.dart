import 'package:flutter/material.dart';

class FabWidget extends StatelessWidget {
  const FabWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            // Tambahkan aksi saat tombol ditekan di sini
          },
          child: const Icon(Icons.thumb_up),
          backgroundColor: Colors.pink, // Warna tombol
        ),
      ),
    );
  }
}
