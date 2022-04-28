import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:sarde/screens/job_main/JobMain.dart';
import '../../../../widgets/Bottom_back_button.dart';
import 'package:sarde/screens/Job_Main/Labours/Add_new_Labours_widgets.dart';

class add_new_labours extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(children: [
        Title1(),
        SizedBox(
          height: 26.h,
        ),
        Heading(),
        SizedBox(
          height: 2.h,
        ),
        line(),
        Expanded(
          child: ListView(children: [
            Data(),
            SizedBox(
              height: 11.h,
            ),
            Data1(),
          ]),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [Image.asset('assets/images/plus_button.png')],
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
        SizedBox(
          height: 72.h,
        ),
      ]),
    );
  }
}
