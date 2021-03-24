import 'package:flutter/material.dart';

class SwiperItem extends StatelessWidget {
  String url;

  SwiperItem({
    this.url,
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 175,
      child: Image.network(
        url,
        fit: BoxFit.fill,
      ),
    );
  }
}
