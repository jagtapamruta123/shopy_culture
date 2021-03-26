import 'package:flutter/material.dart';
import 'package:shopy_culture_flutter/pages/purchase/order_status_page.dart';
import 'package:shopy_culture_flutter/widgets/purchase_list_item_widget.dart';
import 'package:shopy_culture_flutter/widgets/text_widget.dart';

class PurchaseHistoryPage extends StatefulWidget {
  static String id = 'purchase_history';
  @override
  _PurchaseHistoryPageState createState() => _PurchaseHistoryPageState();
}

class _PurchaseHistoryPageState extends State<PurchaseHistoryPage> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: CustomTextWidget(
          title: 'Purchase History',
        ),
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: ListView.builder(
              itemCount: 2,
              itemBuilder: (BuildContext context, int index) {
                return PurchaseCardItem(
                  onTap: () => Navigator.pushNamed(context, OrderStatusPage.id),
                  id: '12932890839943',
                  status: 'Payment status - unpaid',
                  date: 'Date: 1-1-2020',
                  type: 'Payment type - cod',
                  price: 'Rs. 1202.00',
                );
              }),
        ),
      ),
    );
  }
}
