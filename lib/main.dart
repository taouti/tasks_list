import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:tasks_list/screens/tasks_screen.dart';
import 'package:tasks_list/services/list_of_tasks.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider<ListOfTasks>(
      create: (context) => ListOfTasks(),
      child: MaterialApp(
        home: TasksScreen(),
      ),
    );
  }
}
