import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:sarde/screens/success_page/success_page_widgets.dart';

// ignore: camel_case_types
class Success_Page extends StatelessWidget {
  const Success_Page({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(children: [
        SizedBox(
          height: 234.h,
        ),
        Success(),
        const HomeButton(),
      ]),
    );
  }
}
