import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

Widget title() {
  return Padding(
      padding: EdgeInsets.only(left: 36.w, top: 109.h,right: 271.w),
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
Widget heading() {
  return Padding(
    padding: EdgeInsets.only(right: 52.w, left: 33.w),
    child: Row(
      children: [
        FittedBox(
          child: Text(
            "Item",
            style: TextStyle(
                fontWeight: FontWeight.w400,
                fontSize: 13.sp,
                color: const Color(0xFF2B3070)),
          ),
        ),
        SizedBox(
          width: 91.w,
        ),
        FittedBox(

            child: Container(
          alignment: Alignment.centerLeft,
          child: Text(
            "Quantity",
            style: TextStyle(
                fontWeight: FontWeight.w400,
                fontSize: 13.sp,
                color: const Color(0xFF2B3070)),
          ),
        )),
        SizedBox(
          width: 66.w,
        ),
        Expanded(
            child: Container(
          alignment: Alignment.centerRight,
          child: Text(
            "Condition",
            style: TextStyle(
                fontWeight: FontWeight.w400,
                fontSize: 13.sp,
                color: const Color(0xFF2B3070)),
          ),
        )),
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
Widget data() {
  return Padding(
    padding: EdgeInsets.only(right: 65.w, left: 33.w),
    child: Row(
      children: [
        FittedBox(
          child: Text(
            "Boiler",
            style: TextStyle(
                fontWeight: FontWeight.w400,
                fontSize: 13.sp,
                color: const Color(0xFFDD7164)),
          ),
        ),
        SizedBox(
          width: 105.w,
        ),
        FittedBox(

            child: Container(
              alignment: Alignment.centerLeft,
              child: Text(
                "2",
                style: TextStyle(
                    fontWeight: FontWeight.w400,
                    fontSize: 13.sp,
                    color: const Color(0xFFDD7164)),
              ),
            )),
        SizedBox(
          width: 107.w,
        ),
        FittedBox(
            child: Container(
          alignment: Alignment.centerRight,
          child: Text(
            "Good",
            style: TextStyle(
                fontWeight: FontWeight.w400,
                fontSize: 13.sp,
                color: const Color(0xFF52972A)),
          ),
        )),
      ],
    ),
  );
}

Widget data1() {
  return Padding(
    padding: EdgeInsets.only(right: 59.w, left: 33.w),
    child: Row(
      children: [
        Expanded(
          child: Text(
            "Spanner 12",
            style: TextStyle(
                fontWeight: FontWeight.w400,
                fontSize: 13.sp,
                color: const Color(0xFFDD7164)),
          ),
        ),
        SizedBox(
          width: 71.w,
        ),
        FittedBox(

            child: Container(
              alignment: Alignment.centerLeft,
              child: Text(
                "1",
                style: TextStyle(
                    fontWeight: FontWeight.w400,
                    fontSize: 13.sp,
                    color: const Color(0xFFDD7164)),
              ),
            )),
        SizedBox(
          width: 101.w,
        ),
        FittedBox(
            child: Container(
          alignment: Alignment.centerRight,
          child: Text(
            "Service",
            style: TextStyle(
                fontWeight: FontWeight.w400,
                fontSize: 13.sp,
                color: const Color(0xFFF7CE46)),
          ),
        )),
      ],
    ),
  );
}
