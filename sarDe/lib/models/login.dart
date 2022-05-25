class LoginModel {
  String accessToken;
  LoggedInUser loggedUserDetails;

  LoginModel({
    required this.accessToken,
    required this.loggedUserDetails,
  });

  factory LoginModel.fromJson(Map<String, dynamic> json) => LoginModel(
        accessToken: json["access_token"],
        loggedUserDetails: LoggedInUser.fromJson(json["logged_user_details"]),
      );

  Map<String, dynamic> toJson() => {
        "accessToken": accessToken,
        "loggedUserDetails": loggedUserDetails.toJson(),
      };
}

class LoggedInUser {
  int id;
  String email;
  int status;

  LoggedInUser({
    required this.id,
    required this.email,
    required this.status,
  });

  factory LoggedInUser.fromJson(Map<String, dynamic> json) {
    return LoggedInUser(
      id: int.parse(json['id']),
      email: json['email'],
      status: int.parse(json['status']),
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id.toString(),
      'email': email,
      'status': status.toString(),
    };
  }
}
