import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:sarde/screens/job_main/JobMain.dart';
import '../../../../widgets/Bottom_back_button.dart';
import 'package:sarde/screens/Job_Main/Work_Progress/add_new_work/add_new_work_widgets.dart';

class add_new_work extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: ListView(shrinkWrap: true, children: [
        Column(children: [
          Title1(),
          SizedBox(
            height: 26.h,
          ),
          Heading(),
          SizedBox(
            height: 2.h,
          ),
          line(),
          SizedBox(
            height: 1.h,
          ),
          Data(),
          SizedBox(
            height: 11.h,
          ),
          Data1(),
          SizedBox(
            height: 57.h,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [Image.asset('assets/images/plus_button.png',height:32.h,width: 30.w,)],
          ),
          SizedBox(
            height: 365.61.h,
          ),
          Bottom_back_button(
            onTap: () {
              Navigator.of(context).pushReplacement(
                  MaterialPageRoute(builder: (context) => JobMain()));
            },
          ),
        ]),
      ]),
    );
  }
}
