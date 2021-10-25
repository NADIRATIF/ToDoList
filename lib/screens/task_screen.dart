import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todolist/models/task_data.dart';
import 'package:todolist/utils/constant.dart';
import 'package:todolist/widgets/tasks_list.dart';

import 'add_task.dart';

class TaskScreen extends StatefulWidget {
  const TaskScreen({Key? key}) : super(key: key);

  @override
  State<TaskScreen> createState() => _TaskScreenState();
}

class _TaskScreenState extends State<TaskScreen> {
  late String taskName;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.lightBlueAccent,
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.lightBlueAccent,
        child: kIconAdd,
        onPressed: () {
          showModalBottomSheet(
            shape: kRoundedRectangleBorder,
            context: context,
            builder: (context) => AddTasks(
              onChange: (String value) {
                setState(
                  () {
                    taskName = value;
                  },
                );
              },
              onPress: () {
                context.read<TaskData>().addTask(taskName);
                Navigator.pop(context);
              },
            ),
          );
        },
      ),
      body: SafeArea(
        child: Consumer<TaskData>(
          builder: (BuildContext context, item, Widget? child) {
            return Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  padding: kPadding,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      kCircleAvatar,
                      kBoxSize,
                      kTitleApp,
                      Text(
                        '${item.taskCount} tasks',
                        style: const TextStyle(
                          color: Colors.white70,
                          fontSize: 18.0,
                        ),
                      ),
                    ],
                  ),
                ),
                Expanded(
                  child: Container(
                    padding: kPadding,
                    decoration: const BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(30.0),
                        topRight: Radius.circular(30.0),
                      ),
                    ),
                    child: TasksList(
                      tasks: item.tasks,
                    ),
                  ),
                ),
              ],
            );
          },
        ),
      ),
    );
  }
}
