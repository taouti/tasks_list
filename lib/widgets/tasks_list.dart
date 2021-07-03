import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:tasks_list/services/list_of_tasks.dart';
import 'package:tasks_list/widgets/task_tile.dart';

class TasksList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Consumer<ListOfTasks>(
      builder: (context, listOfTasks, child) {
        return ListView.builder(
          itemCount: listOfTasks.taskCount,
          itemBuilder: (context, index) {
            final task = listOfTasks.tasks[index];
            return TaskTile(
              onLongPress: () {
                if (task.isDone) {
                  listOfTasks.deleteTask(task);
                } else {
                  showDialog<String>(
                    context: context,
                    builder: (context) => AlertDialog(
                      title: const Text('Delete Unchecked Task!'),
                      content: const Text(
                          'you are about to delete an unchecked task, do you want to delete it anyway?'),
                      actions: <Widget>[
                        TextButton(
                          onPressed: () {
                            Navigator.pop(context);
                          },
                          child: const Text('Cancel'),
                        ),
                        TextButton(
                          onPressed: () {
                            listOfTasks.deleteTask(task);
                            Navigator.pop(context);
                          },
                          child: const Text('Yes'),
                        ),
                      ],
                    ),
                  );
                }
              },
              tileTitle: task.name,
              isChecked: task.isDone,
              onChanged: (bool? value) {
                listOfTasks.updateTask(task);
              },
            );
          },
        );
      },
    );
  }
}
