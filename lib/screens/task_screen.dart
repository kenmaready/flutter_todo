import 'package:provider/provider.dart';
import 'package:flutter/material.dart';
//
import '../components/add_task_sheet.dart';
import '../components/task_list.dart';
import '../models/task_list_provider.dart';
import '../models/task.dart';

var testTasksList = [
  Task(description: 'Clean cat'),
  Task(description: 'Wash car'),
  Task(description: 'Feed Dog', completed: true)
];

class TaskScreen extends StatefulWidget {
  const TaskScreen({Key? key}) : super(key: key);

  @override
  State<TaskScreen> createState() => _TaskScreenState();
}

class _TaskScreenState extends State<TaskScreen> {
  // List<Task> tasks = testTasksList;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.orange.shade200,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            padding: const EdgeInsets.only(
                top: 90.0, left: 30.0, right: 30.0, bottom: 30.0),
            child:
                Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
              CircleAvatar(
                backgroundColor: Colors.white,
                radius: 42.0,
                child: Icon(
                  Icons.list,
                  color: Colors.orange.shade200,
                  size: 66.0,
                ),
              ),
              const SizedBox(height: 12.0),
              const Text(
                'Todoey',
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 54.0,
                    fontWeight: FontWeight.w600,
                    shadows: [
                      Shadow(
                          offset: Offset(2.0, 2.0),
                          blurRadius: 3.0,
                          color: Colors.black26)
                    ]),
              ),
              Text(
                '  ${context.watch<TaskListProvider>().tasks.length} Task${context.watch<TaskListProvider>().tasks.length == 1 ? '' : 's'}',
                style: const TextStyle(
                    color: Colors.white,
                    fontSize: 18.0,
                    fontWeight: FontWeight.w500),
              ),
            ]),
          ),
          Expanded(
            child: Container(
              padding: const EdgeInsets.symmetric(horizontal: 24.0),
              decoration: const BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(18.0),
                  topRight: Radius.circular(18.0),
                ),
              ),
              child: TaskList(),
            ),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.orange.shade200,
        onPressed: () => showModalBottomSheet(
            context: context,
            isScrollControlled: true,
            builder: (context) => AddTaskSheet()),
        mini: true,
        child: const Icon(
          Icons.add,
          size: 30.0,
        ),
      ),
    );
  }
}
