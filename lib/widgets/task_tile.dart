import 'package:flutter/material.dart';
import '../constants.dat.dart';

class TaskTile extends StatelessWidget {
  final bool isChecked;
  final String tileTitle;
  final Function(bool? value) onChanged;
  TaskTile(
      {required this.isChecked,
      required this.tileTitle,
      required this.onChanged});
  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(
        tileTitle,
        style: TextStyle(
            decoration: isChecked ? TextDecoration.lineThrough : null),
      ),
      trailing: Checkbox(
        activeColor: KMainColor,
        value: isChecked,
        onChanged: onChanged,
      ),
    );
  }
}
