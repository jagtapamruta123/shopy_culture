import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:shopy_culture_flutter/widgets/flat_button_widget.dart';
import 'package:shopy_culture_flutter/widgets/text_form_field.dart';
import 'package:shopy_culture_flutter/widgets/text_widget.dart';

class CheckoutPage extends StatefulWidget {
  static String id = 'checkout_page';
  @override
  _CheckoutPageState createState() => _CheckoutPageState();
}

class _CheckoutPageState extends State<CheckoutPage> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: CustomTextWidget(
          title: 'Checkout',
        ),
        centerTitle: true,
      ),
      bottomNavigationBar: NavigationButtonWidgetApplyCuopon(
        title: 'PLACE MY ORDER',
        onTap: () {},
        subTotal: 'TOTAL AMOUNT',
      ),
      body: ListView.builder(
          itemCount: 3,
          itemBuilder: (BuildContext context, int index) {
            return Container(
              height: 90,
              child: Card(
                elevation: 5,
                child: Padding(
                  padding: const EdgeInsets.fromLTRB(20, 0, 0, 0),
                  child: Row(
                    children: [
                      Icon(
                        Icons.card_giftcard,
                        size: 50,
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      CustomTextWidget(
                        title: 'Cash on Delivery',
                        fontSize: 17,
                        fontWeight: FontWeight.w500,
                      )
                    ],
                  ),
                ),
              ),
            );
          }),
    );
  }
}
