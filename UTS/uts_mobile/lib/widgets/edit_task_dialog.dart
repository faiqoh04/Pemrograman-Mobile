import 'package:flutter/material.dart';

/// Dialog untuk mengedit tugas yang ada
class EditTaskDialog extends StatelessWidget {
  final TextEditingController controller;
  final Function(String) onSave;

  const EditTaskDialog({
    required this.controller,
    required this.onSave,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      title: const Text('Edit Tugas'),
      content: TextField(
        controller: controller,
        decoration: const InputDecoration(hintText: 'Edit nama tugas'),
      ),
      actions: [
        TextButton(
          onPressed: () {
            onSave(controller.text); // Simpan perubahan
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
