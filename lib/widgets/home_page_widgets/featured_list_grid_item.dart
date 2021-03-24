import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:shopy_culture_flutter/widgets/text_widget.dart';

class GridListItem extends StatelessWidget {
  RatingBar ratingBar;
  String headLine;
  String price;
  String earasedPrice;
  String url;
  String soldCount;
  Function onTap;

  GridListItem({
    this.ratingBar,
    this.url,
    this.price,
    this.soldCount = '',
    this.earasedPrice,
    this.headLine,
    this.onTap,
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Card(
        elevation: 5,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10),
        ),
        // color: Colors.pink[50],
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Container(
                margin: EdgeInsets.fromLTRB(0, 10, 0, 0),
                height: 120,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    alignment: Alignment.center,
                    //fit: BoxFit.fill,
                    image: NetworkImage(url),
                  ),
                ),
              ),
              SizedBox(
                height: 17,
              ),
              CustomTextWidget(
                fontSize: 12,
                lines: 2,
                overFlow: TextOverflow.ellipsis,
                title: headLine,
              ),
              SizedBox(
                height: 10,
              ),
              CustomTextWidget(
                title: earasedPrice,
                fontSize: 10,
                decoration: TextDecoration.lineThrough,
              ),
              SizedBox(
                height: 2.5,
              ),
              CustomTextWidget(
                title: price,
                fontSize: 13,
                color: Colors.red,
                fontWeight: FontWeight.bold,
              ),
              // SizedBox(
              //   height: 1,
              // ),
              // CustomTextWidget(
              //   title: soldCount,
              //   fontSize: 8,
              //   color: Colors.blue,
              //   // fontWeight: FontWeight,
              // ),
              SizedBox(
                height: 8,
              ),
              Align(
                alignment: Alignment.bottomRight,
                child: ratingBar,
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class MansWearListItem extends StatelessWidget {
  RatingBar ratingBar;
  String headLine;
  String price;
  String earasedPrice;
  String url;
  String soldCount;
  Function onTap;

  MansWearListItem({
    this.ratingBar,
    this.url,
    this.price,
    this.onTap,
    this.soldCount = '',
    this.earasedPrice,
    this.headLine,
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        width: 150,
        child: Card(
          elevation: 5,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10),
          ),
          // color: Colors.pink[50],
          child: Padding(
            padding: const EdgeInsets.fromLTRB(10, 10, 8, 0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Container(
                  margin: EdgeInsets.fromLTRB(0, 10, 0, 0),
                  height: 105,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      alignment: Alignment.center,
                      //fit: BoxFit.fill,
                      image: NetworkImage(url),
                    ),
                  ),
                ),
                SizedBox(
                  height: 17,
                ),
                CustomTextWidget(
                    fontSize: 12,
                    lines: 2,
                    overFlow: TextOverflow.ellipsis,
                    title: headLine),
                SizedBox(
                  height: 10,
                ),
                CustomTextWidget(
                  title: earasedPrice,
                  fontSize: 10,
                  decoration: TextDecoration.lineThrough,
                ),
                SizedBox(
                  height: 2.5,
                ),
                CustomTextWidget(
                  title: price,
                  fontSize: 15,
                  color: Colors.red,
                  fontWeight: FontWeight.bold,
                ),
                SizedBox(
                  height: 2.5,
                ),
                Align(
                  alignment: Alignment.bottomRight,
                  child: CustomTextWidget(
                    title: soldCount,
                    fontSize: 10,
                    color: Colors.blue,
                    // fontWeight: FontWeight,
                  ),
                ),
                SizedBox(
                  height: 8,
                ),
                Align(
                  alignment: Alignment.bottomRight,
                  child: ratingBar,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
