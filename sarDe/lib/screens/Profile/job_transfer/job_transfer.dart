import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class job_transfer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        body: ListView(shrinkWrap: true, children: [
          Column(children: [
            Padding(
              padding: EdgeInsets.only(left: 33.w, top: 118.h),
              child: Row(children: [
                Text("Trasfer Log",
                    style: TextStyle(
                        color: const Color(0xFF2B3070),
                        fontSize: 35.sp,
                        fontWeight: FontWeight.w400)),
              ]),
            ),
            SizedBox(
              height: 25.h,
            ),
            Padding(
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
            ),
            SizedBox(
              height: 12.h,
            ),
            Padding(
              padding: EdgeInsets.only(
                left: 33.w,
              ),
              child: Row(children: [
                Text("Job 303 to Job 584",
                    style: TextStyle(
                        color: const Color(0xFFDD7164).withOpacity(0.7),
                        fontSize: 20.sp,
                        fontWeight: FontWeight.w400)),
              ]),
            ),
            Padding(
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
            ),
            SizedBox(
              height: 42.h,
            ),
            Padding(
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
            ),
            SizedBox(
              height: 12.h,
            ),
            Padding(
              padding: EdgeInsets.only(
                left: 33.w,
              ),
              child: Row(children: [
                Text("Job 303 to Job 584",
                    style: TextStyle(
                        color: const Color(0xFFDD7164).withOpacity(0.7),
                        fontSize: 20.sp,
                        fontWeight: FontWeight.w400)),
              ]),
            ),
            Padding(
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
            ),
            SizedBox(
              height: 20.h,
            ),
            Padding(
              padding: EdgeInsets.only(
                left: 40.w,
              ),
              child: Row(
                children: [
                  Container(
                    height: 2.h,
                    width: 304.w,
                    color: Colors.black.withOpacity(0.5),
                  )
                ],
              ),
            )
          ]),
        ]));
  }
}
