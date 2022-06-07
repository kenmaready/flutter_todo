import 'package:provider/provider.dart';
import 'package:flutter/material.dart';
//
import './models/task_list_provider.dart';
import 'screens/task_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (_) => TaskListProvider(),
      child: const MaterialApp(
        home: TaskScreen(),
      ),
    );
  }
}
