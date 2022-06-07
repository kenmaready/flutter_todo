import 'package:flutter/material.dart';
//
import '../models/task.dart';

class TaskTile extends StatefulWidget {
  final Task task;
  final VoidCallback onDismiss;
  const TaskTile({required this.task, required this.onDismiss});

  @override
  State<TaskTile> createState() => _TaskTileState();
}

class _TaskTileState extends State<TaskTile> {
  @override
  Widget build(BuildContext context) {
    return Dismissible(
      key: Key(widget.task.hashCode.toString()),
      direction: DismissDirection.endToStart,
      onDismissed: (direction) => widget.onDismiss(),
      background: Container(color: Colors.red.shade100),
      child: ListTile(
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
                : const Icon(Icons.check_box_outline_blank,
                    color: Colors.grey)),
      ),
    );
  }
}
