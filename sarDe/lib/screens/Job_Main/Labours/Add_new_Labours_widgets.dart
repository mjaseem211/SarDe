import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

Widget Title1() {
  return Padding(
    padding: EdgeInsets.only(left: 33.w, top: 109.h, right: 218.w),
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
        FittedBox(
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
        FittedBox(
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
        FittedBox(
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
        FittedBox(
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
        FittedBox(
          child: Text(
            "Rahul",
            style: TextStyle(
                fontWeight: FontWeight.w400,
                fontSize: 13.sp,
                color: const Color(0xFFDD7164)),
          ),
        ),
        SizedBox(
          width: 56.w,
        ),
        FittedBox(
          child: Text(
            "Rope man",
            style: TextStyle(
                fontWeight: FontWeight.w400,
                fontSize: 13.sp,
                color: const Color(0xFFDD7164)),
          ),
        ),
        SizedBox(
          width: 50.w,
        ),
        FittedBox(
          child: Text(
            "Own",
            style: TextStyle(
                fontWeight: FontWeight.w400,
                fontSize: 13.sp,
                color: const Color(0xFFDD7164)),
          ),
        ),
        SizedBox(
          width: 49.w,
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
    padding: EdgeInsets.only(right: 64.w, left: 33.w),
    child: Row(
      children: [
        FittedBox(
          child: Text(
            "Vinod",
            style: TextStyle(
                fontWeight: FontWeight.w400,
                fontSize: 13.sp,
                color: const Color(0xFFDD7164)),
          ),
        ),
        SizedBox(
          width: 62.w,
        ),
        FittedBox(
          child: Text(
            "Painter",
            style: TextStyle(
                fontWeight: FontWeight.w400,
                fontSize: 13.sp,
                color: const Color(0xFFDD7164)),
          ),
        ),
        SizedBox(
          width: 62.w,
        ),
        FittedBox(
          child: Text(
            "Sub",
            style: TextStyle(
                fontWeight: FontWeight.w400,
                fontSize: 13.sp,
                color: const Color(0xFFDD7164)),
          ),
        ),
        SizedBox(
          width: 53.w,
        ),
        FittedBox(
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
