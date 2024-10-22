import 'package:flutter/material.dart';

/// Widget untuk menampilkan tugas individu
class TaskTile extends StatelessWidget {
  final Map<String, dynamic> task;
  final VoidCallback onToggle;
  final VoidCallback onEdit;
  final VoidCallback onRemove;

  const TaskTile({
    required this.task,
    required this.onToggle,
    required this.onEdit,
    required this.onRemove,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.symmetric(vertical: 8, horizontal: 16),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(15),
      ),
      child: ListTile(
        title: Row(
          children: [
            if (task[
                'isImportant']) // Menampilkan ikon penting jika tugas penting
              const Icon(Icons.star, color: Colors.orange),
            const SizedBox(width: 8), // Jarak antara ikon dan teks
            Expanded(
              child: Text(
                task['task'],
                style: TextStyle(
                  fontSize: 18,
                  color: const Color(0xFF6D6D6D),
                  decoration: task['isDone']
                      ? TextDecoration.lineThrough
                      : TextDecoration.none,
                ),
              ),
            ),
          ],
        ),
        leading: Checkbox(
          value: task['isDone'],
          onChanged: (bool? value) {
            onToggle(); // Menandai tugas sebagai selesai
          },
        ),
        trailing: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            IconButton(
              icon: const Icon(Icons.edit, color: Colors.blue),
              onPressed: onEdit, // Mengedit tugas
            ),
            IconButton(
              icon: const Icon(Icons.delete, color: Colors.red),
              onPressed: onRemove, // Menghapus tugas
            ),
          ],
        ),
      ),
    );
  }
}
