import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class new_work extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: ListView(shrinkWrap: true, children: [
        Column(children: [
          Title1(),
          SizedBox(
            height: 26.h,
          ),



        ]),
      ]),
    );
  }

  Widget Title1() {
    return Padding(
      padding: EdgeInsets.only(left: 33.w, top: 109.h),
      child: Row(children: [
        Text("Work Progress",
            style: TextStyle(
                color: Color(0xFF2B3070),
                fontSize: 35.sp,
                fontWeight: FontWeight.w400)),
      ]),
    );
  }
}
