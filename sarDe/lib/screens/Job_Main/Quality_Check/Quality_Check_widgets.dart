// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

Widget title() {
  return Padding(
    padding: EdgeInsets.only(left: 33.w, top: 99.h, right: 125.w),
    child: Row(children: [
      Text("Quality check",
          style: TextStyle(
              color: const Color(0xFF2B3070),
              fontSize: 35.sp,
              fontWeight: FontWeight.w400)),
    ]),
  );
}

Widget subtitle() {
  return Padding(
    padding: EdgeInsets.only(left: 33.w, right: 273.w),
    child: Row(children: [
      Text("Job 303",
          style: TextStyle(
              color: const Color(0xFF2B3070).withOpacity(0.7),
              fontSize: 22.sp,
              fontWeight: FontWeight.w400)),
    ]),
  );
}

Widget line() {
  return Padding(
    padding: EdgeInsets.only(left: 40.w, right: 46.w),
    child: Row(children: [
      Container(
        color: const Color(0xFF000000).withOpacity(0.5),
        height: 2.h,
        width: 304.w,
      ),
    ]),
  );
}
