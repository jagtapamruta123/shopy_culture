import 'package:flutter/material.dart';
import 'package:shopy_culture_flutter/widgets/text_widget.dart';

class CardItem extends StatelessWidget {
  String title;
  double listContainerHeight;
  double cardContainerHeight;
  ListView list;

  CardItem({
    this.title,
    this.listContainerHeight,
    this.cardContainerHeight,
    this.list,
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 0,
      shape: RoundedRectangleBorder(
        borderRadius: const BorderRadius.all(
          Radius.circular(8.0),
        ),
      ),
      child: Container(
        height: cardContainerHeight,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(
              height: 5,
            ),
            CustomTextWidget(
              title: title,
              fontSize: 17,
              lines: 1,
              overFlow: TextOverflow.ellipsis,
              fontWeight: FontWeight.w800,
              letterSpecing: 0.5,
              color: Colors.grey,
            ),
            Divider(),
            Container(
              height: listContainerHeight,
              child: list,
            ),
          ],
        ),
      ),
    );
  }
}
