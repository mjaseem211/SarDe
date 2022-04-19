import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Success_Page extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: ListView(shrinkWrap: true, children: [
        Column(children: [
          SizedBox(
            height: 234.h,
          ),
          Box(),
        ]),
      ]),
    );
  }

  Widget Box(){


     return Row(
         children: [


              Container(
                height: 350.h,
                width: 320.w,
                decoration:  BoxDecoration(
                    color: Color(0xFF47FF4F).withOpacity(0.13),
                    borderRadius: BorderRadius.circular(12.r)
                     )),


    ]);
  }
}
