import 'package:flutter/material.dart';
import 'task_tile.dart';

/// Widget untuk menampilkan daftar tugas
class TaskList extends StatelessWidget {
  final List<Map<String, dynamic>> tasks;
  final Function(int) onToggleStatus;
  final Function(int) onEdit;
  final Function(int) onRemove;

  const TaskList({
    required this.tasks,
    required this.onToggleStatus,
    required this.onEdit,
    required this.onRemove,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        gradient: LinearGradient(
          colors: [
            Color(0xFFF8E8F7), // Warna latar belakang pastel pink
            Color(0xFFD9A8C9), // Warna ungu muda
          ],
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
        ),
      ),
      child: ListView.builder(
        itemCount: tasks.length,
        itemBuilder: (context, index) {
          return TaskTile(
            task: tasks[index],
            onToggle: () => onToggleStatus(index),
            onEdit: () => onEdit(index),
            onRemove: () => onRemove(index),
          );
        },
      ),
    );
  }
}
