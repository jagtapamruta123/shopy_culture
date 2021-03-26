import 'package:flutter/material.dart';
import 'package:shopy_culture_flutter/constants/text_styles.dart';
import 'package:shopy_culture_flutter/pages/about_us_page.dart';
import 'package:shopy_culture_flutter/pages/cart/cart_page.dart';
import 'package:shopy_culture_flutter/pages/categories/categories_page.dart';
import 'package:shopy_culture_flutter/pages/contact_us_page.dart';
import 'package:shopy_culture_flutter/pages/home_page.dart';
import 'package:shopy_culture_flutter/pages/login/sign_in_page.dart';
import 'package:shopy_culture_flutter/pages/purchase/purchase_history.dart';
import 'package:shopy_culture_flutter/widgets/text_widget.dart';

class CustomDrawerWidget extends StatelessWidget {
  String userName;

  CustomDrawerWidget({
    this.userName = 'Amruta',
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          InkWell(
            onTap: () {
              Navigator.pushNamed(context, LoginPage.id);
            },
            child: Container(
              height: 130,
              child: DrawerHeader(
                margin: EdgeInsets.all(0.0),
                padding: EdgeInsets.fromLTRB(0, 8, 0, 0),
                decoration: BoxDecoration(
                  color: Theme.of(context).primaryColor,
                ),
                child: Column(
                  children: <Widget>[
                    Container(
                      alignment: Alignment.center,
                      child: CircleAvatar(
                        radius: 20,
                        child: Text(
                          '${userName?.substring(0, 1) ?? ''}',
                          style: TextStyle(
                            fontSize: 28.0,
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      '${userName ?? ''}',
                      style: kAppDrawerTextStyle,
                    ),
                  ],
                ),
              ),
            ),
          ),
          DrawerWidget(
            onTap: () => Navigator.pushNamed(context, HomePage.id),
            leading: Image.asset(
              'images/home.png',
              height: 25,
              width: 25,
            ),
            name: 'home',
          ),
          DrawerWidget(
            onTap: () => Navigator.pushNamed(context, CategoriesPage.id),
            leading: Image.asset(
              'images/categories.png',
              height: 25,
              width: 25,
            ),
            name: 'Categories',
          ),
          DrawerWidget(
            onTap: () => Navigator.pushNamed(context, CartPage.id),
            leading: Image.asset(
              'images/shoping_cart.png',
              height: 25,
              width: 25,
            ),
            name: 'Cart',
          ),
          DrawerWidget(
            onTap: null,
            leading: Image.asset(
              'images/wishlist.png',
              height: 25,
              width: 25,
            ),
            name: 'WishList',
          ),
          DrawerWidget(
            onTap: () => Navigator.pushNamed(context, PurchaseHistoryPage.id),
            leading: Image.asset(
              'images/purchase_history.png',
              height: 25,
              width: 25,
            ),
            name: 'Purchase History',
          ),
          DrawerWidget(
            onTap: () {
              //Navigator.pushNamed(context, AboutUsPage.id);
            },
            leading: Image.asset(
              'images/about_us.png',
              height: 25,
              width: 25,
            ),
            name: 'About Us',
          ),
          DrawerWidget(
            // onTap: () => Navigator.pushNamed(context, ContactUsPage.id),
            leading: Image.asset(
              'images/contact_us.png',
              height: 25,
              width: 25,
            ),
            name: 'Contact Us',
          ),
          Spacer(),
          Divider(),
          DrawerWidget(
            onTap: null,
            leading: Icon(
              Icons.logout,
            ),
            name: 'Logout',
          )
        ],
      ),
    );
  }
}

class DrawerWidget extends StatelessWidget {
  Widget leading;
  String name;
  Function onTap;
  DrawerWidget({
    @required this.name,
    @required this.leading,
    @required this.onTap,
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: ListTile(
        leading: leading,
        horizontalTitleGap: -1,
        title: CustomTextWidget(
          title: name,
        ),
      ),
    );
  }
}
