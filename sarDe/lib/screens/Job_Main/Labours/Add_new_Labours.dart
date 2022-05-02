import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:sarde/screens/Job_Main/Labours/dialogue_box.dart';
import 'package:sarde/screens/job_main/JobMain.dart';
import '../../../../widgets/Bottom_back_button.dart';
import 'package:sarde/screens/Job_Main/Labours/Add_new_Labours_widgets.dart';

// ignore: camel_case_types
class add_new_labours extends StatefulWidget {
  const add_new_labours({Key? key}) : super(key: key);

  @override
  State<add_new_labours> createState() => _add_new_laboursState();
}

// ignore: camel_case_types
class _add_new_laboursState extends State<add_new_labours> {
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

          Data(),
          SizedBox(
            height: 15.h,
          ),
          Data1(),
          SizedBox(
            height: 47.h,
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
          SizedBox(
            height: 72.h,
          ),
        ]),
      ),
    );
  }
}
