import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:sarde/screens/Complete_checkup_form/widgets/complete_checkup_widgets.dart';
import 'package:sarde/screens/Job_Main/Expense/Add_new_expense.dart';
import 'package:sarde/screens/Job_Main/Inventory/Inventory.dart';
import 'package:sarde/screens/Job_Main/Labours/Add_new_Labours.dart';
import 'package:sarde/screens/Job_Main/Quality_Check/Quality_Check.dart';
import 'package:sarde/screens/Job_Main/Tools/Add_new_Tools.dart';
import 'package:sarde/screens/Job_Main/Work_Progress/work_progress.dart';
import 'package:sarde/screens/job_main/JobMain.dart';
import 'package:sarde/widgets/Close_Day_Button.dart';
import 'package:sarde/screens/success_page/Success_page.dart';
import 'package:sarde/widgets/Top_Back_button.dart';

class Complete_Check_Up extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(children: [
        Top_Back_Button(
          onTap: () {
            Navigator.of(context).pushReplacement(
                MaterialPageRoute(builder: (context) => JobMain()));
          },
        ),
        SizedBox(
          height: 26.h,
        ),
        title(),
        SizedBox(
          height: 3.h,
        ),
        subTitle(),
        Expanded(
          child: ListView(shrinkWrap: true, children: [
            subTitle2(),
            SizedBox(
              height: 15.h,
            ),
            Heading1(),
            SizedBox(
              height: 2.h,
            ),
            line(),
            SizedBox(
              height: 9.h,
            ),
            Heading2(),
            SizedBox(
              height: 8.h,
            ),
            Heading3(),
            SizedBox(
              height: 9.h,
            ),
            Heading4(),
            SizedBox(
              height: 11.88.h,
            ),
            GestureDetector(
              child: Padding(
                padding: EdgeInsets.only(left: 158.w),
                child: Row(
                  children: [
                    Image.asset(
                      'assets/images/edit_button.png',
                      height: 20.h,
                      width: 20.w,
                    ),
                  ],
                ),
              ),
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => work_progress()));
              },
            ),
            SizedBox(
              height: 29.h,
            ),
            Subtitle3(),
            SizedBox(
              height: 16.h,
            ),
            Heading5(),
            SizedBox(
              height: 2.h,
            ),
            line(),
            SizedBox(
              height: 6.h,
            ),
            Heading6(),
            SizedBox(
              height: 10.h,
            ),
            Heading7(),
            SizedBox(
              height: 7.h,
            ),
            Total(),
            SizedBox(
              height: 12.88.h,
            ),
            GestureDetector(
              child: Padding(
                padding: EdgeInsets.only(left: 158.w),
                child: Row(
                  children: [
                    Image.asset(
                      'assets/images/edit_button.png',
                      height: 20.h,
                      width: 20.w,
                    ),
                  ],
                ),
              ),
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => add_new_expense()));
              },
            ),
            SizedBox(
              height: 29.h,
            ),
            Subtitle4(),
            SizedBox(
              height: 11.h,
            ),
            Heading8(),
            SizedBox(
              height: 2.h,
            ),
            line(),
            SizedBox(
              height: 6.h,
            ),
            Heading9(),
            SizedBox(
              height: 9.h,
            ),
            Heading10(),
            SizedBox(
              height: 31.88.h,
            ),
            GestureDetector(
              child: Padding(
                padding: EdgeInsets.only(left: 158.w),
                child: Row(
                  children: [
                    Image.asset(
                      'assets/images/edit_button.png',
                      height: 20.h,
                      width: 20.w,
                    ),
                  ],
                ),
              ),
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => add_new_labours()));
              },
            ),
            SizedBox(
              height: 29.h,
            ),
            Subtitle5(),
            SizedBox(
              height: 12.h,
            ),
            Heading11(),
            SizedBox(
              height: 2.h,
            ),
            line(),
            SizedBox(
              height: 6.h,
            ),
            Heading12(),
            SizedBox(
              height: 15.h,
            ),
            Heading13(),
            SizedBox(
              height: 14.88.h,
            ),
            GestureDetector(
              child: Padding(
                padding: EdgeInsets.only(left: 158.w),
                child: Row(
                  children: [
                    Image.asset(
                      'assets/images/edit_button.png',
                      height: 20.h,
                      width: 20.w,
                    ),
                  ],
                ),
              ),
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => add_new_tools()));
              },
            ),
            SizedBox(
              height: 44.h,
            ),
            Subtitle6(),
            SizedBox(
              height: 18.h,
            ),
            Heading14(),
            SizedBox(
              height: 2.h,
            ),
            line(),
            SizedBox(
              height: 6.h,
            ),
            Heading15(),
            SizedBox(
              height: 19.88.h,
            ),
            GestureDetector(
              child: Padding(
                padding: EdgeInsets.only(left: 158.w),
                child: Row(
                  children: [
                    Image.asset(
                      'assets/images/edit_button.png',
                      height: 20.h,
                      width: 20.w,
                    ),
                  ],
                ),
              ),
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => Inventory()));
              },
            ),
            SizedBox(
              height: 53.h,
            ),
            Subtitle7(),
            SizedBox(
              height: 18.h,
            ),
            Heading16(),
            SizedBox(
              height: 2.h,
            ),
            line(),
            SizedBox(
              height: 6.h,
            ),
            Heading17(),
            SizedBox(
              height: 6.h,
            ),
            Heading18(),
            SizedBox(
              height: 8.h,
            ),
            Heading19(),
            SizedBox(
              height: 23.88.h,
            ),
            GestureDetector(
              child: Padding(
                padding: EdgeInsets.only(left: 158.w),
                child: Row(
                  children: [
                    Image.asset(
                      'assets/images/edit_button.png',
                      height: 20.h,
                      width: 20.w,
                    ),
                  ],
                ),
              ),
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => Quality_Check()));
              },
            ),
          ]),
        ),
        Close_Day_Button(
          onTap: () {
            Navigator.push(context,
                MaterialPageRoute(builder: (context) => Success_Page()));
          },
        )
      ]),
    );
  }
}
