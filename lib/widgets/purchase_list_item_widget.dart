import 'package:flutter/material.dart';
import 'package:shopy_culture_flutter/widgets/text_widget.dart';

class PurchaseCardItem extends StatelessWidget {
  String id;
  String date;
  String status;
  String price;
  String type;
  Function onTap;

  PurchaseCardItem({
    this.id,
    this.date,
    this.onTap,
    this.price,
    this.status,
    this.type,
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      splashColor: Colors.transparent,
      child: Card(
        // margin: EdgeInsets.fromLTRB(10, 10, 10, 10),
        child: Padding(
          padding: const EdgeInsets.fromLTRB(17, 10, 10, 10),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                // width: 285,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                      height: 5,
                    ),
                    CustomTextWidget(
                      title: id,
                      letterSpecing: 0.7,
                      fontWeight: FontWeight.w400,
                      color: Colors.red,
                      lines: 1,
                    ),
                    SizedBox(
                      height: 7,
                    ),
                    CustomTextWidget(
                      title: date,
                      letterSpecing: 0.5,
                      fontWeight: FontWeight.w500,
                      lines: 1,
                    ),
                    SizedBox(
                      height: 7,
                    ),
                    CustomTextWidget(
                      title: status,
                      letterSpecing: 0.5,
                      lines: 1,
                    ),
                    SizedBox(
                      height: 7,
                    ),
                    CustomTextWidget(
                      title: type,
                      letterSpecing: 0.5,
                      lines: 1,
                    )
                  ],
                ),
              ),
              Spacer(),
              Container(
                child: CustomTextWidget(
                  title: price,
                  fontWeight: FontWeight.w500,
                  color: Colors.red,
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
