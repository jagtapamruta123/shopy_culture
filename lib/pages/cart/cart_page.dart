import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:shopy_culture_flutter/pages/cart/add_location.dart';
import 'package:shopy_culture_flutter/pages/contact_us_page.dart';
import 'package:shopy_culture_flutter/services/call_msg_service.dart';
import 'package:shopy_culture_flutter/widgets/flat_button_widget.dart';
import 'package:shopy_culture_flutter/widgets/text_widget.dart';

class CartPage extends StatefulWidget {
  static String id = 'cart_page';
  @override
  _CartPageState createState() => _CartPageState();
}

class _CartPageState extends State<CartPage> {
  bool isCartEmpty = false;
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: CustomTextWidget(
          title: 'Your Cart',
        ),
      ),
      bottomNavigationBar: NavigationButtonWidget(
        subTotal: 'SUBTOTAL',
        onTapSubTotal: () {},
        title: 'CHECKOUT   [total]',
        onTap: () => Navigator.pushNamed(context, AddLocationPage.id),
      ),
      body: isCartEmpty
          ? Center(
              child: CustomTextWidget(
                fontSize: 17,
                letterSpecing: 0.5,
                title: 'Your Shopping Cart Is Empty',
              ),
            )
          : ListView.builder(itemBuilder: (BuildContext context, int index) {
              return InkWell(
                onTap: () {},
                child: Container(
                  margin: EdgeInsets.fromLTRB(10, 0, 10, 0),
                  height: 100,
                  child: Card(
                    // width: double.infinity,
                    child: ListTile(
                      minLeadingWidth: 80,
                      // minVerticalPadding: 20,
                      title: CustomTextWidget(
                        title: 'product name',
                      ),
                      subtitle: Container(
                        width: 50,
                        margin: EdgeInsets.fromLTRB(4, 12, 60, 0),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(11.5),
                          border: Border.all(
                            color: Colors.blue,
                          ),
                        ),
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            CircleAvatar(
                              radius: 10,
                              child: Icon(
                                Icons.add,
                                size: 17,
                              ),
                            ),
                            Spacer(),
                            Text('1'),
                            Spacer(),
                            CircleAvatar(
                              radius: 10,
                              child: Icon(
                                Icons.remove,
                                size: 17,
                              ),
                            ),
                          ],
                        ),
                      ),
                      trailing: Column(
                        mainAxisAlignment: MainAxisAlignment.end,
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          Icon(
                            Icons.delete_outline,
                          ),
                          Spacer(),
                          CustomTextWidget(
                            title: 'Rs. 20000',
                            color: Colors.red,
                            fontWeight: FontWeight.w600,
                            lines: 1,
                            overFlow: TextOverflow.ellipsis,
                          )
                        ],
                      ),
                      leading: Container(
                        width: 70,
                        decoration: BoxDecoration(
                          image: DecorationImage(
                            fit: BoxFit.fitHeight,
                            image: NetworkImage(
                              'https://wallpapercave.com/wp/gKHWym0.jpg',
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              );
            }),
    );
  }
}
