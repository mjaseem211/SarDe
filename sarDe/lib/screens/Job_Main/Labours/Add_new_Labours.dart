// ignore_for_file: file_names

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
  final List<Widget> laboursData = [];

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
              itemCount: laboursData.length,
              itemBuilder: (BuildContext context, int index) {
                return laboursData[index];
              }),
        ),
        dialogue_box(dataCallback: (data) {
          Widget item = data1( data[0], data[1], data[2],data[3]);
          laboursData.add(item);
          setState(() {});
        },),
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
        )
      ]),
    );
  }
}
