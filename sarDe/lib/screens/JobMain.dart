import 'package:flutter/material.dart';
import 'package:sarde/screens/home.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class JobMain extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
            resizeToAvoidBottomInset: false,
            body: SafeArea(
                child: Center(
                    child: Column(children: <Widget>[
              IconButton(
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => Home()));
                  },
                  padding: EdgeInsets.fromLTRB(0, 10.h, 360.w, 0),
                  iconSize: 20,
                  icon: Image.asset(
                    'assets/images/backarrow.png',
                  )),
            ])))));
  }
}
