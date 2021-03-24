import 'package:flutter/material.dart';
import 'package:shopy_culture_flutter/widgets/text_widget.dart';

class FirstFeaturedItemClick extends StatelessWidget {
  String headLine;
  String price;
  String earasedPrice;
  String url;
  String soldCount;
  Function onTap;
  String ratings;

  FirstFeaturedItemClick({
    this.onTap,
    this.url,
    this.ratings,
    this.price,
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
                  height: 1,
                ),
                Align(
                  alignment: Alignment.bottomRight,
                  child: CustomTextWidget(
                    title: soldCount,
                    fontSize: 12,
                    color: Colors.blue,
                    // fontWeight: FontWeight,
                  ),
                ),
                SizedBox(
                  height: 1,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Icon(
                      Icons.star,
                      size: 14,
                      color: Colors.amber,
                    ),
                    CustomTextWidget(
                      title: ' ($ratings) ',
                      fontSize: 10,
                    )
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
