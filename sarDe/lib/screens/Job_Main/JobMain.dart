import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:sarde/screens/Complete_checkup_form/complete_checkup_form.dart';
import 'package:sarde/screens/Start_Job_Form/Start_Job_Form.dart';
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
              Navigator.of(context).pushReplacement(MaterialPageRoute(
                  builder: (context) => const Start_Job_Form()));
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
          Expanded(
            child: ListView(shrinkWrap: true, children: const [
              job_main_nav(),
            ]),
          ),
          Close_Day_Button(
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => Complete_Check_Up()));
            },
          ),
        ],
      ),
    );
  }
}
