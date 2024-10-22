import 'package:flutter/material.dart';
import 'profile_dialog.dart';
import '../widgets/task_list.dart';
import '../widgets/add_task_dialog.dart';
import '../widgets/edit_task_dialog.dart';
import 'about_page.dart'; // Import AboutPage

/// Home Page - Halaman utama yang menampilkan daftar tugas
class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final List<Map<String, dynamic>> _tasks = [
    {'task': '04:00 Berolahraga', 'isDone': false, 'isImportant': false},
    {'task': '06:00 Memasak Ayam', 'isDone': false, 'isImportant': true},
    {'task': '18:00 Membaca buku', 'isDone': false, 'isImportant': false},
    {'task': '19:00 Belajar Flutter', 'isDone': false, 'isImportant': false},
    {'task': '20:00 Menyelesaikan tugas', 'isDone': false, 'isImportant': true},
  ];

  void _addTask(String task, {bool isImportant = false}) {
    setState(() {
      _tasks.add({'task': task, 'isDone': false, 'isImportant': isImportant});
    });
  }

  void _removeTask(int index) {
    setState(() {
      _tasks.removeAt(index);
    });
  }

  void _editTask(int index) {
    TextEditingController _editController =
        TextEditingController(text: _tasks[index]['task']);

    showDialog(
      context: context,
      builder: (context) {
        return EditTaskDialog(
          controller: _editController,
          onSave: (newTask) {
            if (newTask.isNotEmpty) {
              setState(() {
                _tasks[index]['task'] = newTask;
              });
              Navigator.pop(context); // Tutup dialog setelah mengedit
            }
          },
        );
      },
    );
  }

  void _toggleTaskStatus(int index) {
    setState(() {
      _tasks[index]['isDone'] = !_tasks[index]['isDone'];
    });
  }

  void _showProfile() {
    showDialog(
      context: context,
      builder: (context) {
        return ProfileDialog(
          onLogout: () {
            Navigator.pushNamedAndRemoveUntil(
                context,
                '/login',
                (route) =>
                    false); // Kembali ke halaman login dan hapus semua rute sebelumnya
          },
        );
      },
    );
  }

  void _showAbout() {
    Navigator.push(
      context,
      MaterialPageRoute(
          builder: (context) => const AboutPage()), // Navigasi ke AboutPage
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xFFD9A8C9), // AppBar warna lavender
        title: const Text('Today'), // Judul halaman
        actions: [
          IconButton(
            icon: const Icon(Icons.add),
            onPressed: () {
              showDialog(
                context: context,
                builder: (context) {
                  TextEditingController _taskController =
                      TextEditingController();
                  return AddTaskDialog(
                    controller: _taskController,
                    onAdd: (task) {
                      if (task.isNotEmpty) {
                        _addTask(task);
                        Navigator.pop(
                            context); // Tutup dialog setelah menambahkan
                      }
                    },
                  );
                },
              );
            },
          ),
          IconButton(
            icon: const Icon(Icons.account_circle),
            onPressed: _showProfile, // Menampilkan dialog profil
          ),
          IconButton(
            icon: const Icon(Icons.info), // Ikon About
            onPressed: _showAbout, // Menampilkan halaman About
          ),
        ],
      ),
      body: Column(
        children: [
          const SizedBox(height: 16), // Jarak antara profil dan daftar tugas
          Expanded(
            child: TaskList(
              tasks: _tasks,
              onToggleStatus: _toggleTaskStatus,
              onEdit: _editTask,
              onRemove: _removeTask,
            ),
          ),
        ],
      ),
    );
  }
}
