import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:sarde/screens/Complete_checkup_form/complete_checkup_form.dart';
import 'package:sarde/screens/Start_Job_Form/Start_Job_Form.dart';
import 'package:sarde/widgets/Close_Day_Button.dart';
import 'package:sarde/screens/job_main/widgets/job_main_widgets.dart';
import 'package:sarde/widgets/Top_Back_button.dart';

class JobMain extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: ListView(
        shrinkWrap: true,
        children: [
          Column(
            children: [
              Top_Back_Button(
                onTap: () {
                  Navigator.of(context).pushReplacement(MaterialPageRoute(
                      builder: (context) => Start_Job_Form()));
                },
              ),
              SizedBox(
                height: 66.h,
              ),
              title(),
              SizedBox(
                height: 3.h,
              ),
              subTitle(),
              SizedBox(
                height: 29.h,
              ),
              gridView(),
              SizedBox(
                height: 35.h,
              ),
              Close_Day_Button(
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => Complete_Check_Up()));
                },
              ),
            ],
          ),
        ],
      ),
    );
  }
}
