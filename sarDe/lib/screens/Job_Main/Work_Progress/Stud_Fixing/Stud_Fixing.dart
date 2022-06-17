// ignore_for_file: camel_case_types, non_constant_identifier_names, file_names

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:sarde/screens/Job_Main/Work_Progress/Stud_Fixing/widgets/Stud_dialogue_box.dart';
import 'package:sarde/screens/job_main/JobMain.dart';
import '../../../../widgets/Bottom_back_button.dart';
import 'package:sarde/screens/Job_Main/Work_Progress/Stud_Fixing/widgets/Stud_Fixing_widgets.dart';

class Stud_Fixing_workprogress extends StatefulWidget {
  const Stud_Fixing_workprogress({Key? key}) : super(key: key);

  @override
  State<Stud_Fixing_workprogress> createState() => _Stud_Fixing_workprogressState();
}

class _Stud_Fixing_workprogressState extends State<Stud_Fixing_workprogress> {


  final List<Widget> StudFixingWorkprogressData = [];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
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
          child: ListView.builder(
              itemCount: StudFixingWorkprogressData.length,
              itemBuilder: (BuildContext context, int index) {
                return StudFixingWorkprogressData[index];
              }),
        ),
        Stud_Fixing_dialoguebox(
          dataCallback: (data) {
            Widget studfixingworkprogress =
            Data(data[0], data[1], data[2], data[3], data[4]);
            StudFixingWorkprogressData.add(studfixingworkprogress);
            setState(() {});
          },
        ),
        SizedBox(
          height: 365.61.h,
        ),
        Bottom_back_button(
          onTap: () {
            Navigator.of(context).pushReplacement(
                MaterialPageRoute(builder: (context) => const JobMain()));
          },
        ),
        SizedBox(
          height: 68.h,
        )
      ]),
    );
  }
}
