import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:sarde/screens/Job_Main/JobMain.dart';
import 'package:sarde/screens/Job_Main/Tools/Add_new_Tools_widgets.dart';
import 'package:sarde/screens/Job_Main/Tools/dialogue_box.dart';
import 'package:sarde/widgets/Bottom_back_button.dart';

// ignore: camel_case_types
class add_new_tools extends StatelessWidget {
  const add_new_tools({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(children: [
        title(),
        SizedBox(
          height: 26.h,
        ),
        heading(),
        SizedBox(
          height: 2.h,
        ),
        line(),
        Expanded(
          child: ListView(children: [
            data(),
            SizedBox(
              height: 15.h,
            ),
            data1(),
          ]),
        ),
        const dialogue_box(),
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
          height: 72.h,
        ),
      ]),
    );
  }
}
