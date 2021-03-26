import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:shopy_culture_flutter/widgets/text_widget.dart';
import 'package:im_stepper/main.dart';
import 'package:im_stepper/stepper.dart';

class OrderStatusPage extends StatefulWidget {
  static String id = 'order_status';
  @override
  _OrderStatusPageState createState() => _OrderStatusPageState();
}

class _OrderStatusPageState extends State<OrderStatusPage> {
  int activeStep = 1; // Initial step set to 5.

  int upperBound = 3;
  List<String> names = ['one', 'two', 'three', 'four'];

  displayName(int index) {
    switch (index) {
      case 0:
        return 'one';

        break;
      default:
    }
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: CustomTextWidget(
          title: 'Order Status',
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.fromLTRB(8, 10, 8, 0),
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Card(
                child: Padding(
                  padding: const EdgeInsets.fromLTRB(15, 10, 10, 10),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      OrderCardItem(
                        orderCode: 'Order code',
                        shippingmethod: 'Payment method',
                        shoppingRate: 'cod',
                        id: '129839148938',
                      ),
                      Divider(),
                      OrderCardItem(
                        orderCode: 'Order Date',
                        shippingmethod: 'Shipping method',
                        shoppingRate: 'Flat Shipping Rate',
                        id: '04-02-2020',
                      ),
                      Divider(),
                      OrderCardItem(
                        orderCode: 'Payment Status',
                        shippingmethod: 'Total Amount',
                        shoppingRate: 'Rs. 515.00',
                        id: 'unpaid',
                      ),
                      Divider(),
                      CustomTextWidget(
                        title: 'Shipping Address',
                        letterSpecing: 0.5,
                        lines: 1,
                        overFlow: TextOverflow.ellipsis,
                        fontWeight: FontWeight.w600,
                      ),
                      SizedBox(
                        height: 7,
                      ),
                      CustomTextWidget(
                        fontWeight: FontWeight.w400,
                        color: Colors.red,
                        letterSpecing: 0.7,
                        lines: 2,
                        overFlow: TextOverflow.ellipsis,
                        title: 'Elora palace',
                      ),
                      SizedBox(
                        height: 5,
                      ),
                    ],
                  ),
                ),
              ),
              Container(
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    begin: Alignment.topLeft,
                    end: Alignment.bottomRight,
                    colors: [
                      Colors.blue[100],
                      Colors.blue[50],
                    ],
                  ),
                ),
                child: Card(
                  child: Padding(
                    padding: const EdgeInsets.fromLTRB(15, 10, 10, 10),
                    child: Column(
                      children: [
                        CustomTextWidget(
                          fontWeight: FontWeight.w500,
                          // color: Colors.red,
                          letterSpecing: 0.7,
                          lines: 1,
                          fontSize: 12,
                          overFlow: TextOverflow.ellipsis,
                          title: 'Odrered Products',
                        ),
                        SizedBox(
                          height: 3,
                        ),
                        CustomTextWidget(
                          fontWeight: FontWeight.w500,
                          //color: Colors.red,
                          letterSpecing: 0.7,
                          lines: 1,
                          fontSize: 15,
                          overFlow: TextOverflow.ellipsis,
                          title: 'sutra Organic Whole Wheat Flour',
                        ),
                        SizedBox(
                          height: 8,
                        ),
                        Align(
                          alignment: Alignment.centerRight,
                          child: Container(
                            decoration: BoxDecoration(
                                border: Border.all(color: Colors.blue),
                                color: Colors.red.withOpacity(0.1),
                                borderRadius: BorderRadius.circular(10)),
                            child: Padding(
                              padding: const EdgeInsets.fromLTRB(5, 0, 5, 2),
                              child: CustomTextWidget(
                                title: 'QTY = 1',
                                fontSize: 10,
                              ),
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                              decoration: BoxDecoration(
                                border: Border.all(color: Colors.blue),
                                color: Colors.grey.withOpacity(0.1),
                                borderRadius: BorderRadius.circular(10),
                              ),
                              child: Padding(
                                padding: const EdgeInsets.fromLTRB(5, 0, 5, 2),
                                child: CustomTextWidget(
                                  title: 'Pending',
                                ),
                              ),
                            ),
                            Spacer(),
                            Container(
                              decoration: BoxDecoration(
                                border: Border.all(color: Colors.blue),
                                color: Colors.grey.withOpacity(0.1),
                                borderRadius: BorderRadius.circular(10),
                              ),
                              child: Padding(
                                padding: const EdgeInsets.fromLTRB(5, 0, 5, 2),
                                child: CustomTextWidget(
                                  title: 'price',
                                ),
                              ),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        Container(
                          height: 60,
                          decoration: BoxDecoration(
                            border: Border.all(color: Colors.grey),
                            borderRadius: BorderRadius.circular(6),
                          ),
                          child: IconStepper(
                            stepRadius: 10,
                            icons: [
                              Icon(
                                Icons.circle,
                                size: 7,
                              ),
                              Icon(
                                Icons.circle,
                                size: 7,
                              ),
                              Icon(
                                Icons.circle,
                                size: 7,
                              ),
                              Icon(
                                Icons.circle,
                                size: 7,
                              ),
                            ],

                            // activeStep property set to activeStep variable defined above.
                            activeStep: activeStep,

                            // This ensures step-tapping updates the activeStep.
                            onStepReached: (index) {
                              setState(() {
                                activeStep = index;
                              });
                            },
                          ),
                        ),
                        SizedBox(
                          height: 20,
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Divider(),
              OrderRowItem(
                title: 'SUB TOTAL',
                price: 'Rs 200.00',
              ),
              SizedBox(
                height: 7,
              ),
              OrderRowItem(
                title: 'TAX',
                price: 'Rs 20.00',
              ),
              SizedBox(
                height: 7,
              ),
              OrderRowItem(
                title: 'SHIPPLING COST',
                price: 'Rs 200.00',
              ),
              SizedBox(
                height: 7,
              ),
              OrderRowItem(
                title: 'DISCOUNT',
                price: 'Rs 200.00',
              ),
              SizedBox(
                height: 7,
              ),
              OrderRowItem(
                title: 'GRAND TOTAL',
                price: 'Rs 200.00',
              ),
              Divider(),
            ],
          ),
        ),
      ),
    );
  }
}

class OrderRowItem extends StatelessWidget {
  String title;
  String price;
  OrderRowItem({
    this.price,
    this.title,
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.end,
      crossAxisAlignment: CrossAxisAlignment.end,
      children: [
        CustomTextWidget(
          title: title,
          letterSpecing: 0.5,
          lines: 1,
          overFlow: TextOverflow.ellipsis,
          fontWeight: FontWeight.w500,
        ),
        SizedBox(
          width: 25,
        ),
        CustomTextWidget(
          title: price,
          letterSpecing: 0.5,
          lines: 1,
          overFlow: TextOverflow.ellipsis,
          fontWeight: FontWeight.w500,
        ),
      ],
    );
  }
}

class OrderCardItem extends StatelessWidget {
  String orderCode;
  String shippingmethod;
  String id;
  String shoppingRate;
  OrderCardItem({
    this.id,
    this.orderCode,
    this.shippingmethod,
    this.shoppingRate,
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            CustomTextWidget(
              title: orderCode,
              letterSpecing: 0.5,
              lines: 1,
              overFlow: TextOverflow.ellipsis,
              fontWeight: FontWeight.w600,
            ),
            SizedBox(
              height: 7,
            ),
            CustomTextWidget(
              fontWeight: FontWeight.w400,
              color: Colors.red,
              letterSpecing: 0.7,
              lines: 1,
              overFlow: TextOverflow.ellipsis,
              title: id,
            ),
            SizedBox(
              height: 5,
            ),
          ],
        ),
        Spacer(),
        Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            CustomTextWidget(
              title: shippingmethod,
              fontWeight: FontWeight.w600,
              letterSpecing: 0.5,
              lines: 1,
              overFlow: TextOverflow.ellipsis,
            ),
            SizedBox(
              height: 7,
            ),
            CustomTextWidget(
              fontWeight: FontWeight.w400,
              color: Colors.red,
              letterSpecing: 0.7,
              lines: 1,
              overFlow: TextOverflow.ellipsis,
              title: shoppingRate,
            ),
            SizedBox(
              height: 5,
            ),
          ],
        ),
      ],
    );
  }
}
