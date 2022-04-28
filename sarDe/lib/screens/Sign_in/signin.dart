import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:sarde/screens/Sign_in/signin_widgets.dart';

class SignIn extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: true,
      body: SingleChildScrollView(
        child: Column(children: <Widget>[
          sardelogo(),
          SizedBox(
            height: 37.h,
          ),
          Username(),
          SizedBox(
            height: 10.h,
          ),
          password(),
          SizedBox(
            height: 28.h,
          ),
          Login_Button(),
          SizedBox(
            height: 115.h,
          ),
          Contact_admin(),

        ]),
      ),
    );
  }
}
