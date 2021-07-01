import 'package:flutter/material.dart';
import 'package:tasks_list/constants.dat.dart';

class AddTaskScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(20.0),
      child: Column(
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
          ),
          SizedBox(height: 15.0),
          MaterialButton(
            height: 50.0,
            minWidth: double.infinity,
            color: KMainColor,
            onPressed: () {},
            child: Text(
              'Add',
              style: TextStyle(fontSize: 18.0, color: Colors.white),
            ),
          ),
        ],
      ),
      decoration: BoxDecoration(
        color: KAddTaskScreenBackgroundColor,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(20.0),
          topRight: Radius.circular(20.0),
        ),
      ),
    );
  }
}
