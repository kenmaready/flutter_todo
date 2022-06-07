import 'package:provider/provider.dart';
import 'package:flutter/material.dart';
//
import '../models/task_list_provider.dart';
import '../models/task.dart';
import './task_tile.dart';

class TaskList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    List<Task> tasks = context.watch<TaskListProvider>().tasks;

    return ListView.builder(
      itemCount: tasks.length,
      itemBuilder: (context, index) {
        Task task = tasks[index];
        return TaskTile(
          task: task,
        );
      },
    );
  }
}
