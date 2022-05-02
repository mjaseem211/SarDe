import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:sarde/screens/Sign_in/signin_widgets.dart';

// ignore: camel_case_types
class Signin extends StatelessWidget {
  const Signin({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: SingleChildScrollView(
        child: Column(children: <Widget>[
          sardelogo(),
          SizedBox(
            height: 37.h,
          ),
          const Username(),
          SizedBox(
            height: 10.h,
          ),
          const password(),
          SizedBox(
            height: 28.h,
          ),
          const Login_Button(),
          SizedBox(
            height: 115.h,
          ),
          Contact_admin(),
        ]),
      ),
    );
  }
}
