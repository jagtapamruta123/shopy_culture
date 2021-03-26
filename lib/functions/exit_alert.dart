import 'package:flutter/material.dart';

//TODO: Merge
Future<bool> exitAlert(BuildContext context) async {
  bool ret = await showDialog<bool>(
    context: context,
    builder: (BuildContext context) {
      return AlertDialog(
        content: SingleChildScrollView(
          child: ListBody(
            children: <Widget>[
              Text('Are you sure you want to exit?'),
            ],
          ),
        ),
        actions: <Widget>[
          // ignore: deprecated_member_use
          FlatButton(
            child: Text('Yes'),
            onPressed: () {
              Navigator.of(context).pop(true);
            },
          ),
          // ignore: deprecated_member_use
          FlatButton(
            child: Text('No'),
            onPressed: () {
              Navigator.of(context).pop(false);
            },
          ),
        ],
      );
    },
  );
  if (ret != null) if (ret) return true;
  return false;
}
