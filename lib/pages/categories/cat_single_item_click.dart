import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

import 'package:shopy_culture_flutter/widgets/home_page_widgets/featured_list_grid_item.dart';
import 'package:shopy_culture_flutter/widgets/text_widget.dart';

class SingleItemPage extends StatefulWidget {
  static String id = 'single_item_click';
  @override
  _SingleItemPageState createState() => _SingleItemPageState();
}

class _SingleItemPageState extends State<SingleItemPage> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    var size = MediaQuery.of(context).size;

    /*24 is for notification bar on Android*/
    final double itemHeight = (size.height - kToolbarHeight - 24) / 2;
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: CustomTextWidget(
          title: 'Item name',
        ),
        actions: [
          IconButton(
            icon: Icon(
              Icons.shopping_cart,
            ),
            onPressed: () {},
          ),
        ],
      ),
      body: GridView.builder(
        scrollDirection: Axis.vertical,
        padding: EdgeInsets.fromLTRB(5, 0, 5, 0),
        shrinkWrap: true,
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          mainAxisSpacing: 4.5,
          crossAxisSpacing: 2.5,
          childAspectRatio: ((size.width) / 5) / ((size.height) / 6.8),
        ),
        itemCount: 9,
        itemBuilder: (BuildContext context, int index) {
          return MansWearListItem(
            url: 'https://wallpapercave.com/wp/gKHWym0.jpg',
            ratingBar: RatingBar.builder(
              initialRating: 3,
              minRating: 1,
              direction: Axis.horizontal,
              allowHalfRating: true,
              itemCount: 5,
              itemSize: 15,
              itemPadding: EdgeInsets.symmetric(horizontal: 0.0),
              itemBuilder: (context, _) => Icon(
                Icons.star,
                // size: 5,
                color: Colors.amber,
              ),
              onRatingUpdate: (rating) {
                print(rating);
              },
            ),
            earasedPrice: 'Rs 76,928.00',
            price: 'Rs 67,928.00',
            soldCount: ' 0  sold',
            headLine: 'HP 14s Core 15 10th Gen 14 inces FHD Laptop',
          );
        },
      ),
    );
  }
}
