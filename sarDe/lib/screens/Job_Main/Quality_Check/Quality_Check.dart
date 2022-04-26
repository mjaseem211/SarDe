import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:sarde/screens/Job_Main/Quality_Check/Add_new_Quality/Add_new_quality_check.dart';
import 'package:sarde/screens/Job_Main/Quality_Check/Quality_Check_widgets.dart';
import 'package:sarde/screens/job_main/JobMain.dart';
import 'package:sarde/widgets/Bottom_back_button.dart';
import 'package:sarde/widgets/text_button.dart';


class Quality_Check extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        body: ListView(shrinkWrap: true, children: [
          Column(children: [
            title(),
            SizedBox(
              height: 3.h,
            ),
            subtitle(),
            SizedBox(
              height: 50.h,
            ),
            text_button(
              onTap: () {
                Navigator.of(context).pushReplacement(MaterialPageRoute(
                    builder: (context) => add_new_quality_check()));
              },
              left: 38.w,
              text: "Road Marking",
            ),
            text_button(
              onTap: () {
                Navigator.of(context).pushReplacement(MaterialPageRoute(
                    builder: (context) => add_new_quality_check()));
              },
              text: "Road Marking from kuttichira to maradu",
              font_size: 14.sp,
              color: const Color(0xFF000000).withOpacity(0.5),
              left: 39.w,
            ),
            SizedBox(height: 3.h),
            text_button(
              onTap: () {
                Navigator.of(context).pushReplacement(MaterialPageRoute(
                    builder: (context) => add_new_quality_check()));
              },
              text: "18-09-22",
              left: 249.w,
              color: const Color(0xFFBC401E),
              font_size: 16.sp,
            ),
            SizedBox(
              height: 9.h,
            ),
            line(),
            SizedBox(
              height: 11.h,
            ),
            text_button(
              onTap: () {
                Navigator.of(context).pushReplacement(MaterialPageRoute(
                    builder: (context) => add_new_quality_check()));
              },
              text: "Stud Fixing",
            ),
            text_button(
              onTap: () {
                Navigator.of(context).pushReplacement(MaterialPageRoute(
                    builder: (context) => add_new_quality_check()));
              },
              text: "Stud fixing on the sides from kuttichira to maradu",
              font_size: 14.sp,
              color: const Color(0xFF000000).withOpacity(0.5),
              left: 34.w,
            ),
            SizedBox(
              height: 3.h,
            ),
            text_button(
              onTap: () {
                Navigator.of(context).pushReplacement(MaterialPageRoute(
                    builder: (context) => add_new_quality_check()));
              },
              text: "18-09-22",
              left: 249.w,
              right: 75.w,
              color: const Color(0xFFBC401E),
              font_size: 16.sp,
            ),
            SizedBox(
              height: 22.h,
            ),
            line(),
            SizedBox(
              height: 11.h,
            ),
            text_button(
              onTap: () {
                Navigator.of(context).pushReplacement(MaterialPageRoute(
                    builder: (context) => add_new_quality_check()));
              },
              text: "Board Fixing",
            ),
            text_button(
              onTap: () {
                Navigator.of(context).pushReplacement(MaterialPageRoute(
                    builder: (context) => add_new_quality_check()));
              },
              text: "Board fixing on the sides from kuttichira to maradu",
              font_size: 14.sp,
              color: const Color(0xFF000000).withOpacity(0.5),
              left: 34.w,
            ),
            SizedBox(
              height: 3.h,
            ),
            text_button(
              onTap: () {
                Navigator.of(context).pushReplacement(MaterialPageRoute(
                    builder: (context) => add_new_quality_check()));
              },
              text: "18-09-22",
              left: 249.w,
              right: 75.w,
              color: const Color(0xFFBC401E),
              font_size: 16.sp,
            ),
            SizedBox(
              height: 230.h,
            ),
            Bottom_back_button(
              onTap: () {
                Navigator.of(context).pushReplacement(
                    MaterialPageRoute(builder: (context) => JobMain()));
              },
            ),
          ]),
        ]));
  }
}