import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:tasks_list/constants.dat.dart';
import 'package:tasks_list/services/list_of_tasks.dart';

class AddTaskScreen extends StatelessWidget {
  String newTask = '';
  @override
  Widget build(BuildContext context) {
    double keyBoardHeight = MediaQuery.of(context).viewInsets.bottom;
    return Container(
      padding: EdgeInsets.all(20.0),
      decoration: BoxDecoration(
        color: KAddTaskScreenBackgroundColor,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(20.0),
          topRight: Radius.circular(20.0),
        ),
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          Text(
            'Add Task',
            textAlign: TextAlign.center,
            style: TextStyle(
                fontSize: 40.0, fontWeight: FontWeight.w500, color: KMainColor),
          ),
          SizedBox(height: 10.0),
          TextField(
            autofocus: true,
            textAlign: TextAlign.center,
            style: TextStyle(color: Colors.black, fontSize: 20.0),
            onChanged: (value) {
              newTask = value;
            },
          ),
          SizedBox(height: 15.0),
          MaterialButton(
            height: 50.0,
            color: KMainColor,
            onPressed: () {
              if (newTask != '') {
                Provider.of<ListOfTasks>(context, listen: false)
                    .addTask(name: newTask);
                Navigator.pop(context);
              } else {
                Navigator.pop(context);
              }
            },
            child: Text(
              'Add',
              style: TextStyle(fontSize: 18.0, color: Colors.white),
            ),
          ),
          SizedBox(height: keyBoardHeight),
        ],
      ),
    );
  }
}
