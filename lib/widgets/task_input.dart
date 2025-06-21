import 'package:flutter/material.dart';

class TaskInput extends StatefulWidget {
  final void Function(String) onSubmit;

  TaskInput({required this.onSubmit});

  @override
  _TaskInputState createState() => _TaskInputState();
}

class _TaskInputState extends State<TaskInput> {
  final TextEditingController _controller = TextEditingController();

  void _submit() {
    widget.onSubmit(_controller.text);
    _controller.clear();
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(16),
      child: Row(
        children: [
          Expanded(
            child: TextField(
              controller: _controller,
              style: TextStyle(color: Colors.white),
              decoration: InputDecoration(
                hintText: "Enter new task",
                hintStyle: TextStyle(color: Colors.white54),
                filled: true,
                fillColor: Colors.grey[850],
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(12),
                  borderSide: BorderSide.none,
                ),
              ),
              onSubmitted: (_) => _submit(),
            ),
          ),
          SizedBox(width: 12),
          ElevatedButton(
            onPressed: _submit,
            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.teal,
              shape: CircleBorder(),
              padding: EdgeInsets.all(16),
            ),
            child: Icon(Icons.add),
          ),
        ],
      ),
    );
  }
}
