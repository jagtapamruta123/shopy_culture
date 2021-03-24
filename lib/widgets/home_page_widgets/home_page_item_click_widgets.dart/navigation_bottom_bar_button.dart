import 'package:flutter/material.dart';
import 'package:shopy_culture_flutter/widgets/text_widget.dart';

class BottomBarButton extends StatelessWidget {
  String name;
  Function onTap;
  Color titleColor;
  Color containerColor;
  BottomBarButton({
    @required this.onTap,
    this.name,
    this.containerColor,
    this.titleColor,
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {},
      child: Container(
        alignment: Alignment.center,
        child: CustomTextWidget(
          title: name,
          fontSize: 14,
          color: titleColor,
          letterSpecing: 0.1,
          fontWeight: FontWeight.w800,
        ),
        height: 55,
        width: MediaQuery.of(context).size.width / 2,
        color: containerColor,
      ),
    );
  }
}
