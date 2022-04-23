import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';


Widget title() {
  return Padding(
    padding: EdgeInsets.only(left: 33.w, top: 109.h),
    child: Row(children: [
      Text("Quality check",
          style: TextStyle(
              color: const Color(0xFF2B3070),
              fontSize: 35.sp,
              fontWeight: FontWeight.w400)),
    ]),
  );
}


Widget line() {
  return Padding(
    padding: EdgeInsets.only(left: 33.w, right: 47.w),
    child: Row(children: [
      Container(
        color: const Color(0xFFD8D4E9),
        height: 2.h,
        width: 310.w,
      ),
    ]),
  );
}

Widget details() {
  return Padding(
    padding: EdgeInsets.only(
      left: 192.w,right: 85.w
    ),
    child: Row(children: [
      Text("12.03.21  12.36 pm",
          style: TextStyle(
              color:const Color(0xFF2B3070).withOpacity(0.7),
              fontSize: 13.sp,
              fontWeight: FontWeight.w400)),
    ]),
  );
}