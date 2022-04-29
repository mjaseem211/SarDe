import 'package:flutter/material.dart';
import 'package:sarde/screens/Sign_in/signin_widgets.dart';

class SignIn extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: true,
      body: SingleChildScrollView(
        child: Column(children: <Widget>[
          sardelogo(),
          const  SizedBox(
            height: 37,
          ),
          Username(),
          const  SizedBox(
            height: 10,
          ),
          password(),
          const  SizedBox(
            height: 28,
          ),
          Login_Button(),
          const SizedBox(
            height: 115,
          ),
          Contact_admin(),
        ]),
      ),
    );
  }
}
