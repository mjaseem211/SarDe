import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:sarde/screens/Job_Main/Work_Progress/Stud_Fixing/Stud_Fixing.dart';
import 'package:sarde/widgets/text_button.dart';
import 'package:sarde/screens/Job_Main/Work_Progress/work_progress_widgets.dart';
import 'package:sarde/screens/job_main/JobMain.dart';
import 'package:sarde/widgets/Bottom_back_button.dart';

import 'Board_Fixing/Board_Fixing.dart';
import 'Road_Marking/Road_marking.dart';

// ignore: camel_case_types
class work_progress extends StatelessWidget {
  const work_progress({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        resizeToAvoidBottomInset: false,
        backgroundColor: Colors.white,
        body: Column(children: [
          Title1(),
          SizedBox(
            height: 3.h,
          ),
          Sub_Title(context),
          Expanded(
            child: ListView(children: [
              SizedBox(
                height: 41.h,
              ),
              text_button(
                onTap: () {
                  Navigator.of(context).pushReplacement(MaterialPageRoute(
                      builder: (context) =>
                          const Road_Marking_work_progress()));
                },
                text: "Road Marking",
              ),
              text_button(
                onTap: () {
                  Navigator.of(context).pushReplacement(MaterialPageRoute(
                      builder: (context) =>
                          const Road_Marking_work_progress()));
                },
                text: "Road Marking from kuttichira to maradu",
                font_size: 14.sp,
                color: const Color(0xFF000000).withOpacity(0.5),
                left: 34.w,
              ),
              SizedBox(height: 3.h),
              const text_button1(),
              SizedBox(
                height: 20.h,
              ),
              text_button(
                onTap: () {
                  Navigator.of(context).pushReplacement(MaterialPageRoute(
                      builder: (context) =>
                          const Stud_Fixing_workprogress()));
                },
                text: "Stud Fixing",
              ),
              text_button(
                onTap: () {
                  Navigator.of(context).pushReplacement(MaterialPageRoute(
                      builder: (context) =>
                          const Stud_Fixing_workprogress()));
                },
                text: "Stud fixing on the sides from kuttichira to maradu",
                font_size: 14.sp,
                color: const Color(0xFF000000).withOpacity(0.5),
                left: 34.w,
              ),
              SizedBox(
                height: 3.h,
              ),
              const text_button2(),
              SizedBox(
                height: 24.h,
              ),
              text_button(
                onTap: () {
                  Navigator.of(context).pushReplacement(MaterialPageRoute(
                      builder: (context) =>
                          const Board_Fixing_work_progress()));
                },
                text: "Board Fixing",
              ),
              text_button(
                onTap: () {
                  Navigator.of(context).pushReplacement(MaterialPageRoute(
                      builder: (context) =>
                          const Board_Fixing_work_progress()));
                },
                text: "Board fixing on the sides from kuttichira to maradu",
                font_size: 14.sp,
                color: const Color(0xFF000000).withOpacity(0.5),
                left: 34.w,
              ),
              SizedBox(
                height: 3.h,
              ),
              const text_button3(),
            ]),
          ),
          Bottom_back_button(
            onTap: () {
              Navigator.of(context).pop();
            },
          ),
          SizedBox(
            height: 72.h,
          ),
        ]));
  }
}
