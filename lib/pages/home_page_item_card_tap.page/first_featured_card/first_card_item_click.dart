import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:shopy_culture_flutter/pages/categories/category_item_click.dart';
import 'package:shopy_culture_flutter/widgets/category_widgets/categories_lisr_item.dart';
import 'package:shopy_culture_flutter/widgets/home_page_widgets/featured_list_grid_item.dart';
import 'package:shopy_culture_flutter/widgets/home_page_widgets/home_page_item_click_widgets.dart/first_featured_item_click.dart';
import 'package:shopy_culture_flutter/widgets/text_widget.dart';

import 'single_item_click_on_first_card_item.dart';

class FirstFeaturedCardItemClickPage extends StatefulWidget {
  static String id = 'first_featured_item_click';
  @override
  _FirstFeaturedCardItemClickPageState createState() =>
      _FirstFeaturedCardItemClickPageState();
}

class _FirstFeaturedCardItemClickPageState
    extends State<FirstFeaturedCardItemClickPage> {
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
      ),
      body: GridView.builder(
        scrollDirection: Axis.vertical,
        padding: EdgeInsets.fromLTRB(5, 0, 5, 0),
        shrinkWrap: true,
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          mainAxisSpacing: 4.5,
          crossAxisSpacing: 2.5,
          childAspectRatio: ((size.width) / 5) / ((size.height) / 7),
        ),
        itemCount: 9,
        itemBuilder: (BuildContext context, int index) {
          return FirstFeaturedItemClick(
            onTap: () =>
                Navigator.pushNamed(context, FirstCardSingleItemClick.id),
            url: 'https://wallpapercave.com/wp/gKHWym0.jpg',
            earasedPrice: 'Rs 76,928.00',
            price: 'Rs 67,928.00',
            soldCount: ' 0  sold',
            ratings: '3.4',
            headLine: 'HP 14s Core 15 10th Gen 14 inces FHD Laptop',
          );
        },
      ),
    );
  }
}
