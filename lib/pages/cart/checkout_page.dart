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
      bottomNavigationBar: NavigationButtonWidget(
        title: 'PLACE MY ORDER',
        onTap: () {},
        subTotal: 'TOTAL AMOUNT',
      ),
      body: Stack(
        alignment: Alignment.topCenter,
        children: [
          ListView.builder(
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
          Positioned(
            bottom: 200,
            child: CustomTextFormFieldWidget(
              enable: true,
              inputTextFormatter: [
                LengthLimitingTextInputFormatter(10),
              ],
              isDense: true,
              align: TextAlign.center,
              obscureText: true,
              filled: false,
              onChanged: (value) {
                //password = value;
              },
              padding: EdgeInsets.fromLTRB(5, 5, 5, 3),

              hintFontSize: 15,
              border:
                  //OutlineInputBorder(borderRadius: BorderRadius.circular(30), borderSide: BorderSide.none)),
                  OutlineInputBorder(
                borderRadius: BorderRadius.circular(30),
                borderSide: BorderSide.none,
              ),
              action: TextInputAction.next,
              //  labelText: isLabel == true ? 'password ' : "",
              hintText: 'COUPON CODE',
            ),
          )
        ],
      ),
    );
  }
}
