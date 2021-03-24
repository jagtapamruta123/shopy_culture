import 'package:flutter/material.dart';
import 'package:shopy_culture_flutter/widgets/text_widget.dart';

class TodayDealCardItem extends StatelessWidget {
  String url;
  String price;
  Function onTap;
  TodayDealCardItem({
    this.url,
    this.price,
    this.onTap,
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 150,
      child: InkWell(
        onTap: onTap,
        child: Card(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(15.0),
          ),
          // shape: ShapeBorder,
          color: Colors.grey[300],
          elevation: 6,
          shadowColor: Colors.grey[100],
          margin: EdgeInsets.all(5),
          child: Stack(
            overflow: Overflow.visible,
            alignment: Alignment.topCenter,
            children: [
              Container(
                height: 120,
                decoration: BoxDecoration(
                  shape: BoxShape.rectangle,
                  borderRadius: BorderRadius.circular(10),
                  image: DecorationImage(
                    // alignment:Alignment. ,
                    fit: BoxFit.fill,
                    image: NetworkImage(
                      url,
                    ),
                  ),
                ),
              ),
              Positioned(
                // top: -1,
                bottom: 8,
                child: Card(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20.0),
                  ),
                  elevation: 6,
                  child: Container(
                    width: 80,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.blue,
                    ),
                    alignment: Alignment.center,
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: CustomTextWidget(
                        title: price,
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
