import 'dart:async';

import 'dart:convert' as JSON;

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:shopy_culture_flutter/pages/login/sign_up_page.dart';
import 'package:shopy_culture_flutter/widgets/flat_button_widget.dart';
import 'package:shopy_culture_flutter/widgets/text_form_field.dart';
import 'package:shopy_culture_flutter/widgets/text_widget.dart';

class LoginPage extends StatefulWidget {
  static String id = 'login';
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  GlobalKey<FormState> _form = GlobalKey<FormState>();
  bool isLabel;
  String email;
  String password;

  _showLabel() {
    setState(() {
      isLabel = true;
    });
  }

  @override
  void initState() {
    // TODO: implement initState

    setState(() {
      isLabel = true;
    });

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        // bottomOpacity: 0,
        //  toolbarOpacity: 0,
        backgroundColor: Colors.transparent,
        actions: [
          InkWell(
            onTap: () => Navigator.pop(context),
            child: Padding(
              padding: const EdgeInsets.all(12),
              child: Icon(
                Icons.clear,
                size: 32,
                color: Colors.black,
              ),
            ),
          )
        ],
      ),
      body: SingleChildScrollView(
        child: Form(
          key: _form,
          child: Container(
            margin: EdgeInsets.fromLTRB(20, 0, 20, 0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Card(
                  child: Image.asset(
                    'images/shopyy_culture.png',
                    width: 85,
                    height: 85,
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                CustomTextWidget(
                  title: 'Login / SignIn',
                  fontSize: 30,
                  fontWeight: FontWeight.w500,
                  color: Colors.redAccent,
                ),
                SizedBox(
                  height: 50,
                ),
                CustomTextFormFieldWidget(
                  // enable: true,

                  prefix: Icon(
                    Icons.email_outlined,
                  ),
                  filled: false,
                  isDense: true,
                  padding: EdgeInsets.fromLTRB(5, 5, 5, 3),
                  align: TextAlign.center,
                  inputTextFormatter: [
                    LengthLimitingTextInputFormatter(20),
                  ],
                  inputType: TextInputType.emailAddress,
                  action: TextInputAction.next,
                  hintFontSize: 15,
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(30),
                      borderSide: BorderSide.none),
                  onChanged: (value) {
                    email = value;
                  },

                  /// labelText: isLabel == true ? 'Email' : "",
                  hintText: '  Enter your email id',
                ),
                SizedBox(
                  height: 30,
                ),
                CustomTextFormFieldWidget(
                  enable: true,
                  inputTextFormatter: [
                    LengthLimitingTextInputFormatter(10),
                  ],
                  isDense: true,
                  align: TextAlign.center,
                  obscureText: true,
                  filled: false,
                  onChanged: (value) {
                    password = value;
                  },
                  padding: EdgeInsets.fromLTRB(5, 5, 5, 3),
                  prefix: Icon(
                    Icons.lock_outlined,
                  ),

                  hintFontSize: 15,
                  border:
                      //OutlineInputBorder(borderRadius: BorderRadius.circular(30), borderSide: BorderSide.none)),
                      OutlineInputBorder(
                    borderRadius: BorderRadius.circular(30),
                    borderSide: BorderSide.none,
                  ),
                  action: TextInputAction.next,
                  //  labelText: isLabel == true ? 'password ' : "",
                  hintText: 'Enter Password',
                ),
               
                SizedBox(
                  height: 20,
                ),
                OutLineButtonWidget(
                  buttonTitle: 'Login',
                  minWidth: double.infinity,
                  color: Colors.red,
                  onPressFlatButton: () {},
                ),
                // SizedBox(
                //   height: 10,
                // ),
                SizedBox(
                  height: 8,
                ),
                OutLinedButtonWidget(
                  title: 'Forgot password ?',
                  onPressed: () {},
                  side: BorderSide(
                    color: Colors.red,
                  ),
                ),

                OutLinedButtonWidget(
                  title: 'No Account Yet ? Create One ',
                  onPressed: () => Navigator.pushNamed(
                    context,
                    SignUpPage.id,
                  ),
                  side: BorderSide.none,
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
