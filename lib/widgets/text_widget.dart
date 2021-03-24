import 'package:flutter/material.dart';

class CustomTextWidget extends StatelessWidget {
  String title;
  FontWeight fontWeight;
  double fontSize;
  Color color;
  double letterSpecing;
  TextDecoration decoration;
  int lines;
  TextOverflow overFlow;
  CustomTextWidget({
    this.color,
    this.title,
    this.fontSize,
    this.overFlow = TextOverflow.ellipsis,
    this.lines = 5,
    this.decoration,
    this.letterSpecing,
    this.fontWeight,
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      title,
      maxLines: lines,
      overflow: overFlow,
      style: TextStyle(
        color: color,
        letterSpacing: letterSpecing,
        fontWeight: fontWeight,
        fontSize: fontSize,
        decoration: decoration,
      ),
    );
  }
}
