import 'package:flutter/material.dart';
//
import 'task.dart';

class TaskListProvider with ChangeNotifier {
  List<Task> _tasks = [];

  List<Task> get tasks => _tasks;

  void add(Task) {
    _tasks.add(Task);
    notifyListeners();
  }
}
