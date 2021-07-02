import 'package:flutter/material.dart';
import 'package:tasks_list/screens/add_task_screen.dart';
import 'package:tasks_list/services/task.dart';
import 'package:tasks_list/widgets/tasks_list.dart';

import '../constants.dat.dart';

class TasksScreen extends StatefulWidget {
  @override
  _TasksScreenState createState() => _TasksScreenState();
}

class _TasksScreenState extends State<TasksScreen> {
  List<Task> tasks = [];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: KMainColor,
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          showModalBottomSheet<dynamic>(
            enableDrag: true,
            isScrollControlled: true,
            backgroundColor: Color(0xFF747474),
            context: context,
            builder: (context) => AddTaskScreen(
              onAdd: (newTask) {
                setState(() {
                  tasks.add(Task(name: newTask));
                });
                Navigator.pop(context);
              },
            ),
          );
        },
        backgroundColor: KMainColor,
        child: Icon(Icons.add),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            padding: EdgeInsets.only(
                top: 60.0, left: 30.0, right: 30.0, bottom: 30.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                CircleAvatar(
                  child: Icon(
                    Icons.list,
                    size: 30.0,
                    color: KMainColor,
                  ),
                  radius: 30.0,
                  backgroundColor: KTextColor,
                ),
                SizedBox(height: 10.0),
                Text(
                  'Tasks List',
                  style: TextStyle(
                      fontSize: 50.0,
                      fontWeight: FontWeight.w700,
                      color: KTextColor),
                ),
                Text(
                  '${tasks.length} Tasks',
                  style: TextStyle(color: KTextColor, fontSize: 18.0),
                ),
              ],
            ),
          ),
          Expanded(
            child: Container(
              padding: EdgeInsets.symmetric(horizontal: 20.0),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(20.0),
                    topRight: Radius.circular(20.0)),
                color: KTextColor,
              ),
              child: TasksList(tasks: tasks),
            ),
          ),
        ],
      ),
    );
  }
}
