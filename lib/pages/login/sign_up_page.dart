import 'dart:async';

import 'dart:convert' as JSON;

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:shopy_culture_flutter/functions/check_internet.dart';
import 'package:shopy_culture_flutter/model/user_registration.dart';
//import 'package:shopy_culture_flutter/model/registration_model.dart';
import 'package:shopy_culture_flutter/pages/login/sign_in_page.dart';
import 'package:shopy_culture_flutter/pages/login/sign_up_page.dart';
import 'package:shopy_culture_flutter/services/registration_service.dart';
import 'package:shopy_culture_flutter/widgets/flat_button_widget.dart';
import 'package:shopy_culture_flutter/widgets/text_form_field.dart';
import 'package:shopy_culture_flutter/widgets/text_widget.dart';

class SignUpPage extends StatefulWidget {
  static String id = 'sign_up';
  @override
  _SignUpPageState createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {
  GlobalKey<FormState> _form = GlobalKey<FormState>();
  TextEditingController _nameController;
  TextEditingController _emailController;
  TextEditingController _passwordController;
  TextEditingController _confirmPasswordController;
  bool isLabel;
  String name;
  String conPass;
  String email;
  String password;
  ConnectivityStream stream = ConnectivityStream();

  @override
  void initState() {
    stream.getState((val) {
      setState(() {});
    });
    _nameController = TextEditingController();
    _emailController = TextEditingController();
    _passwordController = TextEditingController();
    _confirmPasswordController = TextEditingController();
    // TODO: implement initState

    super.initState();
  }

  @override
  void dispose() {
    _nameController.dispose();
    _emailController.dispose();
    _passwordController.dispose();
    _confirmPasswordController.dispose();
    stream.dispose();
    // TODO: implement dispose
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      bottomNavigationBar: Visibility(
        child: NoInternetBanner(),
        visible: !ConnectivityStream.isInternet,
      ),
      body: SingleChildScrollView(
        child: Form(
          key: _form,
          child: Container(
            margin: EdgeInsets.fromLTRB(20, 35, 20, 0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SizedBox(
                  height: 20,
                ),
                CustomTextWidget(
                  title: 'Sign Up',
                  fontSize: 30,
                  letterSpecing: 0.5,
                  fontWeight: FontWeight.w600,
                  color: Colors.redAccent,
                ),
                SizedBox(
                  height: 35,
                ),
                CustomTextFormFieldWidget(
                  // enable: true,
                  validator: (String val) {
                    if (val.isEmpty) {
                      return 'Name is Required';
                    }
                    return null;
                  },
                  controller: _nameController,
                  prefix: Icon(
                    Icons.person,
                  ),
                  filled: false,
                  isDense: true,
                  padding: EdgeInsets.fromLTRB(5, 5, 5, 0),
                  align: TextAlign.center,
                  inputTextFormatter: [
                    LengthLimitingTextInputFormatter(20),
                  ],
                  inputType: TextInputType.text,
                  action: TextInputAction.next,
                  hintFontSize: 15,
                  border: OutlineInputBorder(
                      // borderRadius: BorderRadius.circular(30),
                      // borderSide: BorderSide.none,
                      ),
                  onChanged: (value) {
                    name = value;
                  },

                  labelText: 'Name',
                  hintText: 'Enter your Name',
                ),

                SizedBox(
                  height: 30,
                ),
                CustomTextFormFieldWidget(
                  // enable: true,
                  validator: (String val) {
                    if (val.isEmpty) {
                      return 'Email is Required';
                    }
                    return null;
                  },
                  controller: _emailController,
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
                      // borderRadius: BorderRadius.circular(30),
                      // borderSide: BorderSide.none,
                      ),
                  onChanged: (value) {
                    email = value;
                  },

                  labelText: 'Email',
                  hintText: 'Enter your email id',
                ),

                SizedBox(
                  height: 30,
                ),
                CustomTextFormFieldWidget(
                  enable: true,
                  controller: _passwordController,
                  inputTextFormatter: [
                    LengthLimitingTextInputFormatter(10),
                  ],
                  validator: (String val) {
                    if (val.isEmpty) {
                      return 'password is Required and it must be 6 characters at least';
                    }
                    return null;
                  },
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
                          //  borderRadius: BorderRadius.circular(30),
                          // borderSide: BorderSide.none,
                          ),
                  action: TextInputAction.next,
                  labelText: 'password ',
                  hintText: 'Enter Password',
                ),

                SizedBox(
                  height: 30,
                ),
                CustomTextFormFieldWidget(
                  controller: _confirmPasswordController,
                  enable: true,
                  inputTextFormatter: [
                    LengthLimitingTextInputFormatter(10),
                  ],
                  isDense: true,
                  align: TextAlign.center,
                  obscureText: true,
                  filled: false,
                  onChanged: (value) {
                    conPass = value;
                  },
                  padding: EdgeInsets.fromLTRB(5, 5, 5, 3),
                  prefix: Icon(
                    Icons.lock_outlined,
                  ),
                  hintFontSize: 15,
                  border: OutlineInputBorder(
                      // borderRadius: BorderRadius.circular(30),
                      // borderSide: BorderSide.none,
                      ),
                  action: TextInputAction.next,
                  labelText: 'Confirm password ',
                  hintText: 'Confirm Password',
                ),

                SizedBox(
                  height: 20,
                ),
                OutLineButtonWidget(
                  buttonTitle: 'Sign Up',
                  minWidth: double.infinity,
                  color: Colors.red[400],
                  onPressFlatButton: () {
                    if (_form.currentState.validate()) {
                      _form.currentState.save();
                      print(name);
                      print(email);
                      print(password);
                      final data = UserRegistration(
                        name: name,
                        email: email,
                        password: password,
                      );
                      postUser(userRegistration: data
                          // name: name,
                          // password: password,
                          // email: email,
                          );
                    }
                  },
                ),
                // SizedBox(
                //   height: 10,
                // ),
                SizedBox(
                  height: 8,
                ),

                OutLinedButtonWidget(
                  title: 'Already Logged In ? Sign In here ',
                  onPressed: () => Navigator.pushNamed(
                    context,
                    LoginPage.id,
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
