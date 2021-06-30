import 'package:flutter/material.dart';
import 'package:tasks_list/widgets/tasks_list.dart';

import '../constants.dat.dart';

class TasksScreen extends StatelessWidget {
  const TasksScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: KMainColor,
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
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
                  '12 Tasks',
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
              child: TasksList(),
            ),
          ),
        ],
      ),
    );
  }
}
