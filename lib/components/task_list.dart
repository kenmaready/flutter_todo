import 'package:flutter/material.dart';
//
import '../models/task.dart';
import './task_tile.dart';

class TaskList extends StatefulWidget {
  List<Task> tasks;

  TaskList({required this.tasks});

  @override
  State<TaskList> createState() => _TaskListState();
}

class _TaskListState extends State<TaskList> {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: widget.tasks.length,
      itemBuilder: (context, index) {
        Task task = widget.tasks[index];
        return TaskTile(
          task: task,
        );
      },
    );
  }
}
