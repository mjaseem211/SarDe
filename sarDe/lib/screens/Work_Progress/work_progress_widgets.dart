import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

Widget Title1() {
  return Padding(
    padding: EdgeInsets.only(left: 33.w, top: 99.h),
    child: Row(children: [
      Text("Work Progress",
          style: TextStyle(
              color: Color(0xFF2B3070),
              fontSize: 35.sp,
              fontWeight: FontWeight.w400)),
    ]),
  );
}

Widget Sub_Title() {
  return Padding(
    padding: EdgeInsets.only(
      left: 33.w,
    ),
    child: Row(children: [
      Text("Job 303",
          style: TextStyle(
              color: Color(0xFF2B3070).withOpacity(0.7),
              fontSize: 22.sp,
              fontWeight: FontWeight.w400)),
    ]),
  );
}

Widget Sub_Heading() {
  return Padding(
    padding: EdgeInsets.only(
      left: 34.w,
    ),
    child: GestureDetector(
      child: Row(children: [
        Text("Road Marking from kuttichira to maradu",
            style: TextStyle(
                color: Color(0xFF000000).withOpacity(0.5),
                fontSize: 14.sp,
                fontWeight: FontWeight.w400)),
      ]),
    ),
  );
}

Widget Data() {
  return Padding(
    padding: EdgeInsets.only(left: 34.w, right: 46.w),
    child: Row(
      children: [
        Expanded(
          child: Container(
            alignment: Alignment.centerLeft,
            child: Text(
              "18-09-22",
              style: TextStyle(
                  fontWeight: FontWeight.w400,
                  fontSize: 16.sp,
                  color: const Color(0xFFBC401E)),
            ),
          ),
        ),
        Expanded(
            child: Container(
          alignment: Alignment.centerRight,
          child: Text(
            "Total : 534  sqm",
            style: TextStyle(
                fontWeight: FontWeight.w400,
                fontSize: 16.sp,
                color: const Color(0xFF2B3070)),
          ),
        )),
      ],
    ),
  );
}

Widget Heading1() {
  return Padding(
    padding: EdgeInsets.only(
      left: 33.w,
    ),
    child: Row(children: [
      Text("Stud Fixing",
          style: TextStyle(
              color: Color(0xFFDD7164),
              fontSize: 20.sp,
              fontWeight: FontWeight.w400)),
    ]),
  );
}

Widget Sub_Heading1() {
  return Padding(
    padding: EdgeInsets.only(
      left: 34.w,
    ),
    child: Row(children: [
      Text("Stud fixing on the sides from kuttichira to maradu",
          style: TextStyle(
              color: Color(0xFF000000).withOpacity(0.5),
              fontSize: 14.sp,
              fontWeight: FontWeight.w400)),
    ]),
  );
}

Widget Data1() {
  return Padding(
    padding: EdgeInsets.only(left: 34.w, right: 46.w),
    child: Row(
      children: [
        Expanded(
          child: Container(
            alignment: Alignment.centerLeft,
            child: Text(
              "18-09-22",
              style: TextStyle(
                  fontWeight: FontWeight.w400,
                  fontSize: 16.sp,
                  color: const Color(0xFFBC401E)),
            ),
          ),
        ),
        Expanded(
            child: Container(
          alignment: Alignment.centerRight,
          child: Text(
            "Total : 184 nos",
            style: TextStyle(
                fontWeight: FontWeight.w400,
                fontSize: 16.sp,
                color: const Color(0xFF2B3070)),
          ),
        )),
      ],
    ),
  );
}

Widget Heading2() {
  return Padding(
    padding: EdgeInsets.only(
      left: 33.w,
    ),
    child: Row(children: [
      Text("Board Fixing",
          style: TextStyle(
              color: Color(0xFFDD7164),
              fontSize: 20.sp,
              fontWeight: FontWeight.w400)),
    ]),
  );
}

Widget Sub_Heading2() {
  return Padding(
    padding: EdgeInsets.only(
      left: 34.w,
    ),
    child: Row(children: [
      Text("Board fixing on the sides from kuttichira to maradu",
          style: TextStyle(
              color: Color(0xFF000000).withOpacity(0.5),
              fontSize: 14.sp,
              fontWeight: FontWeight.w400)),
    ]),
  );
}

Widget Data2() {
  return Padding(
    padding: EdgeInsets.only(left: 34.w, right: 46.w),
    child: Row(
      children: [
        Expanded(
          child: Container(
            alignment: Alignment.centerLeft,
            child: Text(
              "18-09-22",
              style: TextStyle(
                  fontWeight: FontWeight.w400,
                  fontSize: 16.sp,
                  color: const Color(0xFFBC401E)),
            ),
          ),
        ),
        Expanded(
            child: Container(
          alignment: Alignment.centerRight,
          child: Text(
            "Total : 43  nos",
            style: TextStyle(
                fontWeight: FontWeight.w400,
                fontSize: 16.sp,
                color: const Color(0xFF2B3070)),
          ),
        )),
      ],
    ),
  );
}
