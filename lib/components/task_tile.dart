import 'package:flutter/material.dart';
//
import '../models/task.dart';

class TaskTile extends StatefulWidget {
  final Task task;
  const TaskTile({required this.task});

  @override
  State<TaskTile> createState() => _TaskTileState();
}

class _TaskTileState extends State<TaskTile> {
  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(widget.task.description,
          style: TextStyle(
              decoration: widget.task.isCompleted
                  ? TextDecoration.lineThrough
                  : TextDecoration.none)),
      trailing: TextButton(
          onPressed: () {
            setState(() => widget.task.toggleCompleted());
          },
          child: widget.task.isCompleted
              ? Icon(Icons.check_box, color: Colors.orange.shade200)
              : const Icon(Icons.check_box_outline_blank, color: Colors.grey)),
    );
  }
}
