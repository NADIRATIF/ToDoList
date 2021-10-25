import 'package:flutter/material.dart';

class Tasks extends ChangeNotifier {
  Tasks({
    required this.name,
    this.isDone = false,
  });

  final String name;
  bool isDone;

  bool toggleDone() {
    return isDone = !isDone;
  }
}
