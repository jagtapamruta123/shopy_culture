import 'package:flutter/material.dart';
import 'package:flutter_swiper/flutter_swiper.dart';
import 'package:shopy_culture_flutter/widgets/home_page_widgets/card_for_feature_and_today_deal_widget.dart';
import 'package:shopy_culture_flutter/widgets/home_page_widgets/home_page_item_click_widgets.dart/first_featured_item_click.dart';
import 'package:shopy_culture_flutter/widgets/home_page_widgets/home_page_item_click_widgets.dart/navigation_bottom_bar_button.dart';
import 'package:shopy_culture_flutter/widgets/home_page_widgets/swipper_item.dart';
import 'package:shopy_culture_flutter/widgets/text_widget.dart';
import 'package:flutter/cupertino.dart';

import '../../home_page.dart';

class FirstCardSingleItemClick extends StatefulWidget {
  static String id = 'first_card_single_item';
  @override
  _FirstCardSingleItemClickState createState() =>
      _FirstCardSingleItemClickState();
}

class _FirstCardSingleItemClickState extends State<FirstCardSingleItemClick> {
  var disable = false;
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: CustomTextWidget(
          title: 'Item Name',
          color: Colors.black,
        ),
        iconTheme: IconThemeData(
          color: Colors.black, //change your color here
        ),
        backgroundColor: Colors.transparent,
        elevation: 0,
      ),
      bottomNavigationBar: Row(
        children: [
          BottomBarButton(
            name: 'ADD TO CART',
            onTap: () {},
            containerColor: Colors.white,
          ),
          BottomBarButton(
            name: 'BUY NOW',
            onTap: () {},
            titleColor: Colors.white,
            containerColor: Colors.blue[900],
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Stack(
                children: [
                  Container(
                    height: 210,
                    child: Swiper(
                      itemBuilder: (BuildContext context, int index) {
                        return SwiperItem(
                          url: 'https://wallpapercave.com/wp/gKHWym0.jpg',
                        );
                      },
                      // viewportFraction: 0.8,
                      itemCount: 2,
                      autoplay: true,
                      itemWidth: double.infinity,
                      itemHeight: double.infinity,
                      layout: SwiperLayout.DEFAULT,
                      pagination: new SwiperPagination(),
                      control: new SwiperControl(
                        iconPrevious:
                            disable == false ? null : Icons.arrow_back_ios,
                        iconNext:
                            disable == false ? null : Icons.arrow_forward_ios,
                      ),
                    ),
                  ),
                  Icon(
                    Icons.favorite_outline,
                    color: Colors.red,
                    size: 40,
                  )
                ],
              ),
              SizedBox(
                height: 8,
              ),
              Row(
                children: [
                  CustomTextWidget(
                    title: 'BagPack',
                    fontSize: 18,
                    lines: 1,
                    overFlow: TextOverflow.ellipsis,
                  ),
                  Spacer(),
                  Icon(
                    Icons.star,
                    size: 16,
                    color: Colors.amber,
                  ),
                  CustomTextWidget(
                    title: ' (3.5) ',
                    fontSize: 14,
                  ),
                ],
              ),
              SizedBox(
                height: 3,
              ),
              CustomTextWidget(
                title: 'Rs. 20000',
                fontSize: 18,
                color: Colors.red,
                fontWeight: FontWeight.w500,
                lines: 1,
                overFlow: TextOverflow.ellipsis,
              ),
              SizedBox(
                height: 10,
              ),
              Divider(),
              SizedBox(
                height: 5,
              ),
              Align(
                alignment: Alignment.center,
                child: CustomTextWidget(
                  title: 'Inhouse Products',
                  fontSize: 18,
                  color: Colors.grey,
                  letterSpecing: 0.5,
                  fontWeight: FontWeight.w800,
                  lines: 1,
                  overFlow: TextOverflow.ellipsis,
                ),
              ),
              SizedBox(
                height: 5,
              ),
              Divider(),
              Container(
                height: 400,
                child: ListView.builder(
                  physics: NeverScrollableScrollPhysics(),
                  itemCount: 6,
                  itemBuilder: (BuildContext context, int count) {
                    return Card(
                      elevation: 0,
                      child: ListTile(
                        leading: CustomTextWidget(title: 'Buying option'),
                        trailing: Icon(
                          Icons.arrow_forward_ios_sharp,
                          size: 25,
                        ),
                      ),
                    );
                  },
                ),
              ),
              CardItem(
                title: 'PRODUCTS YOU MIGHT ALSO LIKE',
                listContainerHeight: 290,
                cardContainerHeight: 335,
                list: ListView.builder(
                    itemCount: 5,
                    padding: EdgeInsets.fromLTRB(5, 5, 5, 5),
                    shrinkWrap: true,
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (BuildContext context, int index) {
                      return FirstFeaturedItemClick(
                        url: 'https://wallpapercave.com/wp/gKHWym0.jpg',
                        // ratingBar: RatingBar.builder(
                        //   initialRating: 3,
                        //   minRating: 1,
                        //   direction: Axis.horizontal,
                        //   allowHalfRating: true,
                        //   itemCount: 5,
                        //   itemSize: 15,
                        //   itemPadding: EdgeInsets.symmetric(horizontal: 0.0),
                        //   itemBuilder: (context, _) => Icon(
                        //     Icons.star,
                        //     // size: 5,
                        //     color: Colors.amber,
                        //   ),
                        //   onRatingUpdate: (rating) {
                        //     print(rating);
                        //   },
                        // ),
                        ratings: '2.3',
                        soldCount: '0 sold',
                        earasedPrice: 'Rs 76,928.00',
                        price: 'Rs 67,928.00',
                        headLine: 'HP 14s Core 15 10th Gen 14 inces FHD Laptop',
                      );
                    }),
              ),
              CardItem(
                title: 'TOP SELLING PRODUCTS FROM THIS SELLER',
                listContainerHeight: 290,
                cardContainerHeight: 333,
                list: ListView.builder(
                    itemCount: 5,
                    padding: EdgeInsets.fromLTRB(5, 5, 5, 5),
                    shrinkWrap: true,
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (BuildContext context, int index) {
                      return FirstFeaturedItemClick(
                        url: 'https://wallpapercave.com/wp/gKHWym0.jpg',
                        ratings: '2.3',
                        soldCount: '0 sold',
                        earasedPrice: 'Rs 76,928.00',
                        price: 'Rs 67,928.00',
                        headLine: 'HP 14s Core 15 10th Gen 14 inces FHD Laptop',
                      );
                    }),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
