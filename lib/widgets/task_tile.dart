import 'package:flutter/material.dart';
import '../constants.dat.dart';

class TaskTile extends StatelessWidget {
  final bool isChecked;
  final String tileTitle;
  final Function(bool? value) onChanged;
  final Function() onLongPress;
  TaskTile(
      {required this.isChecked,
      required this.tileTitle,
      required this.onChanged,
      required this.onLongPress});
  @override
  Widget build(BuildContext context) {
    return ListTile(
      onLongPress: onLongPress,
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
