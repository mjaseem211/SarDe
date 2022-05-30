// ignore_for_file: non_constant_identifier_names

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

Widget title() {
  return Padding(
      padding: EdgeInsets.only(left: 36.w, top: 109.h, right: 271.w),
      child: Row(
        children: [
          Text(
            "Tools",
            style: TextStyle(
              color: const Color(0xFF2B3070),
              fontSize: 35.sp,
              fontWeight: FontWeight.w400,
            ),
          )
        ],
      ));
}

Widget heading_1() {
  return Padding(
    padding: EdgeInsets.only(right: 52.w, left: 33.w),
    child: Row(
      children: [
        Expanded(
          child: Text(
            "Item",
            style: TextStyle(
                fontWeight: FontWeight.w400,
                fontSize: 13.sp,
                color: const Color(0xFF2B3070)),
          ),
        ),
        Expanded(
          child: Text(
            "Quantity",
            style: TextStyle(
                fontWeight: FontWeight.w400,
                fontSize: 13.sp,
                color: const Color(0xFF2B3070)),
          ),
        ),
        Text(
          "Condition",
          style: TextStyle(
              fontWeight: FontWeight.w400,
              fontSize: 13.sp,
              color: const Color(0xFF2B3070)),
        ),
      ],
    ),
  );
}

Widget line_1() {
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

Widget data2(String item, String quantity, String condition) {
  return Padding(
    padding: EdgeInsets.only(right: 52.w, left: 33.w),
    child: Row(
      children: [
        Expanded(
          child: Text(
            "${item}",
            style: TextStyle(
                fontWeight: FontWeight.w400,
                fontSize: 13.sp,
                color: const Color(0xFFDD7164)),
          ),
        ),
        Expanded(
          child: Text(
            "${quantity}",
            style: TextStyle(
                fontWeight: FontWeight.w400,
                fontSize: 13.sp,
                color: const Color(0xFFDD7164)),
          ),
        ),
        Text(
          "${condition}",
          style: TextStyle(
              fontWeight: FontWeight.w400,
              fontSize: 13.sp,
              color: const Color(0xFFDD7164)),
        ),
      ],
    ),
  );
}


