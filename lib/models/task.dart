class Task {
  String description;
  bool completed;

  Task({required this.description, this.completed = false});

  bool get isCompleted {
    return completed;
  }

  void toggleCompleted() {
    completed = !completed;
    print('$description is now ${completed ? '' : 'not'} completed');
  }
}
