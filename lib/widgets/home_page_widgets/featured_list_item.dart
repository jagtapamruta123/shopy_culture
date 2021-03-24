import 'package:flutter/material.dart';
import 'package:shopy_culture_flutter/widgets/text_widget.dart';

class FeaturedCardItem extends StatelessWidget {
  String url;
  String name;
  Function onTap;

  FeaturedCardItem({
    this.name,
    this.url,
    this.onTap,
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        width: 120,
        child: Card(
          color: Colors.grey[200],
          elevation: 6,
          shadowColor: Colors.grey[100],
          margin: EdgeInsets.all(5),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              CircleAvatar(
                radius: 30,
                backgroundImage: NetworkImage(
                  url,
                ),
                //child: CustomTextWidget(title: 'name'),
              ),
              SizedBox(
                height: 8,
              ),
              CustomTextWidget(
                title: name,
              )
            ],
          ),
        ),
      ),
    );
  }
}
