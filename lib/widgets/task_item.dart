import 'package:flutter/material.dart';

class TaskItem extends StatelessWidget {
  final String task;
  final VoidCallback onDelete;

  TaskItem({required this.task, required this.onDelete});

  @override
  Widget build(BuildContext context) {
    return Card(
      color: Colors.grey[900],
      margin: EdgeInsets.only(bottom: 12),
      child: ListTile(
        leading: Icon(Icons.event_note, color: Colors.tealAccent),
        title: Text(
          task,
          style: TextStyle(fontSize: 18, color: Colors.white),
        ),
        trailing: IconButton(
          icon: Icon(Icons.delete, color: Colors.redAccent),
          onPressed: onDelete,
        ),
      ),
    );
  }
}
