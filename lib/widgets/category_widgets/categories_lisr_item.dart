import 'package:flutter/material.dart';
import 'package:shopy_culture_flutter/widgets/text_widget.dart';

class CategoryListTile extends StatelessWidget {
  // TODO: implement toStringShort
  String url;
  Widget trailing;
  String categoryName;
  Function onTap;

  CategoryListTile({
    this.trailing,
    this.url,
    this.onTap,
    this.categoryName,
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: ListTile(
        title: CustomTextWidget(
          title: categoryName,
          lines: 1,
          letterSpecing: 0.5,
        ),
        trailing: Icon(
          Icons.arrow_forward_ios_outlined,
        ),
        //horizontalTitleGap: 2,
        leading: CircleAvatar(
          radius: 25,
          backgroundImage: NetworkImage(url),
        ),
      ),
    );
  }
}
