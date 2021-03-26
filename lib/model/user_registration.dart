import 'package:json_annotation/json_annotation.dart';
//part 'user_registration_model.g.dart';

@JsonSerializable()
class UserRegistration {
  @JsonKey(name: 'name')
  String name;
  @JsonKey(name: 'email')
  String email;
  @JsonKey(name: 'password')
  String password;

  UserRegistration({
    this.name,
    this.email,
    this.password,
  });

  factory UserRegistration.fromJson(Map<String, dynamic> json) =>
      _$UserRegistrationFromJson(json);

  Map<String, dynamic> toJson() => _$UserRegistrationToJson(this);

  // UserRegistration.fromJson(Map<String, dynamic> json)
  //     : name = json['name'],
  //       email = json['email'],
  //       password = json['password'];

  // Map<String, dynamic> toJson() => {
  //       'name': name,
  //       'email': email,
  //       'password': password,
  //     };
}
