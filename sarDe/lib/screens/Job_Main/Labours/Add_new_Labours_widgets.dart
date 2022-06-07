import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

// ignore: non_constant_identifier_names
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

// ignore: non_constant_identifier_names
Widget Heading() {
  return Padding(
    padding: EdgeInsets.only(right: 54.w, left: 33.w),
    child: Row(
      children: [
        Expanded(
          flex: 3,
          child: Text(
            "Name",
            style: TextStyle(
                fontWeight: FontWeight.w400,
                fontSize: 13.sp,
                color: const Color(0xFF2B3070)),
          ),
        ),
        Expanded(
          flex: 3,
          child: Text(
            "Trade",
            style: TextStyle(
                fontWeight: FontWeight.w400,
                fontSize: 13.sp,
                color: const Color(0xFF2B3070)),
          ),
        ),
        Expanded(
          flex: 3,
          child: Text(
            "Type",
            style: TextStyle(
                fontWeight: FontWeight.w400,
                fontSize: 13.sp,
                color: const Color(0xFF2B3070)),
          ),
        ),
        Text(
          "Hours",
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

Widget data1(String name, String trade, String type, String hours) {
  return Padding(
    padding: EdgeInsets.only(right: 54.w, left: 33.w),
    child: Row(
      children: [
        Expanded(
          flex: 3,
          child: Text(
            "${name}",
            style: TextStyle(
                fontWeight: FontWeight.w400,
                fontSize: 13.sp,
                color: const Color(0xFFDD7164)),
          ),
        ),
        Expanded(
          flex: 3,
          child: Text(
            "${trade}",
            style: TextStyle(
                fontWeight: FontWeight.w400,
                fontSize: 13.sp,
                color: const Color(0xFFDD7164)),
          ),
        ),
        Expanded(
          flex: 3,
          child: Text(
            "${type}",
            style: TextStyle(
                fontWeight: FontWeight.w400,
                fontSize: 13.sp,
                color: const Color(0xFFDD7164)),
          ),
        ),
        Text(
          "${hours}",
          style: TextStyle(
              fontWeight: FontWeight.w400,
              fontSize: 13.sp,
              color: const Color(0xFFDD7164)),
        ),
      ],
    ),
  );
}
