import 'package:flutter/material.dart';

//TODO: Merge
showNoteSnackBar(ScaffoldState state, String text, {int duration = 0}) {
  if (text != null) {
    if (duration == 0) {
      duration = (text.split(' ').length / 2.0833).ceil();
    }
    print('Snack bar: ' + text);

    WidgetsBinding.instance.addPostFrameCallback(
      (_) => state.showSnackBar(
        SnackBar(
          content: Text(text),
          duration: Duration(seconds: duration),
        ),
      ),
    );
  }
}

showNoteSnackBarCurrent(ScaffoldState state, String text, {int duration = 0}) {
  if (text != null) {
    if (duration == 0) {
      duration = (text.split(' ').length /2.0833).ceil();
    }
    print('Snack bar: ' + text);

    state.showSnackBar(
      SnackBar(
        content: Text(text),
        duration: Duration(seconds: duration),
      ),
    );
  }
}
