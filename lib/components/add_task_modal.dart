import 'package:flutter/material.dart';

class AddTaskModal extends StatelessWidget {
  final Function(String title) onTaskAdded;

  const AddTaskModal({super.key, required this.onTaskAdded});

  @override
  Widget build(BuildContext context) {
    final TextEditingController taskController = TextEditingController();

    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisSize: MainAxisSize.min,
        children: [
          const Text(
            "Add New Task",
            style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold),
          ),
          const SizedBox(height: 20),
          TextField(
            controller: taskController,
            decoration: const InputDecoration(
              labelText: 'Task Title',
              border: OutlineInputBorder(),
            ),
          ),
          const SizedBox(height: 20),
          ElevatedButton(
            onPressed: () {
              final taskTitle = taskController.text;
              if (taskTitle.isNotEmpty) {
                onTaskAdded(taskTitle); // Panggil callback dengan data
                Navigator.pop(context); // Tutup modal
              }
            },
            style: ElevatedButton.styleFrom(
              minimumSize: const Size(double.infinity, 50),
            ),
            child: const Text('Add Task'),
          ),
        ],
      ),
    );
  }
}
