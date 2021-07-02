import 'package:flutter/material.dart';
import 'package:tasks_list/widgets/task_tile.dart';

import '../services/task.dart';

class TasksList extends StatefulWidget {
  final List<Task> tasks;
  TasksList({required this.tasks});
  @override
  _TasksListState createState() => _TasksListState();
}

class _TasksListState extends State<TasksList> {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: widget.tasks.length,
      itemBuilder: (context, index) {
        return TaskTile(
          tileTitle: widget.tasks[index].name,
          isChecked: widget.tasks[index].isDone,
          onChanged: (bool? value) {
            setState(() {
              widget.tasks[index].toggleDone();
            });
          },
        );
      },
    );
  }
}
