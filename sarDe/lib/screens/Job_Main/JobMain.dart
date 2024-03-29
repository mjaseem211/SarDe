// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:sarde/screens/Complete_checkup_form/complete_checkup_form.dart';
import 'package:sarde/widgets/Close_Day_Button.dart';
import 'package:sarde/screens/job_main/widgets/job_main_widgets.dart';
import 'package:sarde/widgets/Top_Back_button.dart';

class JobMain extends StatelessWidget {
  const JobMain({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        children: [
          Top_Back_Button(
            onTap: () {
              Navigator.of(context).pop();
            },
          ),
          SizedBox(
            height: 26.h,
          ),
          title(context),
          SizedBox(
            height: 3.h,
          ),
          subTitle(context),
          Expanded(
            child: ListView(
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                children: const [
                  job_main_nav(),
                ]),
          ),
          Close_Day_Button(
            onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => const Complete_Check_Up()));
            },
          ),
        ],
      ),
    );
  }
}
