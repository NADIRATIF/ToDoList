import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todolist/models/task_data.dart';
import 'package:todolist/models/tasks.dart';
import 'package:todolist/widgets/check_task.dart';

class TasksList extends StatelessWidget {
  const TasksList({
    Key? key,
    required this.tasks,
  }) : super(key: key);
  final List<Tasks> tasks;

  @override
  Widget build(BuildContext context) {
    return Consumer<TaskData>(
      builder: (BuildContext context, item, Widget? child) {
        return ListView.builder(
          physics: const BouncingScrollPhysics(),
          itemCount: item.taskCount,
          itemBuilder: (BuildContext context, int index) {
            final currentItem = item.tasks[index];
            return TaskTile(
              name: currentItem.name,
              isChecked: currentItem.isDone,
              checkBoxCallBack: (value) {
                item.updateTask(currentItem);
              },
            );
          },
        );
      },
    );
  }
}
