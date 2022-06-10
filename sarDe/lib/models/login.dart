// To parse this JSON data, do
//
//     final loginModel = loginModelFromJson(jsonString);

import 'dart:convert';

LoginModel loginModelFromJson(String str) =>
    LoginModel.fromJson(json.decode(str));

String loginModelToJson(LoginModel data) => json.encode(data.toJson());

class LoginModel {
  LoginModel({
    required this.result,
    required this.status,
  });

  Result result;
  String status;

  factory LoginModel.fromJson(Map<String, dynamic> json) => LoginModel(
        result: Result.fromJson(json["result"]),
        status: json["status"],
      );

  Map<String, dynamic> toJson() => {
        "result": result.toJson(),
        "status": status,
      };
}

class Result {
  Result({
    required this.accessToken,
    required this.loggedUserDetails,
  });

  String accessToken;
  LoggedUserDetails loggedUserDetails;

  factory Result.fromJson(Map<String, dynamic> json) => Result(
        accessToken: json["access_token"],
        loggedUserDetails:
            LoggedUserDetails.fromJson(json["logged_user_details"]),
      );

  Map<String, dynamic> toJson() => {
        "access_token": accessToken,
        "logged_user_details": loggedUserDetails.toJson(),
      };
}

class LoggedUserDetails {
  LoggedUserDetails({
    required this.id,
    required this.name,
    required this.mobile,
    required this.email,
    required this.status,
  });

  String id;
  String name;
  String mobile;
  String email;
  String status;

  factory LoggedUserDetails.fromJson(Map<String, dynamic> json) =>
      LoggedUserDetails(
        id: json["id"],
        name: json["name"],
        mobile: json["mobile"],
        email: json["email"],
        status: json["status"],
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "name": name,
        "mobile": mobile,
        "email": email,
        "status": status,
      };
}
