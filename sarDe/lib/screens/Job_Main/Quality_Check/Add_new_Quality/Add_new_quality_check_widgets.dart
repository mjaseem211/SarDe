import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:photo_view/photo_view.dart';

Widget title() {
  return Padding(
    padding: EdgeInsets.only(left: 33.w, top: 109.h, right: 120.w),
    child: Row(children: [
      Text("Quality check",
          style: TextStyle(
              color: const Color(0xFF2B3070),
              fontSize: 35.sp,
              fontWeight: FontWeight.w400)),
    ]),
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

// ignore: non_constant_identifier_names
Widget Photoview() {
  return Row(children: [
    Padding(
      padding: EdgeInsets.only(
        left: 33.w,
        top: 24.h,
      ),
      child: Column(
        children: [
          SizedBox(
            height: 116.h,
            width: 140.w,
            child: PhotoView(
              imageProvider: const AssetImage(
                'assets/images/photo_view.png',
              ),
              backgroundDecoration: BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(6.r)),
              ),
            ),
          ),
        ],
      ),
    ),
    Padding(
      padding: EdgeInsets.only(
        top: 41.h,
      ),
      child: Column(children: [
        Padding(
          padding: EdgeInsets.only(right: 76.w),
          child: Row(children: [
            Text("12.03.21  12.36 pm",
                style: TextStyle(
                    color: const Color(0xFF2B3070),
                    fontSize: 13.sp,
                    fontWeight: FontWeight.w400)),
          ]),
        ),
        Padding(
          padding: EdgeInsets.only(right: 100.w),
          child: Row(children: [
            Text("1103 Moordu",
                style: TextStyle(
                    color: const Color(0xFF2B3070),
                    fontSize: 13.sp,
                    fontWeight: FontWeight.w400)),
          ]),
        ),
        SizedBox(
          height: 1.h,
        ),
        Padding(
          padding: EdgeInsets.only(left: 19.w, right: 100.w),
          child: Row(children: [
            Text("Thickness :",
                style: TextStyle(
                    color: const Color(0xFFDD7164),
                    fontSize: 12.sp,
                    fontWeight: FontWeight.w400)),
            Text("Good",
                style: TextStyle(
                    color: const Color(0xFF52972A),
                    fontSize: 12.sp,
                    fontWeight: FontWeight.w400)),
          ]),
        ),
        Padding(
          padding: EdgeInsets.only(left: 19.w, right: 42.w),
          child: Row(children: [
            Text("Edge Alignment :",
                style: TextStyle(
                    color: const Color(0xFFDD7164),
                    fontSize: 12.sp,
                    fontWeight: FontWeight.w400)),
            Text("Acceptable",
                style: TextStyle(
                    color: const Color(0xFFF7CE46),
                    fontSize: 12.sp,
                    fontWeight: FontWeight.w400)),
          ]),
        ),
      ]),
    ),
  ]);
}
