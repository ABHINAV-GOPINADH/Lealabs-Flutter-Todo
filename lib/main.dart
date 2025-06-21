import 'package:flutter/material.dart';
import 'constants/app_styles.dart';
import 'screens/todo_screen.dart';

void main() {
  runApp(ToDoApp());
}

class ToDoApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'To-Do List',
      theme: ThemeData.dark().copyWith(
        scaffoldBackgroundColor: AppColors.background,
        textTheme: TextTheme(bodyMedium: TextStyle(color: AppColors.text)),
        appBarTheme: AppBarTheme(backgroundColor: Colors.transparent, elevation: 0),
      ),
      home: ToDoScreen(),
    );
  }
}
