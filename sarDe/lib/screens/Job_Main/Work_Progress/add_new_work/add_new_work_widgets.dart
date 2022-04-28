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
        FittedBox(
          child: Text(
            "Item Description",
            style: TextStyle(
                fontWeight: FontWeight.w400,
                fontSize: 13.sp,
                color: const Color(0xFF2B3070)),
          ),
        ),
        SizedBox(
          width: 8.w,
        ),
        FittedBox(
          child: Text(
            "No",
            style: TextStyle(
                fontWeight: FontWeight.w400,
                fontSize: 13.sp,
                color: const Color(0xFF2B3070)),
          ),
        ),
        SizedBox(
          width: 11.w,
        ),
        FittedBox(
          child: Text(
            "Length",
            style: TextStyle(
                fontWeight: FontWeight.w400,
                fontSize: 13.sp,
                color: const Color(0xFF2B3070)),
          ),
        ),
        SizedBox(
          width: 9.w,
        ),
        FittedBox(
          child: Text(
            "Width",
            style: TextStyle(
                fontWeight: FontWeight.w400,
                fontSize: 13.sp,
                color: const Color(0xFF2B3070)),
          ),
        ),
        SizedBox(
          width: 12.w,
        ),
        FittedBox(
          child: Text(
            "Meter Sqr",
            style: TextStyle(
                fontWeight: FontWeight.w400,
                fontSize: 13.sp,
                color: const Color(0xFF2B3070)),
          ),
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

Widget Data() {
  return Padding(
    padding: EdgeInsets.only(right: 63.w, left: 40.w),
    child: Row(
      children: [
        FittedBox(
          child: Text(
            "001-003 RHS",
            style: TextStyle(
                fontWeight: FontWeight.w400,
                fontSize: 13.sp,
                color: const Color(0xFFDD7164)),
          ),
        ),
        SizedBox(
          width: 29.w,
        ),
        FittedBox(
          child: Text(
            "4",
            style: TextStyle(
                fontWeight: FontWeight.w400,
                fontSize: 13.sp,
                color: const Color(0xFFDD7164)),
          ),
        ),
        SizedBox(
          width: 25.w,
        ),
        FittedBox(
          child: Text(
            "121.8",
            style: TextStyle(
                fontWeight: FontWeight.w400,
                fontSize: 13.sp,
                color: const Color(0xFFDD7164)),
          ),
        ),
        SizedBox(
          width: 28.w,
        ),
        FittedBox(
          child: Text(
            "1",
            style: TextStyle(
                fontWeight: FontWeight.w400,
                fontSize: 13.sp,
                color: const Color(0xFFDD7164)),
          ),
        ),
        SizedBox(
          width: 48.w,
        ),
        FittedBox(
          child: Text(
            "128.4",
            style: TextStyle(
                fontWeight: FontWeight.w400,
                fontSize: 13.sp,
                color: const Color(0xFFDD7164)),
          ),
        ),
      ],
    ),
  );
}

Widget Data1() {
  return Padding(
    padding: EdgeInsets.only(right: 65.w, left: 40.w),
    child: Row(
      children: [
        FittedBox(
          child: Text(
            "004-006 LHS",
            style: TextStyle(
                fontWeight: FontWeight.w400,
                fontSize: 13.sp,
                color: const Color(0xFFDD7164)),
          ),
        ),
        SizedBox(
          width: 29.w,
        ),
        FittedBox(
          child: Text(
            "2",
            style: TextStyle(
                fontWeight: FontWeight.w400,
                fontSize: 13.sp,
                color: const Color(0xFFDD7164)),
          ),
        ),
        SizedBox(
          width: 27.w,
        ),
        FittedBox(
          child: Text(
            "38.8",
            style: TextStyle(
                fontWeight: FontWeight.w400,
                fontSize: 13.sp,
                color: const Color(0xFFDD7164)),
          ),
        ),
        SizedBox(
          width: 35.w,
        ),
        FittedBox(
          child: Text(
            "1",
            style: TextStyle(
                fontWeight: FontWeight.w400,
                fontSize: 13.sp,
                color: const Color(0xFFDD7164)),
          ),
        ),
        SizedBox(
          width: 47.w,
        ),
        FittedBox(
          child: Text(
            "98.4",
            style: TextStyle(
                fontWeight: FontWeight.w400,
                fontSize: 13.sp,
                color: const Color(0xFFDD7164)),
          ),
        ),
      ],
    ),
  );
}
