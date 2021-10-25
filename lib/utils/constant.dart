import 'package:flutter/material.dart';

const kIconAdd = Icon(Icons.add);
const kRoundedRectangleBorder = RoundedRectangleBorder(
  borderRadius: BorderRadius.only(
    topRight: Radius.circular(30.0),
    topLeft: Radius.circular(30.0),
  ),
);
const kPadding = EdgeInsets.only(
  left: 30.0,
  top: 60.0,
  right: 30.0,
  bottom: 30.0,
);
const kCircleAvatar = CircleAvatar(
  backgroundColor: Colors.white,
  radius: 30.0,
  child: Icon(
    Icons.list,
    color: Colors.lightBlueAccent,
    size: 36.0,
  ),
);
const kBoxSize = SizedBox(
  height: 30.0,
);
const kTitleApp = Text(
  'TodoList',
  style: TextStyle(
    color: Colors.white,
    fontSize: 36.0,
  ),
);
