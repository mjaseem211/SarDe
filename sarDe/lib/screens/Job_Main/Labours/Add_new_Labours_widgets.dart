import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

Widget Title1() {
  return Padding(
    padding: EdgeInsets.only(left: 33.w, top: 109.h),
    child: Row(children: [
      Text("Labours",
          style: TextStyle(
              color: const Color(0xFF2B3070),
              fontSize: 35.sp,
              fontWeight: FontWeight.w400)),
    ]),
  );
}

Widget Heading() {
  return Padding(
    padding: EdgeInsets.only(right: 54.w, left: 33.w),
    child: Row(
      children: [
        Expanded(
          child: Text(
            "Name",
            style: TextStyle(
                fontWeight: FontWeight.w400,
                fontSize: 13.sp,
                color: const Color(0xFF2B3070)),
          ),
        ),
        SizedBox(
          width: 64.w,
        ),
        Expanded(
          flex: 2,
          child: Text(
            "Trade",
            style: TextStyle(
                fontWeight: FontWeight.w400,
                fontSize: 13.sp,
                color: const Color(0xFF2B3070)),
          ),
        ),
        SizedBox(
          width: 65.w,
        ),
        Expanded(
          flex: 1,
          child: Text(
            "Type",
            style: TextStyle(
                fontWeight: FontWeight.w400,
                fontSize: 13.sp,
                color: const Color(0xFF2B3070)),
          ),
        ),
        SizedBox(
          width: 30.w,
        ),
        Expanded(
          child: Text(
            "Hours",
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
    padding: EdgeInsets.only(right: 54.w, left: 33.w),
    child: Row(
      children: [
        Expanded(
          child: Text(
            "Rahul",
            style: TextStyle(
                fontWeight: FontWeight.w400,
                fontSize: 13.sp,
                color: const Color(0xFFDD7164)),
          ),
        ),
        SizedBox(
          width: 64.w,
        ),
        Expanded(
          flex: 2,
          child: Text(
            "Rope man",
            style: TextStyle(
                fontWeight: FontWeight.w400,
                fontSize: 13.sp,
                color: const Color(0xFFDD7164)),
          ),
        ),
        SizedBox(
          width: 65.w,
        ),
        Expanded(
          flex: 1,
          child: Text(
            "Own",
            style: TextStyle(
                fontWeight: FontWeight.w400,
                fontSize: 13.sp,
                color: const Color(0xFFDD7164)),
          ),
        ),
        SizedBox(
          width: 30.w,
        ),
        Expanded(
          child: Text(
            "3",
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
    padding: EdgeInsets.only(right: 54.w, left: 33.w),
    child: Row(
      children: [
        Expanded(
          child: Text(
            "Vinod",
            style: TextStyle(
                fontWeight: FontWeight.w400,
                fontSize: 13.sp,
                color: const Color(0xFFDD7164)),
          ),
        ),
        SizedBox(
          width: 64.w,
        ),
        Expanded(
          flex: 2,
          child: Text(
            "Painter",
            style: TextStyle(
                fontWeight: FontWeight.w400,
                fontSize: 13.sp,
                color: const Color(0xFFDD7164)),
          ),
        ),
        SizedBox(
          width: 65.w,
        ),
        Expanded(
          flex: 1,
          child: Text(
            "Sub",
            style: TextStyle(
                fontWeight: FontWeight.w400,
                fontSize: 13.sp,
                color: const Color(0xFFDD7164)),
          ),
        ),
        SizedBox(
          width: 30.w,
        ),
        Expanded(
          child: Text(
            "7",
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
