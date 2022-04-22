import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:sarde/screens/Work_Progress/add_new_work/Add_new_work.dart';
import 'package:sarde/screens/Work_Progress/add_new_work/work_progress_text_button.dart';
import 'package:sarde/screens/Work_Progress/work_progress_widgets.dart';
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
              onTap: (){
                Navigator.of(context).pushReplacement(MaterialPageRoute(
                    builder: (context) => new_work()));
              },
            ),
            Sub_Heading(),
            SizedBox(height: 3.h),
            Data(),
            SizedBox(
              height: 20.h,
            ),
            Heading1(),
            Sub_Heading1(),
            SizedBox(
              height: 3.h,
            ),
            Data1(),
            SizedBox(
              height: 24.h,
            ),
            Heading2(),
            Sub_Heading2(),
            SizedBox(
              height: 3.h,
            ),
            Data2(),
            SizedBox(
              height: 228.h,
            ),
            Bottom_back_button(
              onTap: () {
                Navigator.of(context).pushReplacement(MaterialPageRoute(
                    builder: (context) => JobMain()));
              },
            ),
          ]),
        ]));
  }
}