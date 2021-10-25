import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todolist/screens/task_screen.dart';

import 'models/task_data.dart';

void main() {
  runApp(MultiProvider(providers: [
    ChangeNotifierProvider(
      create: (_) => TaskData(),
    )
  ], child: const MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: TaskScreen(),
    );
  }
}
