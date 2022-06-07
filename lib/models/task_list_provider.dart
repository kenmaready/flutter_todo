import 'package:flutter/foundation.dart';
//
import 'task.dart';

class TaskListProvider with ChangeNotifier {
  final List<Task> _tasks = [];

  List<Task> get tasks => _tasks;
  int get length => _tasks.length;

  void add(Task task) {
    _tasks.add(task);
    notifyListeners();
  }
}
