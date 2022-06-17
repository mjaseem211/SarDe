// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:sarde/screens/Job_Main/JobMain.dart';
import 'package:sarde/screens/Job_Main/Quality_Check/Add_new_Quality/Add_new_quality_check_widgets.dart';
import 'package:sarde/screens/Job_Main/Quality_Check/Add_new_Quality/dialogue_box.dart';
import 'package:sarde/widgets/Bottom_back_button.dart';

// ignore: camel_case_types
class add_new_quality_check extends StatelessWidget {
  const add_new_quality_check({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: Colors.white,
      body: Column(children: [
        title(),
        SizedBox(
          height: 3.h,
        ),
        line(),
        Expanded(child: ListView(shrinkWrap:true,children:[Photoview(),
       ]),),
        const dialogue_box(),
        SizedBox(
          height: 312.61.h,
        ),
        Bottom_back_button(
          onTap: () {
            Navigator.of(context).pushReplacement(
                MaterialPageRoute(builder: (context) => const JobMain()));
          },
        ),
        SizedBox(
          height: 72.h,
        )
      ]),
    );
  }
}
