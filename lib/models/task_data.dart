import 'dart:collection';

import 'package:flutter/foundation.dart';
import 'package:todolist/models/tasks.dart';

class TaskData extends ChangeNotifier {
  final List<Tasks> _tasks = [
    Tasks(name: 'cardLesson'),
    Tasks(name: 'diceLesson'),
    Tasks(name: 'btcTracker'),
  ];

  UnmodifiableListView<Tasks> get tasks => UnmodifiableListView(_tasks);

  int get taskCount => _tasks.length;

  void addTask(String taskName) {
    _tasks.add(Tasks(name: taskName));
    notifyListeners();
  }

  void updateTask(Tasks task) {
    task.toggleDone();
    //deleteTask(task);
    notifyListeners();
  }

  void deleteTask(Tasks task) {
    _tasks.remove(task);
    notifyListeners();
  }
}
