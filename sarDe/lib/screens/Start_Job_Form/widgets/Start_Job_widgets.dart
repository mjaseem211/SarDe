import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:sarde/screens/Job_Main/JobMain.dart';

class Start_Button extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      child: Stack(alignment: Alignment.center, children: <Widget>[
        Row(
          children:[ Expanded(
            child: Container(
              height: 98.h,
              width: 390.w,
              color: const Color(0xff2B3070),
            ),
          ),
        ]),
        Padding(
            padding: EdgeInsets.only(left: 328.w, right: 56.w,top: 38.h,bottom: 44.h),
            child: Image.asset('assets/images/forward_arrow.png',height: 14.h,width: 8.w,)),

        Padding(padding: EdgeInsets.only(right: 220.w,left: 56.w,top:28.h ,bottom:35.h ),
          child: Text(
            "Start Job",
            style: TextStyle(
                fontWeight: FontWeight.w400,
                fontSize: 25.sp,
                color: const Color(0xFFFFFFFF)),
          ),
        ),
      ]),
      onTap: (){
    Navigator.of(context).pushReplacement(MaterialPageRoute(
    builder: (context) => JobMain()));
      },
    );
  }
}

Widget title1() {
  return Padding(
    padding: EdgeInsets.only(left: 33.w),
    child: Row(children: [
      Container(
        alignment: Alignment.centerLeft,
        child: Text(
          "Job 303",
          style: TextStyle(
              fontWeight: FontWeight.w400,
              fontSize: 35.sp,
              color: const Color(0xFF2B3070)),
        ),
      ),
    ]),
  );
}

Widget subtitle() {
  return Padding(
    padding: EdgeInsets.only(left: 33.w),
    child: Row(children: [
      Container(
        alignment: Alignment.centerLeft,
        child: Text(
          "NABARD RIDF 23\nKuttichira to Maradu",
          style: TextStyle(
              fontWeight: FontWeight.w400,
              fontSize: 22.sp,
              color: const Color(0xFF2B3070).withOpacity(0.7)),
        ),
      ),
    ]),
  );
}

Widget date() {
  return Padding(
    padding: EdgeInsets.only(left: 33.w, right: 149.w),
    child: Row(
      children: [
        Expanded(
          child: Container(
            alignment: Alignment.centerLeft,
            child: Text(
              "10-08-22",
              style: TextStyle(
                  fontWeight: FontWeight.w400,
                  fontSize: 22.sp,
                  color: const Color(0xFF52972A)),
            ),
          ),
        ),
        Expanded(
            child: Container(
          alignment: Alignment.centerRight,
          child: Text(
            "18-09-22",
            style: TextStyle(
                fontWeight: FontWeight.w400,
                fontSize: 22.sp,
                color: const Color(0xFFB8493C)),
          ),
        )),
      ],
    ),
  );
}

Widget heading() {
  return Padding(
    padding: EdgeInsets.only(left: 35.w),
    child: Row(children: [
      Container(
        alignment: Alignment.centerLeft,
        child: Text(
          "Road Marking",
          style: TextStyle(
              fontWeight: FontWeight.w400,
              fontSize: 20.sp,
              color: const Color(0xFFDD7164)),
        ),
      ),
    ]),
  );
}

Widget subheading() {
  return Padding(
    padding: EdgeInsets.only(left: 36.w),
    child: Row(children: [
      Container(
        alignment: Alignment.centerLeft,
        child: Text(
          "Road Marking from kuttichira to maradu",
          style: TextStyle(
              fontWeight: FontWeight.w400,
              fontSize: 14.sp,
              color: const Color(0xFF000000).withOpacity(0.5)),
        ),
      ),
    ]),
  );
}

Widget data() {
  return Padding(
    padding: EdgeInsets.only(left: 36.w, right: 44.w),
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

Widget line() {
  return Padding(
    padding: EdgeInsets.only(left: 37.w, right: 49.w),
    child: Row(children: [
      Container(
        height: 1.h,
        width: 304.w,
        color: const Color(0xFF000000).withOpacity(0.5),
        alignment: Alignment.center,
      ),
    ]),
  );
}

Widget heading2() {
  return Padding(
    padding: EdgeInsets.only(left: 35.w),
    child: Row(children: [
      Container(
        alignment: Alignment.centerLeft,
        child: Text(
          "Stud Fixing",
          style: TextStyle(
              fontWeight: FontWeight.w400,
              fontSize: 20.sp,
              color: const Color(0xFFDD7164)),
        ),
      ),
    ]),
  );
}

Widget subheading1() {
  return Padding(
    padding: EdgeInsets.only(left: 36.w),
    child: Row(children: [
      Container(
        alignment: Alignment.centerLeft,
        child: Text(
          "Stud fixing on the sides from kuttichira to\nmaradu",
          style: TextStyle(
              fontWeight: FontWeight.w400,
              fontSize: 14.sp,
              color: const Color(0xFF000000).withOpacity(0.5)),
        ),
      ),
    ]),
  );
}

Widget data2() {
  return Padding(
    padding: EdgeInsets.only(left: 36.w, right: 44.w),
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

Widget heading3() {
  return Padding(
    padding: EdgeInsets.only(left: 35.w),
    child: Row(children: [
      Container(
        alignment: Alignment.centerLeft,
        child: Text(
          "Board Fixing",
          style: TextStyle(
              fontWeight: FontWeight.w400,
              fontSize: 20.sp,
              color: const Color(0xFFDD7164)),
        ),
      ),
    ]),
  );
}

Widget subheading2() {
  return Padding(
    padding: EdgeInsets.only(left: 36.w),
    child: Row(children: [
      Container(
        alignment: Alignment.centerLeft,
        child: Text(
          "Board fixing on the sides from kuttichira to\nmaradu",
          style: TextStyle(
              fontWeight: FontWeight.w400,
              fontSize: 14.sp,
              color: const Color(0xFF000000).withOpacity(0.5)),
        ),
      ),
    ]),
  );
}

Widget data3() {
  return Padding(
    padding: EdgeInsets.only(left: 36.w, right: 48.w),
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
