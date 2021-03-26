import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:shopy_culture_flutter/app_drawer.dart';
import 'package:shopy_culture_flutter/functions/check_internet.dart';
import 'package:shopy_culture_flutter/pages/cart/cart_page.dart';
import 'package:shopy_culture_flutter/pages/categories/cat_single_item_click.dart';
import 'package:shopy_culture_flutter/pages/home_page_item_card_tap.page/brand_item_click_page.dart';
import 'package:shopy_culture_flutter/pages/home_page_item_card_tap.page/first_featured_card/first_card_item_click.dart';
import 'package:shopy_culture_flutter/pages/home_page_item_card_tap.page/first_featured_card/single_item_click_on_first_card_item.dart';
import 'package:shopy_culture_flutter/widgets/home_page_widgets/card_for_feature_and_today_deal_widget.dart';
import 'package:shopy_culture_flutter/widgets/home_page_widgets/featured_list_grid_item.dart';
import 'package:shopy_culture_flutter/widgets/home_page_widgets/featured_list_item.dart';
import 'package:shopy_culture_flutter/widgets/home_page_widgets/swipper_item.dart';
import 'package:shopy_culture_flutter/widgets/home_page_widgets/today_deal_widget.dart';
import 'package:shopy_culture_flutter/widgets/search_bar_home_page_widget.dart';
import 'package:shopy_culture_flutter/widgets/text_widget.dart';
import 'package:flutter_swiper/flutter_swiper.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

class HomePage extends StatefulWidget {
  static String id = 'home_page';
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _currentIndex = 0;
  var disable = false;
  ConnectivityStream stream = ConnectivityStream();
  bool _showIcon() {
    setState(() {
      disable = false;

      return disable;
    });
  }

  @override
  void initState() {
    stream.getState((val) {
      setState(() {});
    });

    // print(ConnectivityStream.isInternet);
    // TODO: implement initState
    // CheckInternate().checkConnection(context);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    var size = MediaQuery.of(context).size;

    /*24 is for notification bar on Android*/
    final double itemHeight = (size.height - kToolbarHeight - 24) / 2;
    // final double itemWidth = ;
    return Scaffold(
      drawer: CustomDrawerWidget(),
      appBar: AppBar(
        centerTitle: true,
        title: CustomTextWidget(
          title: 'Shopy Culture',
        ),
        actions: [
          IconButton(
            icon: Icon(
              Icons.shopping_cart,
            ),
            onPressed: () => Navigator.pushNamed(context, CartPage.id),
          ),
        ],
      ),
      bottomNavigationBar: Visibility(
        visible: !ConnectivityStream.isInternet,
        child: NoInternetBanner(),
      ),
      //  ? NoInternetBanner() : Container(),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              TabSearchBarWidget(
                readOnly: false,
                filled: false,
                function: () {},
                hintText: 'Search Your Product...',
              ),
              SizedBox(
                height: 20,
              ),
              Container(
                height: 210,
                child: Card(
                  elevation: 6,
                  child: Swiper(
                    itemBuilder: (BuildContext context, int index) {
                      return SwiperItem(
                        url:
                            'https://media.istockphoto.com/photos/cute-panda-bear-climbing-in-tree-picture-id523761634?k=6&m=523761634&s=612x612&w=0&h=0L2VZTQvcOVkSmj0ZLL9ntIw2FXqJwZ70fz2Qmq6D-c=',
                      );
                    },
                    // viewportFraction: 0.8,
                    itemCount: 4,
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
              ),
              SizedBox(
                height: 10,
              ),
              CardItem(
                title: 'FEATURES CATEGORIES',
                listContainerHeight: 120,
                cardContainerHeight: 190,
                list: ListView.builder(
                    itemCount: 5,
                    padding: EdgeInsets.fromLTRB(5, 5, 5, 5),
                    shrinkWrap: true,
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (BuildContext context, int index) {
                      return FeaturedCardItem(
                        onTap: () => Navigator.pushNamed(
                            context, FirstFeaturedCardItemClickPage.id),
                        name: 'name',
                        url:
                            'https://media.istockphoto.com/photos/cute-panda-bear-climbing-in-tree-picture-id523761634?k=6&m=523761634&s=612x612&w=0&h=0L2VZTQvcOVkSmj0ZLL9ntIw2FXqJwZ70fz2Qmq6D-c=',
                      );
                    }),
              ),
              CardItem(
                title: 'TODAY\'S DEAL',
                listContainerHeight: 170,
                cardContainerHeight: 230,
                list: ListView.builder(
                    itemCount: 5,
                    padding: EdgeInsets.fromLTRB(5, 5, 5, 5),
                    shrinkWrap: true,
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (BuildContext context, int index) {
                      return TodayDealCardItem(
                        onTap: () => Navigator.pushNamed(
                            context, FirstCardSingleItemClick.id),
                        price: '2000000',
                        url:
                            'https://media.istockphoto.com/photos/cute-panda-bear-climbing-in-tree-picture-id523761634?k=6&m=523761634&s=612x612&w=0&h=0L2VZTQvcOVkSmj0ZLL9ntIw2FXqJwZ70fz2Qmq6D-c=',
                      );
                    }),
              ),
              SizedBox(
                height: 5,
              ),
              Container(
                height: 180,
                child: Card(
                  elevation: 6,
                  child: Swiper(
                    itemBuilder: (BuildContext context, int index) {
                      return SwiperItem(
                        url:
                            'https://media.istockphoto.com/photos/cute-panda-bear-climbing-in-tree-picture-id523761634?k=6&m=523761634&s=612x612&w=0&h=0L2VZTQvcOVkSmj0ZLL9ntIw2FXqJwZ70fz2Qmq6D-c=',
                      );
                    },
                    // viewportFraction: 0.8,
                    itemCount: 1,
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
              ),
              Card(
                elevation: 0,
                shape: RoundedRectangleBorder(
                  borderRadius: const BorderRadius.all(
                    Radius.circular(8.0),
                  ),
                ),
                child: Container(
                  height: 600,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      SizedBox(
                        height: 6,
                      ),
                      CustomTextWidget(
                        title: 'FEATURED CATEGORIED',
                        fontWeight: FontWeight.w700,
                        color: Colors.grey,
                        fontSize: 17,
                        letterSpecing: 0.5,
                      ),
                      Divider(),
                      Container(
                        height: 550,
                        child: GridView.builder(
                          scrollDirection: Axis.horizontal,
                          padding: EdgeInsets.fromLTRB(5, 0, 5, 0),
                          shrinkWrap: true,
                          gridDelegate:
                              SliverGridDelegateWithFixedCrossAxisCount(
                            crossAxisCount: 2,
                            mainAxisSpacing: 4.5,
                            crossAxisSpacing: 2.5,
                            childAspectRatio:
                                ((size.width) / 5) / ((size.height) / 13.5),
                          ),
                          itemCount: 9,
                          itemBuilder: (BuildContext context, int index) {
                            return GridListItem(
                              onTap: () => Navigator.pushNamed(
                                  context, FirstCardSingleItemClick.id),
                              url: 'https://wallpapercave.com/wp/gKHWym0.jpg',
                              ratingBar: RatingBar.builder(
                                initialRating: 3,
                                minRating: 1,
                                direction: Axis.horizontal,
                                allowHalfRating: true,
                                itemCount: 5,
                                itemSize: 15,
                                itemPadding:
                                    EdgeInsets.symmetric(horizontal: 0.0),
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
                              headLine:
                                  'HP 14s Core 15 10th Gen 14 inces FHD Laptop',
                            );
                          },
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              CardItem(
                title: 'MEN\'S WEAR',
                listContainerHeight: 290,
                cardContainerHeight: 335,
                list: ListView.builder(
                    itemCount: 5,
                    padding: EdgeInsets.fromLTRB(5, 5, 5, 5),
                    shrinkWrap: true,
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (BuildContext context, int index) {
                      return MansWearListItem(
                        onTap: () => Navigator.pushNamed(
                            context, FirstCardSingleItemClick.id),
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
                        soldCount: '0 sold',
                        earasedPrice: 'Rs 76,928.00',
                        price: 'Rs 67,928.00',
                        headLine: 'HP 14s Core 15 10th Gen 14 inces FHD Laptop',
                      );
                    }),
              ),
              CardItem(
                title: 'WOMEN\'S WEAR',
                listContainerHeight: 290,
                cardContainerHeight: 335,
                list: ListView.builder(
                  itemCount: 5,
                  padding: EdgeInsets.fromLTRB(5, 5, 5, 5),
                  shrinkWrap: true,
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (BuildContext context, int index) {
                    return MansWearListItem(
                      onTap: () => Navigator.pushNamed(
                          context, FirstCardSingleItemClick.id),
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
                      soldCount: '0 sold',
                      earasedPrice: 'Rs 76,928.00',
                      price: 'Rs 67,928.00',
                      headLine: 'HP 14s Core 15 10th Gen 14 inces FHD Laptop',
                    );
                  },
                ),
              ),
              CardItem(
                title: 'BEAUTY AND SKINCARE',
                listContainerHeight: 290,
                cardContainerHeight: 335,
                list: ListView.builder(
                    itemCount: 5,
                    padding: EdgeInsets.fromLTRB(5, 5, 5, 5),
                    shrinkWrap: true,
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (BuildContext context, int index) {
                      return MansWearListItem(
                        onTap: () => Navigator.pushNamed(
                            context, FirstCardSingleItemClick.id),
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
                        soldCount: '0 sold',
                        earasedPrice: '',
                        price: 'Rs 67,928.00',
                        headLine: 'HP 14s Core 15 10th Gen 14 inces FHD Laptop',
                      );
                    }),
              ),
              CardItem(
                title: 'BAG AND LUGGAGE',
                listContainerHeight: 290,
                cardContainerHeight: 335,
                list: ListView.builder(
                    itemCount: 5,
                    padding: EdgeInsets.fromLTRB(5, 5, 5, 5),
                    shrinkWrap: true,
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (BuildContext context, int index) {
                      return MansWearListItem(
                        onTap: () => Navigator.pushNamed(
                            context, FirstCardSingleItemClick.id),
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
                        soldCount: '0 sold',
                        earasedPrice: '',
                        price: 'Rs. 67,928.00',
                        headLine: 'Bagpack',
                      );
                    }),
              ),
              CardItem(
                title: 'KITCHEN AND HOME APPLIANCE',
                listContainerHeight: 290,
                cardContainerHeight: 335,
                list: ListView.builder(
                    itemCount: 5,
                    padding: EdgeInsets.fromLTRB(5, 5, 5, 5),
                    shrinkWrap: true,
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (BuildContext context, int index) {
                      return MansWearListItem(
                        onTap: () => Navigator.pushNamed(
                            context, FirstCardSingleItemClick.id),
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
                        soldCount: '0 sold',
                        earasedPrice: '',
                        price: 'Rs. 00',
                        headLine: 'BOOK',
                      );
                    }),
              ),
              CardItem(
                title: 'MOBILES AND PC\'S',
                listContainerHeight: 290,
                cardContainerHeight: 335,
                list: ListView.builder(
                    itemCount: 5,
                    padding: EdgeInsets.fromLTRB(5, 5, 5, 5),
                    shrinkWrap: true,
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (BuildContext context, int index) {
                      return MansWearListItem(
                        onTap: () => Navigator.pushNamed(
                            context, FirstCardSingleItemClick.id),
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
                        soldCount: '0 sold',
                        earasedPrice: 'Rs 76,928.00',
                        price: 'Rs 67,928.00',
                        headLine: 'HP 14s Core 15 10th Gen 14 inces FHD Laptop',
                      );
                    }),
              ),
              CardItem(
                title: 'SPORTS AND FITNESS',
                listContainerHeight: 290,
                cardContainerHeight: 335,
                list: ListView.builder(
                    itemCount: 5,
                    padding: EdgeInsets.fromLTRB(5, 5, 5, 5),
                    shrinkWrap: true,
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (BuildContext context, int index) {
                      return MansWearListItem(
                        onTap: () => Navigator.pushNamed(
                            context, FirstCardSingleItemClick.id),
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
                        soldCount: '0 sold',
                        earasedPrice: '',
                        price: 'Rs. 00',
                        headLine: 'Budhha',
                      );
                    }),
              ),
              CardItem(
                title: 'TOY AND BABY PRODUCTS ',
                listContainerHeight: 290,
                cardContainerHeight: 335,
                list: ListView.builder(
                    itemCount: 5,
                    padding: EdgeInsets.fromLTRB(5, 5, 5, 5),
                    shrinkWrap: true,
                    scrollDirection: Axis.horizontal,
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
                        onTap: () => Navigator.pushNamed(
                            context, FirstCardSingleItemClick.id),
                        soldCount: '0 sold',
                        earasedPrice: 'Rs 76,928.00',
                        price: 'Rs .00',
                        headLine: 'Shirt for kid',
                      );
                    }),
              ),
              SizedBox(
                height: 10,
              ),
              Container(
                height: 180,
                child: Card(
                  elevation: 6,
                  child: Swiper(
                    itemBuilder: (BuildContext context, int index) {
                      return SwiperItem(
                        url:
                            'https://media.istockphoto.com/photos/cute-panda-bear-climbing-in-tree-picture-id523761634?k=6&m=523761634&s=612x612&w=0&h=0L2VZTQvcOVkSmj0ZLL9ntIw2FXqJwZ70fz2Qmq6D-c=',
                      );
                    },
                    // viewportFraction: 0.8,
                    itemCount: 1,
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
              ),
              SizedBox(
                height: 10,
              ),
              CardItem(
                title: 'BEST SELLING',
                listContainerHeight: 100,
                cardContainerHeight: 170,
                list: ListView.builder(
                    itemCount: 5,
                    // padding: EdgeInsets.fromLTRB(5, 5, 5, 5),
                    shrinkWrap: true,
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (BuildContext context, int index) {
                      return InkWell(
                        onTap: () => Navigator.pushNamed(
                            context, FirstCardSingleItemClick.id),
                        child: Container(
                          width: 250,
                          child: Card(
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(12),
                            ),
                            elevation: 5,
                            child: ListTile(
                              subtitle: Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  CustomTextWidget(
                                    title: 'Rs. 67928.00',
                                    color: Colors.red,
                                    fontWeight: FontWeight.bold,
                                    overFlow: TextOverflow.ellipsis,
                                    fontSize: 13,
                                    lines: 1,
                                  ),
                                  CustomTextWidget(
                                    title: 'Rs. 67928.00',
                                    fontSize: 10,
                                    fontWeight: FontWeight.normal,
                                    decoration: TextDecoration.lineThrough,
                                    overFlow: TextOverflow.ellipsis,
                                    lines: 1,
                                  ),
                                  Align(
                                    alignment: Alignment.bottomRight,
                                    child: RatingBar.builder(
                                      initialRating: 3,
                                      minRating: 1,
                                      direction: Axis.horizontal,
                                      allowHalfRating: true,
                                      itemCount: 5,
                                      itemSize: 15,
                                      itemPadding:
                                          EdgeInsets.symmetric(horizontal: 0.0),
                                      itemBuilder: (context, _) => Icon(
                                        Icons.star,
                                        // size: 5,
                                        color: Colors.amber,
                                      ),
                                      onRatingUpdate: (rating) {
                                        print(rating);
                                      },
                                    ),
                                  ),
                                ],
                              ),
                              leading: Container(
                                height: 200,
                                width: 70,
                                decoration: BoxDecoration(
                                  image: DecorationImage(
                                    fit: BoxFit.fill,
                                    image: NetworkImage(
                                        'https://media.istockphoto.com/photos/cute-panda-bear-climbing-in-tree-picture-id523761634?k=6&m=523761634&s=612x612&w=0&h=0L2VZTQvcOVkSmj0ZLL9ntIw2FXqJwZ70fz2Qmq6D-c='),
                                  ),
                                ),
                              ),
                              title: CustomTextWidget(
                                title:
                                    'HP 14s core i5 10th Gen 14 inch FHD laptop',
                                overFlow: TextOverflow.ellipsis,
                                fontSize: 13,
                                lines: 2,
                              ),
                            ),
                          ),
                        ),
                      );
                    }),
              ),
              SizedBox(
                height: 10,
              ),
              Container(
                height: 180,
                child: Card(
                  elevation: 6,
                  child: Swiper(
                    itemBuilder: (BuildContext context, int index) {
                      return SwiperItem(
                        url:
                            'https://media.istockphoto.com/photos/cute-panda-bear-climbing-in-tree-picture-id523761634?k=6&m=523761634&s=612x612&w=0&h=0L2VZTQvcOVkSmj0ZLL9ntIw2FXqJwZ70fz2Qmq6D-c=',
                      );
                    },
                    // viewportFraction: 0.8,
                    itemCount: 1,
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
              ),
              SizedBox(
                height: 10,
              ),
              Card(
                elevation: 5,
                shape: RoundedRectangleBorder(
                  borderRadius: const BorderRadius.all(
                    Radius.circular(8.0),
                  ),
                ),
                child: Container(
                  height: 200,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      SizedBox(
                        height: 6,
                      ),
                      CustomTextWidget(
                        title: 'OUR POPULAR BRANDS',
                        fontWeight: FontWeight.w700,
                        color: Colors.grey,
                        fontSize: 17,
                        letterSpecing: 0.5,
                      ),
                      Divider(),
                      Container(
                        height: 150,
                        child: GridView.builder(
                          scrollDirection: Axis.horizontal,
                          padding: EdgeInsets.fromLTRB(5, 0, 5, 0),
                          shrinkWrap: true,
                          gridDelegate:
                              SliverGridDelegateWithFixedCrossAxisCount(
                            crossAxisCount: 2,
                            mainAxisSpacing: 40,
                            crossAxisSpacing: 10,
                          ),
                          itemCount: 5,
                          itemBuilder: (BuildContext context, int index) {
                            return PopularBrandItem(
                              url: 'https://wallpapercave.com/wp/gKHWym0.jpg',
                              onTap: () => Navigator.pushNamed(
                                  context, BrandItemPage.id),
                            );
                          },
                        ),
                      ),
                    ],
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

class PopularBrandItem extends StatelessWidget {
  String url;
  Function onTap;
  PopularBrandItem({
    this.onTap,
    this.url,
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        // width: 800,
        child: Card(
          elevation: 5,
          child: Padding(
            padding: const EdgeInsets.all(2.0),
            child: Container(
              //  height: 300,
              // width: 800,
              decoration: BoxDecoration(
                image: DecorationImage(
                  fit: BoxFit.fill,
                  image: NetworkImage(url),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
