// ignore_for_file: non_constant_identifier_names, file_names

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

Widget Title1() {
  return Padding(
    padding: EdgeInsets.only(left: 33.w, top: 109.h, right: 110.w),
    child: Row(children: [
      Text("Work Progress",
          style: TextStyle(
              color: const Color(0xFF2B3070),
              fontSize: 35.sp,
              fontWeight: FontWeight.w400)),
    ]),
  );
}

Widget Heading() {
  return Padding(
    padding: EdgeInsets.only(right: 48.w, left: 31.w),
    child: Row(
      children: [
        Expanded(
          flex: 8,
          child: Text(
            "Item Description",
            style: TextStyle(
                fontWeight: FontWeight.w400,
                fontSize: 13.sp,
                color: const Color(0xFF2B3070)),
          ),
        ),
        Expanded(
          flex: 2,
          child: Text(
            "No",
            style: TextStyle(
                fontWeight: FontWeight.w400,
                fontSize: 13.sp,
                color: const Color(0xFF2B3070)),
          ),
        ),
        Expanded(flex: 4,
          child: Text(
            "Length",
            style: TextStyle(
                fontWeight: FontWeight.w400,
                fontSize: 13.sp,
                color: const Color(0xFF2B3070)),
          ),
        ),
        Expanded(
          flex: 4,
          child: Text(
            "Width",
            style: TextStyle(
                fontWeight: FontWeight.w400,
                fontSize: 13.sp,
                color: const Color(0xFF2B3070)),
          ),
        ),
        Text(
          "Meter Sqr",
          style: TextStyle(
              fontWeight: FontWeight.w400,
              fontSize: 13.sp,
              color: const Color(0xFF2B3070)),
        ),
      ],
    ),
  );
}

Widget line() {
  return Row(children: [
    Padding(
      padding: EdgeInsets.only(left: 33.w, right: 47.w),
      child: Container(
        color: const Color(0xFFD8D4E9),
        height: 2.h,
        width: 310.w,
      ),
    ),
  ]);
}

Widget Data(String itemDescription, String no, String length, String width,
    String meterSqr) {
  return Padding(
    padding: EdgeInsets.only(right: 48.w, left: 31.w),
    child: Row(
      children: [
        Expanded(
          flex: 5,
          child: Text(
            itemDescription,
            style: TextStyle(
                fontWeight: FontWeight.w400,
                fontSize: 13.sp,
                color: const Color(0xffDD7164)),
          ),
        ),
        Expanded(
          flex: 2,
          child: Text(
            no,
            style: TextStyle(
                fontWeight: FontWeight.w400,
                fontSize: 13.sp,
                color: const Color(0xffDD7164)),
          ),
        ),
        Expanded(
          flex: 4,
          child: Text(
            length,
            style: TextStyle(
                fontWeight: FontWeight.w400,
                fontSize: 13.sp,
                color: const Color(0xffDD7164)),
          ),
        ),
        Expanded(
          flex: 4,
          child: Text(
            width,
            style: TextStyle(
                fontWeight: FontWeight.w400,
                fontSize: 13.sp,
                color: const Color(0xffDD7164)),
          ),
        ),
        Text(
          meterSqr,
          style: TextStyle(
              fontWeight: FontWeight.w400,
              fontSize: 13.sp,
              color: const Color(0xffDD7164)),
        ),
      ],
    ),
  );
}
