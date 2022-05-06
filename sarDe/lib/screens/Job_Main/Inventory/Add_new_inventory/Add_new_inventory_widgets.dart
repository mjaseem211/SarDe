import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

Widget title() {
  return Padding(
      padding: EdgeInsets.only(left: 33.w, top: 109.h, right: 189.w),
      child: Row(
        children: [
          Text(
            "Inventory",
            style: TextStyle(
              color: const Color(0xFF2B3070),
              fontSize: 35.sp,
              fontWeight: FontWeight.w400,
            ),
          ),
        ],
      ));
}

Widget heading() {
  return Padding(
    padding: EdgeInsets.only(right: 57.w, left: 33.w),
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
        SizedBox(
          width: 213.w,
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
    padding: EdgeInsets.only(right: 56.w, left: 33.w),
    child: Row(
      children: [
        FittedBox(
          child: Text(
            "Rst Paint White",
            style: TextStyle(
                fontWeight: FontWeight.w400,
                fontSize: 13.sp,
                color: const Color(0xFFDD7164)),
          ),
        ),
        SizedBox(
          width: 159.w,
        ),
        FittedBox(
            child: Container(
          alignment: Alignment.centerLeft,
          child: Text(
            "10 Bag",
            style: TextStyle(
                fontWeight: FontWeight.w400,
                fontSize: 13.sp,
                color: const Color(0xFFDD7164)),
          ),
        )),
      ],
    ),
  );
}
