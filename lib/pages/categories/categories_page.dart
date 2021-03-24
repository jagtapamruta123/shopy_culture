import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:shopy_culture_flutter/pages/categories/category_item_click.dart';
import 'package:shopy_culture_flutter/widgets/category_widgets/categories_lisr_item.dart';
import 'package:shopy_culture_flutter/widgets/text_widget.dart';

class CategoriesPage extends StatefulWidget {
  static String id = 'categories';
  @override
  _CategoriesPageState createState() => _CategoriesPageState();
}

class _CategoriesPageState extends State<CategoriesPage> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: CustomTextWidget(
          title: 'Categories',
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
      body: ListView.builder(
        itemCount: 50,
        itemBuilder: (BuildContext context, int index) {
          return Card(
            child: CategoryListTile(
              onTap: () {
                Navigator.pushNamed(context, CategoryItemPage.id);
              },
              categoryName: 'Cat Name',
              url: 'https://wallpapercave.com/wp/gKHWym0.jpg',
            ),
          );
        },
      ),
    );
  }
}
