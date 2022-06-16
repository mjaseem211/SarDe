// ignore_for_file: camel_case_types, file_names

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:sarde/screens/Job_Main/JobMain.dart';
import 'package:sarde/screens/Job_Main/Tools/Add_new_Tools_widgets.dart';
import 'package:sarde/screens/Job_Main/Tools/dialogue_box.dart';
import 'package:sarde/widgets/Bottom_back_button.dart';

class add_new_tools extends StatefulWidget {
  const add_new_tools({Key? key}) : super(key: key);

  @override
  State<add_new_tools> createState() => _add_new_toolsState();
}

class _add_new_toolsState extends State<add_new_tools> {
  final List<Widget> toolsData = [];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: Colors.white,
      body: Column(children: [
        title(),
        SizedBox(
          height: 26.h,
        ),
        heading_1(),
        SizedBox(
          height: 2.h,
        ),
        line_1(),
        Expanded(
          child: ListView.builder(
              itemCount: toolsData.length,
              itemBuilder: (BuildContext context, int index) {
                return toolsData[index];
              }),
        ),
         dialogue_box(
          dataCallback: (data) {
            Widget item = data2( data[0], data[1], data[2]);
            toolsData.add(item);
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
          height: 72.h,
        ),
      ]),
    );
  }
}
