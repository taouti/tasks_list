import 'package:flutter/material.dart';

import '../constants.dat.dart';

class TaskCheckBox extends StatelessWidget {
  late final bool checkBoxState;
  final Function(bool? value) toggleCheckboxState;
  TaskCheckBox(
      {required this.checkBoxState, required this.toggleCheckboxState});
  @override
  Widget build(BuildContext context) {
    return Checkbox(
      activeColor: KMainColor,
      value: checkBoxState,
      onChanged: toggleCheckboxState,
    );
  }
}
