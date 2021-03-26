import 'package:http/http.dart' as http;
import 'package:shopy_culture_flutter/functions/ServerResponse.dart';
//import 'package:shopy_culture_flutter/model/registration_model.dart';
import 'dart:convert';
import 'package:dio/dio.dart';
import 'package:shopy_culture_flutter/model/user_registration.dart';

var baseUrl = 'http://shopyculture.com/api/v1/auth/signup';

Future<ServerResponse> postUser(
    {
    // String name,
    // String email,
    // String password,
    UserRegistration userRegistration}) async {
  final response = await http.post('http://shopyculture.com/api/v1/auth/signup',
      headers: {"Content-Type": "application/json"},
      // Uri.parse(baseUrl),

      body: jsonEncode(userRegistration)
      // <String, String>{'name': name, 'email': email, 'password': password},

      //encoding:
      //jsonEncode(userRegistration),
      );

  print(response.statusCode);
  print(response.body); //;

  if (response.statusCode == 200) {
    // if (jsonDecode(response.data) == true) {
    print('registrared successfully');
    //  }
  } else
    throw ('There is an Error');
}
