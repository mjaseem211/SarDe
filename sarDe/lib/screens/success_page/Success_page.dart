import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:sarde/screens/success_page/success_page_widgets.dart';

class Success_Page extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        body: ListView(shrinkWrap: true, children: [
          SizedBox(
          height: 234.h,
        ),
        Column(children: [
            Success(),
        HomeButton(),

    ]
    )
    ,
   ] ),);
  }
}
