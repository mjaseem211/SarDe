import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:sarde/screens/Job_Main/Work_Progress/add_new_work/dialogue_box.dart';
import 'package:sarde/screens/job_main/JobMain.dart';
import '../../../../widgets/Bottom_back_button.dart';
import 'package:sarde/screens/Job_Main/Work_Progress/add_new_work/add_new_work_widgets.dart';

// ignore: camel_case_types
class add_new_work extends StatefulWidget {
  const add_new_work({Key? key}) : super(key: key);

  @override
  State<add_new_work> createState() => _add_new_workState();
}

// ignore: camel_case_types
class _add_new_workState extends State<add_new_work> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: true,
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(children: [
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
            height: 11.h,
          ),
          Data(),
          SizedBox(
            height: 11.h,
          ),
          Data1(),
          SizedBox(
            height: 56.h,
          ),
          const dialogue_box(),
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
      ),
    );
  }
}
