import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

Widget title() {
  return Padding(
    padding: EdgeInsets.only(left: 33.w, top: 118.h),
    child: Row(children: [
      Text("Trasfer Log",
          style: TextStyle(
              color: const Color(0xFF2B3070),
              fontSize: 35.sp,
              fontWeight: FontWeight.w400)),
    ]),
  );
}

Widget subtitle() {
  return Padding(
    padding: EdgeInsets.only(
      left: 33.w,
    ),
    child: Row(children: [
      Text("New pending trasfer",
          style: TextStyle(
              color: const Color(0xFF2B3070).withOpacity(0.7),
              fontSize: 22.sp,
              fontWeight: FontWeight.w400)),
    ]),
  );
}

Widget heading() {
  return Padding(
    padding: EdgeInsets.only(left: 33.w, right: 72.w),
    child: Row(children: [
      Expanded(
        child: Text("Job 303 to Job 584",
            style: TextStyle(
                color: const Color(0xFFDD7164).withOpacity(0.7),
                fontSize: 20.sp,
                fontWeight: FontWeight.w400)),
      ),
      
      Text(
        '02-04-22',
        style: TextStyle(
      color: const Color(0xffBC401E),
      fontSize: 16.sp,
      fontWeight: FontWeight.w400,
        ),
      ),
    ]),
  );
}

Widget subheading() {
  return Padding(
    padding: EdgeInsets.only(
      left: 33.w,
    ),
    child: Row(children: [
      Text("Pradeep to Lukman",
          style: TextStyle(
              color: const Color(0xFF000000).withOpacity(0.5),
              fontSize: 20.sp,
              fontWeight: FontWeight.w400)),
    ]),
  );
}

Widget subtitle1() {
  return Padding(
    padding: EdgeInsets.only(
      left: 33.w,
    ),
    child: Row(children: [
      Text("Recent transfers",
          style: TextStyle(
              color: const Color(0xFF2B3070).withOpacity(0.7),
              fontSize: 22.sp,
              fontWeight: FontWeight.w400)),
    ]),
  );
}

Widget line() {
  return Padding(
    padding: EdgeInsets.only(left: 40.w, right: 46.w),
    child: Row(
      children: [
        Container(
          height: 1.h,
          width: 304.w,
          color: Colors.black.withOpacity(0.5),
        )
      ],
    ),
  );
}
