import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:sarde/screens/Sign_in/signin_widgets.dart';

class SignIn extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final EdgeInsets viewPadding;
    final bool maintainBottomViewPadding;
    final EdgeInsets padding;
    final EdgeInsets viewInsets;
    TextEditingController nameController = TextEditingController();
    TextEditingController passwordController = TextEditingController();
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Column(
        children: <Widget>[
          sardelogo(),
          Expanded(
            child: ListView(
              children:[

          Username(),
          SizedBox(
            height: 10.h,
          ),
          password(),
          ]),
          ),
          Login_Button(),
          SizedBox(
            height: 115.h,
          ),
          Contact_admin(),
          SizedBox(
            height: 97.h,
          ),
        ],
      ),
    );
  }
}
