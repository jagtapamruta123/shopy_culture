// import 'dart:convert';

// import 'package:firebase_auth/firebase_auth.dart';
// import 'package:flutter/material.dart';
// import 'package:flutter_facebook_auth/flutter_facebook_auth.dart';
// import 'package:shopy_culture_flutter/pages/contact_us_page.dart';
// import 'package:shopy_culture_flutter/services/call_msg_service.dart';
// import 'package:shopy_culture_flutter/widgets/text_widget.dart';
// import 'package:flutter_facebook_login/flutter_facebook_login.dart';
// import 'package:flutter_facebook_auth/flutter_facebook_auth.dart';
// import 'package:http/http.dart' as http;
// import 'dart:convert' as JSON;

// class AboutUsPage extends StatefulWidget {
//   static String id = 'about_us';
//   @override
//   _AboutUsPageState createState() => _AboutUsPageState();
// }

// class _AboutUsPageState extends State<AboutUsPage> {
//   final CallsAndMessagesService _service = locator<CallsAndMessagesService>();
//   final String number = '9637082374';
//   Map<String, dynamic> _userData;
//   AccessToken _accessToken;
//   bool _checking = false;
//   Map userProfile;
//   bool isLoggedIn = false;
//   final facebookLogin = FacebookLogin();

//   _loginWithFB() async {
//     final result = await facebookLogin.logIn(['email']);
//     print(result.accessToken.token);
//     switch (result.status) {
//       case FacebookLoginStatus.loggedIn:
//         final token = result.accessToken.token;
//         Uri uri = Uri.https('',
//             'https://graph.facebook.com/v2.12/me?fields=name,picture,email&access_token=${token}');
//         final graphResponse = await http.get(uri);
//         final profile = JSON.jsonDecode(graphResponse.body);
//         print(profile);
//         setState(() {
//           userProfile = profile;
//           isLoggedIn = true;
//         });
//         break;

//       case FacebookLoginStatus.cancelledByUser:
//         setState(() => isLoggedIn = false);
//         break;
//       case FacebookLoginStatus.error:
//         setState(() => isLoggedIn = false);
//         break;
//     }
//   }

//   @override
//   Widget build(BuildContext context) {
//     // TODO: implement build
//     return Scaffold(
//       body: AboutUsSliverAppBarWidget(appBarTitle: "About Us", children: [
//         SizedBox(
//           height: 80,
//         ),
//         OutlinedButtonWidget(
//           name: 'Email',
//           onPressed: () => _service.sendMail('info@shopycalture@gmail.com'),
//           icon: Icon(
//             Icons.email_outlined,
//             color: Colors.red,
//           ),
//         ),
//         SizedBox(
//           height: 20,
//         ),
//         OutlinedButtonWidget(
//           name: 'FaceBook',
//           onPressed: () {
//             _loginWithFB();
//           },
//           icon: Icon(
//             Icons.face,
//             color: Colors.red,
//           ),
//         ),
//         SizedBox(
//           height: 20,
//         ),
//         OutlinedButtonWidget(
//           name: 'You Tube',
//           onPressed: () {
//             _service.openYouTube(
//                 'https://www.youtube.com/channel/UCwXdFgeE9KYzlDdR7TG9cMw');
//           },
//           icon: Icon(
//             Icons.youtube_searched_for_sharp,
//             color: Colors.red,
//           ),
//         )
//       ]),
//     );
//   }
// }

// class AboutUsSliverAppBarWidget extends StatelessWidget {
//   String appBarTitle;
//   List<Widget> children;
//   Function onPressed;
//   AboutUsSliverAppBarWidget({
//     this.appBarTitle,
//     this.children,
//     this.onPressed,
//     Key key,
//   }) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return CustomScrollView(
//       slivers: <Widget>[
//         SliverAppBar(
//           snap: false,
//           pinned: true,
//           floating: true,

//           flexibleSpace: FlexibleSpaceBar(
//               centerTitle: true,
//               title: Text(appBarTitle,
//                   style: TextStyle(
//                     color: Colors.white,
//                     fontSize: 16.0,
//                   ) //TextStyle
//                   ), //Text
//               background: Container(
//                 decoration: BoxDecoration(
//                   image: DecorationImage(
//                     image: AssetImage('images/shoping_cart.png'),
//                   ),
//                   gradient: LinearGradient(
//                     colors: [
//                       Colors.red[400],
//                       Colors.red[100],
//                     ],
//                   ),
//                 ),
//               )), //FlexibleSpaceBar
//           expandedHeight: 230,
//           backgroundColor: Colors.blue,
//         ), //SliverAppBar
//         SliverList(
//           delegate: SliverChildListDelegate(children),
//         ) //SliverList
//       ], //<Widget>[]
//     ); //
//   }
// }

// class OutlinedButtonWidget extends StatelessWidget {
//   Widget icon;
//   String name;
//   Function onPressed;
//   OutlinedButtonWidget({
//     this.name,
//     this.icon,
//     this.onPressed,
//     Key key,
//   }) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return OutlinedButton.icon(
//         style: OutlinedButton.styleFrom(
//           alignment: Alignment.center,
//           primary: Colors.white,
//           side: BorderSide(color: Colors.red, width: 2),
//           backgroundColor: Colors.red[100],
//           padding: EdgeInsets.fromLTRB(30, 0, 30, 0),
//           elevation: 8,
//         ),
//         onPressed: onPressed,
//         icon: icon,
//         label: CustomTextWidget(
//           title: name,
//           color: Colors.red,
//         ));
//   }
// }
