import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AddTasks extends StatelessWidget {
  const AddTasks({Key? key, required this.onChange, required this.onPress})
      : super(key: key);
  final Function(String) onChange;
  final Function()? onPress;
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 30.0),
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            const Text(
              'Add Task',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 36.0,
                color: Colors.lightBlueAccent,
              ),
            ),
            const SizedBox(
              height: 25.0,
            ),
            TextField(
              autofocus: true,
              decoration: const InputDecoration(),
              onChanged: onChange,
            ),
            const SizedBox(
              height: 25.0,
            ),
            ElevatedButton(
              style: ButtonStyle(
                padding: MaterialStateProperty.all(const EdgeInsets.all(18.0)),
                backgroundColor:
                    MaterialStateProperty.all(Colors.lightBlueAccent),
              ),
              child: const Text(
                'Add',
                style: TextStyle(fontSize: 24.0),
              ),
              onPressed: onPress,
            )
          ],
        ),
      ),
    );
  }
}
