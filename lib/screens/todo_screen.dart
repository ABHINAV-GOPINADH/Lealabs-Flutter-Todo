import 'package:flutter/material.dart';
import '../widgets/task_input.dart';
import '../widgets/task_item.dart';

class ToDoScreen extends StatefulWidget {
  @override
  _ToDoScreenState createState() => _ToDoScreenState();
}

class _ToDoScreenState extends State<ToDoScreen> {
  List<String> tasks = [];

  void _addTask(String task) {
    if (task.trim().isEmpty) return;
    setState(() => tasks.add(task));
  }

  void _removeTask(int index) {
    setState(() => tasks.removeAt(index));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Today's Schedule", style: TextStyle(fontSize: 24)),
        centerTitle: true,
      ),
      body: Column(
        children: [
          TaskInput(onSubmit: _addTask),
          Expanded(
            child: ListView.builder(
              padding: EdgeInsets.all(16),
              itemCount: tasks.length,
              itemBuilder: (context, index) => TaskItem(
                task: tasks[index],
                onDelete: () => _removeTask(index),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
