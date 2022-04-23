import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

Widget Title1() {
  return Padding(
    padding: EdgeInsets.only(left: 33.w, top: 109.h),
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
          flex: 2,
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
        Expanded(
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
        Expanded(
          flex: 1,
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
        Expanded(
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
        Expanded(
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

Widget Data() {
  return Padding(
    padding: EdgeInsets.only(right: 48.w, left: 31.w),
    child: Row(
      children: [
        Expanded(
          flex: 2,
          child: Text(
            "001-003 RHS",
            style: TextStyle(
                fontWeight: FontWeight.w400,
                fontSize: 13.sp,
                color: const Color(0xFFDD7164)),
          ),
        ),
        SizedBox(
          width: 8.w,
        ),
        Expanded(
          child: Text(
            "4",
            style: TextStyle(
                fontWeight: FontWeight.w400,
                fontSize: 13.sp,
                color: const Color(0xFFDD7164)),
          ),
        ),
        SizedBox(
          width: 11.w,
        ),
        Expanded(
          flex: 1,
          child: Text(
            "121.8",
            style: TextStyle(
                fontWeight: FontWeight.w400,
                fontSize: 13.sp,
                color: const Color(0xFFDD7164)),
          ),
        ),
        SizedBox(
          width: 9.w,
        ),
        Expanded(
          child: Text(
            "1",
            style: TextStyle(
                fontWeight: FontWeight.w400,
                fontSize: 13.sp,
                color: const Color(0xFFDD7164)),
          ),
        ),
        SizedBox(
          width: 12.w,
        ),
        Expanded(
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
    padding: EdgeInsets.only(right: 48.w, left: 31.w),
    child: Row(
      children: [
        Expanded(
          flex: 2,
          child: Text(
            "004-006 LHS",
            style: TextStyle(
                fontWeight: FontWeight.w400,
                fontSize: 13.sp,
                color: const Color(0xFFDD7164)),
          ),
        ),
        SizedBox(
          width: 8.w,
        ),
        Expanded(
          child: Text(
            "2",
            style: TextStyle(
                fontWeight: FontWeight.w400,
                fontSize: 13.sp,
                color: const Color(0xFFDD7164)),
          ),
        ),
        SizedBox(
          width: 11.w,
        ),
        Expanded(
          flex: 1,
          child: Text(
            "38.8",
            style: TextStyle(
                fontWeight: FontWeight.w400,
                fontSize: 13.sp,
                color: const Color(0xFFDD7164)),
          ),
        ),
        SizedBox(
          width: 9.w,
        ),
        Expanded(
          child: Text(
            "1",
            style: TextStyle(
                fontWeight: FontWeight.w400,
                fontSize: 13.sp,
                color: const Color(0xFFDD7164)),
          ),
        ),
        SizedBox(
          width: 12.w,
        ),
        Expanded(
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
