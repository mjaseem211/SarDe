// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

Widget title() {
  return Padding(
    padding: EdgeInsets.only(left: 36.w, top: 109.h),
    child: Row(
      children: [
        Text(
          "Expence",
          style: TextStyle(
            color: const Color(0xFF2B3070),
            fontSize: 20.sp,
            fontWeight: FontWeight.w400,
          ),
        )
      ],
    ),
  );
}

Widget heading() {
  return Padding(
    padding: EdgeInsets.only(right: 49.w, left: 33.w),
    child: Row(
      children: [
        Expanded(
          flex: 8,
          child: Text(
            "Expenses",
            style: TextStyle(
                fontWeight: FontWeight.w400,
                fontSize: 13.sp,
                color: const Color(0xFF2B3070)),
          ),
        ),
        Expanded(
          flex: 7,
          child: Text(
            "Amount",
            style: TextStyle(
                fontWeight: FontWeight.w400,
                fontSize: 13.sp,
                color: const Color(0xFF2B3070)),
          ),
        ),
        Expanded(
          flex: 4,
          child: Text(
            "Reference",
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

Widget data1(String expense, String amount, String reference) {
  return Padding(
    padding: EdgeInsets.only(right: 49.w, left: 33.w, top: 8.h),
    child: Row(
      children: [
        Expanded(
          flex: 9,
          child: Text(
            expense,
            style: TextStyle(
                fontWeight: FontWeight.w400,
                fontSize: 14.sp,
                color: const Color(0xFFDD7164)),
          ),
        ),
        Expanded(
          flex: 7,
          child: Text(
            amount,
            style: TextStyle(
                fontWeight: FontWeight.w400,
                fontSize: 14.sp,
                color: const Color(0xFFDD7164)),
          ),
        ),
        Expanded(
          flex: 4,
          child: Text(
            reference,
            style: TextStyle(
                fontWeight: FontWeight.w400,
                fontSize: 14.sp,
                color: const Color(0xFFDD7164)),
          ),
        ),
      ],
    ),
  );
}
