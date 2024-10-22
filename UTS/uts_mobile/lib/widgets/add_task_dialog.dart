import 'package:flutter/material.dart';

/// Dialog untuk menambahkan tugas baru
class AddTaskDialog extends StatelessWidget {
  final TextEditingController controller;
  final Function(String) onAdd;

  const AddTaskDialog({
    required this.controller,
    required this.onAdd,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      title: const Text('Tambah Tugas'),
      content: TextField(
        controller: controller,
        decoration: const InputDecoration(hintText: 'Masukkan nama tugas'),
      ),
      actions: [
        TextButton(
          onPressed: () {
            onAdd(controller.text); // Tambahkan tugas
          },
          child: const Text('Simpan'),
        ),
        TextButton(
          onPressed: () {
            Navigator.pop(context); // Tutup dialog
          },
          child: const Text('Batal'),
        ),
      ],
    );
  }
}
