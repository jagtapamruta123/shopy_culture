import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:shopy_culture_flutter/pages/about_us_page.dart';
import 'package:shopy_culture_flutter/pages/cart/add_location.dart';
import 'package:shopy_culture_flutter/pages/cart/cart_page.dart';
import 'package:shopy_culture_flutter/pages/cart/checkout_page.dart';
import 'package:shopy_culture_flutter/pages/categories/categories_page.dart';
import 'package:shopy_culture_flutter/pages/categories/category_item_click.dart';
import 'package:shopy_culture_flutter/pages/contact_us_page.dart';
import 'package:shopy_culture_flutter/pages/home_page.dart';
import 'package:shopy_culture_flutter/pages/login/sign_in_page.dart';
import 'package:shopy_culture_flutter/pages/login/sign_up_page.dart';

import 'pages/categories/cat_single_item_click.dart';
import 'pages/home_page_item_card_tap.page/brand_item_click_page.dart';
import 'pages/home_page_item_card_tap.page/first_featured_card/first_card_item_click.dart';
import 'pages/home_page_item_card_tap.page/first_featured_card/single_item_click_on_first_card_item.dart';
import 'provider/theme_provider.dart';
import 'services/call_msg_service.dart';

void main() async {
  setupLocator();
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Shopy Culture',
      debugShowCheckedModeBanner: false,
      themeMode: ThemeMode.system,
      darkTheme: MyThemes.darkTheme,
      theme: MyThemes.lightTheme,
      initialRoute: HomePage.id,
      routes: {
        HomePage.id: (context) => HomePage(),
        LoginPage.id: (BuildContext context) => LoginPage(),
        SignUpPage.id: (BuildContext context) => SignUpPage(),
        ContactUsPage.id: (context) => ContactUsPage(),
        AboutUsPage.id: (context) => AboutUsPage(),
        CategoriesPage.id: (context) => CategoriesPage(),
        CategoryItemPage.id: (context) => CategoryItemPage(),
        SingleItemPage.id: (context) => SingleItemPage(),
        CartPage.id: (context) => CartPage(),
        FirstFeaturedCardItemClickPage.id: (context) =>
            FirstFeaturedCardItemClickPage(),
        FirstCardSingleItemClick.id: (context) => FirstCardSingleItemClick(),
        BrandItemPage.id: (context) => BrandItemPage(),
        CartPage.id: (context) => CartPage(),
        AddLocationPage.id: (context) => AddLocationPage(),
        CheckoutPage.id: (context) => CheckoutPage()
      },
    );
  }
}
