import 'package:flutter/material.dart';
import 'package:todoey_flutter/widgets/task_tile.dart';

class TodoList extends StatelessWidget {
  const TodoList({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
      children: [TaskTile(), TaskTile(), TaskTile()],
    );
  }
}
