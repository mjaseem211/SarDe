import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:sarde/screens/Job_Main/Work_Progress/add_new_work/Add_new_work.dart';
import 'package:sarde/widgets/text_button.dart';
import 'package:sarde/screens/Job_Main/Work_Progress/work_progress_widgets.dart';
import 'package:sarde/screens/job_main/JobMain.dart';
import 'package:sarde/widgets/Bottom_back_button.dart';

class work_progress extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        body: ListView(shrinkWrap: true, children: [
          Column(children: [
            Title1(),
            SizedBox(
              height: 3.h,
            ),
            Sub_Title(),
            SizedBox(
              height: 41.h,
            ),
            text_button(
              onTap: () {
                Navigator.of(context).pushReplacement(
                    MaterialPageRoute(builder: (context) => add_new_work()));
              },
              text: "Road Marking",
            ),
            text_button(
              onTap: () {
                Navigator.of(context).pushReplacement(
                    MaterialPageRoute(builder: (context) => add_new_work()));
              },
              text: "Road Marking from kuttichira to maradu",
              font_size: 14.sp,
              color: const Color(0xFF000000).withOpacity(0.5),
              left: 34.w,
            ),
            SizedBox(height: 3.h),
            text_button1(),
            SizedBox(
              height: 20.h,
            ),
            text_button(
              onTap: () {
                Navigator.of(context).pushReplacement(
                    MaterialPageRoute(builder: (context) => add_new_work()));
              },
              text: "Stud Fixing",
            ),
            text_button(
              onTap: () {
                Navigator.of(context).pushReplacement(
                    MaterialPageRoute(builder: (context) => add_new_work()));
              },
              text: "Stud fixing on the sides from kuttichira to maradu",
              font_size: 14.sp,
              color: const Color(0xFF000000).withOpacity(0.5),
              left: 34.w,
            ),
            SizedBox(
              height: 3.h,
            ),
            text_button2(),
            SizedBox(
              height: 24.h,
            ),
            text_button(
              onTap: () {
                Navigator.of(context).pushReplacement(
                    MaterialPageRoute(builder: (context) => add_new_work()));
              },
              text: "Board Fixing",
            ),
            text_button(
              text: "Board fixing on the sides from kuttichira to maradu",
              font_size: 14.sp,
              color: const Color(0xFF000000).withOpacity(0.5),
              left: 34.w,
            ),
            SizedBox(
              height: 3.h,
            ),
            text_button3(),
            SizedBox(
              height: 228.h,
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