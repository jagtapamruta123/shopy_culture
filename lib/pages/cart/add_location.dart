import 'package:flutter/material.dart';
import 'package:shopy_culture_flutter/pages/cart/checkout_page.dart';
import 'package:shopy_culture_flutter/widgets/flat_button_widget.dart';
import 'package:shopy_culture_flutter/widgets/text_widget.dart';

class AddLocationPage extends StatefulWidget {
  static String id = 'add_address';
  @override
  _AddLocationPageState createState() => _AddLocationPageState();
}

class _AddLocationPageState extends State<AddLocationPage> {
  bool isSelected = false;
  List<bool> _selected = List.generate(20, (i) => false);
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: CustomTextWidget(
          title: 'add address',
        ),
        centerTitle: true,
        actions: [
          IconButton(
            icon: Icon(Icons.add_location),
            onPressed: () {},
          )
        ],
      ),
      bottomNavigationBar: BottomNavigationButtonWidget(
        title: 'PROCCED TO PAYMENTS',
        onTap: () => Navigator.pushNamed(context, CheckoutPage.id),
      ),
      body: ListView.builder(
          itemCount: 2,
          itemBuilder: (BuildContext context, int index) {
            return InkWell(
              onTap: () => setState(() => _selected[index] = !_selected[index]),
              child: Card(
                color: _selected[index] ? Colors.green : Colors.grey[300],
                //margin: EdgeInsets.fromLTRB(10, 10, 10, 10),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      CustomTextWidget(
                        fontSize: 18,
                        fontWeight: FontWeight.w400,
                        title:
                            'Elora palace ,panchod,Balaji Nagar,Pune,Maharastra 411043,INDIA',
                        lines: 2,
                        overFlow: TextOverflow.ellipsis,
                      ),
                      SizedBox(
                        height: 3,
                      ),
                      CustomTextWidget(
                        title: 'Pune',
                        overFlow: TextOverflow.ellipsis,
                      ),
                      SizedBox(
                        height: 2,
                      ),
                      CustomTextWidget(
                        title: '411038',
                        overFlow: TextOverflow.ellipsis,
                      ),
                      SizedBox(
                        height: 2,
                      ),
                      CustomTextWidget(
                        title: 'India',
                        overFlow: TextOverflow.ellipsis,
                      ),
                      SizedBox(
                        height: 2,
                      ),
                      CustomTextWidget(
                        title: '9637039883',
                        overFlow: TextOverflow.ellipsis,
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
