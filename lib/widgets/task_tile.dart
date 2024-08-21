import 'package:flutter/material.dart';

class TaskTile extends StatefulWidget {
  const TaskTile({super.key});
  @override
  State<TaskTile> createState() => _TaskTileState();
}

class _TaskTileState extends State<TaskTile> {
  bool isChecked = false;
  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(
        'Buy Milk',
        style: TextStyle(
            fontSize: 25,
            decoration: isChecked ? TextDecoration.lineThrough : null),
      ),
      trailing: TaskCheckBox(
          isChecked: isChecked,
          toggleCheckboxState: (bool? checkBoxState) {
            setState(() {
              isChecked = checkBoxState ?? false;
            });
          }),
    );
  }
}

class TaskCheckBox extends StatelessWidget {
  final bool isChecked;
  final Function(bool?)
      toggleCheckboxState; // Updated to accept nullable bool in Function signature
  const TaskCheckBox(
      {super.key, required this.isChecked, required this.toggleCheckboxState});

  @override
  Widget build(BuildContext context) {
    return Checkbox(
      activeColor: Colors.lightBlueAccent,
      hoverColor: Colors.blue,
      value: isChecked,
      onChanged: toggleCheckboxState,
    );
  }
}
