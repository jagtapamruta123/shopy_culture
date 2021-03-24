import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:shopy_culture_flutter/services/call_msg_service.dart';
import 'package:shopy_culture_flutter/services/sign_in_with_social.dart';
import 'package:shopy_culture_flutter/widgets/text_widget.dart';

class ContactUsPage extends StatefulWidget {
  static String id = 'contact_us';
  @override
  _ContactUsPageState createState() => _ContactUsPageState();
}

class _ContactUsPageState extends State<ContactUsPage> {
  final CallsAndMessagesService _service = locator<CallsAndMessagesService>();
  final String number = '9637082374';
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      body: SliverAppBarWidget(
        appBarTitle: "Contact Us",
        children: [
          SizedBox(
            height: 20,
          ),
          Divider(),
          ContactItem(
            onTap: () => _service.call(number),
            title: 'Contact on Phone Number',
            trailing: Icon(
              Icons.phone,
              size: 30,
              color: Colors.red,
            ),
          ),
          Divider(),
          ContactItem(
            onTap: () => _service.sendMail('info@shopycalture@gmail.com'),
            title: 'Contact on E-Mail',
            trailing: Icon(
              Icons.email_outlined,
              size: 30,
              color: Colors.red,
            ),
          ),
          Divider(),
        ],
      ),
    );
  }
}

class SliverAppBarWidget extends StatelessWidget {
  String appBarTitle;
  List<Widget> children;
  Function onPressed;
  SliverAppBarWidget({
    this.appBarTitle,
    this.children,
    this.onPressed,
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: <Widget>[
        SliverAppBar(
          snap: true,
          pinned: true,
          floating: true,
          flexibleSpace: FlexibleSpaceBar(
            centerTitle: true,
            title: Text(appBarTitle,
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 16.0,
                ) //TextStyle
                ), //Text
            background: Image.asset(
              "images/shoping_cart.png",
            ),
          ),
          expandedHeight: 230,
          actions: <Widget>[
            IconButton(
                icon: Icon(
                  Icons.shopping_cart,
                ),
                onPressed: onPressed)
          ],
        ),
        SliverList(
          delegate: SliverChildListDelegate(
            children,
          ),
        )
      ],
    );
  }
}

class ContactItem extends StatelessWidget {
  Widget trailing;
  String title;
  Function onTap;
  ContactItem({
    this.title,
    this.trailing,
    this.onTap,
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: CustomTextWidget(
        title: title,
        fontSize: 19,
        color: Colors.grey[600],
        fontWeight: FontWeight.w700,
      ),
      trailing: InkWell(
        onTap: onTap,
        child: CircleAvatar(
            backgroundColor: Colors.grey.withOpacity(0.1),
            //radius: 55,
            child: trailing),
      ),
    );
  }
}
