import 'package:flutter/material.dart';

class TaskTile extends StatelessWidget {
  const TaskTile({
    Key? key,
    required this.name,
    this.isChecked = false,
    required this.checkBoxCallBack,
  }) : super(key: key);
  final Function(bool?) checkBoxCallBack;
  final String name;
  final bool isChecked;
  @override
  Widget build(BuildContext context) {
    return CheckboxListTile(
      title: Text(
        name,
        style: TextStyle(
            decoration:
                isChecked ? TextDecoration.lineThrough : TextDecoration.none),
      ),
      controlAffinity: ListTileControlAffinity.platform,
      value: isChecked,
      onChanged: checkBoxCallBack,
      activeColor: Colors.lightBlueAccent,
      checkColor: Colors.white,
    );
  }
}
