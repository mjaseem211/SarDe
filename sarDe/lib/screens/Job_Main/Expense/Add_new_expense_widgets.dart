import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';


Widget title() {
  return Padding(
      padding: EdgeInsets.only(left: 36.w,top: 109.h),
      child: Row(
        children: [
          Text(
            "Expence",
            style: TextStyle(
              color: Color(0xFF2B3070),
              fontSize: 20.sp,
              fontWeight: FontWeight.w400,
            ),
          )
        ],
      ));
}

Widget heading() {
  return Padding(
    padding: EdgeInsets.only(right: 49.w, left: 33.w),
    child: Row(
      children: [
        FittedBox(
          child: Text(
            "Expenses",
            style: TextStyle(
                fontWeight: FontWeight.w400,
                fontSize: 13.sp,
                color: const Color(0xFF2B3070)),
          ),
        ),
        SizedBox(
          width: 73.w,
        ),
        FittedBox(
            child: Text(
              "Amount",
              style: TextStyle(
                  fontWeight: FontWeight.w400,
                  fontSize: 13.sp,
                  color: const Color(0xFF2B3070)),
            )),
        SizedBox(
          width: 63.w,
        ),
        FittedBox(
            child: Text(
              "Reference",
              style: TextStyle(
                  fontWeight: FontWeight.w400,
                  fontSize: 13.sp,
                  color: const Color(0xFF2B3070)),
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
    padding: EdgeInsets.only(right: 186.w, left: 33.w),
    child: Row(
      children: [
        FittedBox(
          child: Container(
            alignment: Alignment.centerLeft,
            child: Text(
              "Vech Rent",
              style: TextStyle(
                  fontWeight: FontWeight.w400,
                  fontSize: 13.sp,
                  color: const Color(0xFFDD7164)),
            ),
          ),
        ),
        SizedBox(
          width: 77.w,
        ),
        FittedBox(
            child: Container(
              alignment: Alignment.centerLeft,
              child: Text(
                "1800",
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

Widget data1() {
  return Padding(
    padding: EdgeInsets.only(right: 185.w, left: 36.w),
    child: Row(
      children: [
        FittedBox(
          child: Container(
            alignment: Alignment.centerLeft,
            child: Text(
              "Machine Rent",
              style: TextStyle(
                  fontWeight: FontWeight.w400,
                  fontSize: 13.sp,
                  color: const Color(0xFFDD7164)),
            ),
          ),
        ),
        SizedBox(
          width: 55.w,
        ),
        FittedBox(
          child: Container(
            alignment: Alignment.centerLeft,
            child: Text(
              "1000",
              style: TextStyle(
                  fontWeight: FontWeight.w400,
                  fontSize: 13.sp,
                  color: const Color(0xFFDD7164)),
            ),
          ),
        ),

      ],
    ),
  );
}


