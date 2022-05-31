// ignore_for_file: camel_case_types, non_constant_identifier_names

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:sarde/screens/Job_Main/Work_Progress/Board_Fixing/widgets/Board_dialogue_box.dart';
import 'package:sarde/screens/job_main/JobMain.dart';
import '../../../../widgets/Bottom_back_button.dart';
import 'package:sarde/screens/Job_Main/Work_Progress/Board_Fixing/widgets/Board_Fixing_widgets.dart';

class Board_Fixing_work_progress extends StatefulWidget {
  const Board_Fixing_work_progress({Key? key}) : super(key: key);

  @override
  State<Board_Fixing_work_progress> createState() =>
      _Board_Fixing_work_progressState();
}

class _Board_Fixing_work_progressState
    extends State<Board_Fixing_work_progress> {

  final List<Widget> BoardFixingworkprogressdata = [];
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
              itemCount: BoardFixingworkprogressdata.length,
              itemBuilder: (BuildContext context,int index){
                return BoardFixingworkprogressdata[index];
              }
          ),
        ),

         Board_Fixing_dialoguebox(dataCallback: (data){
          Widget boardFixingworkprogress = Data(data[0],data[1],data[2],data[3],data[4]);
          BoardFixingworkprogressdata.add(boardFixingworkprogress);
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
          height: 68.h,
        )
      ]),
    );
  }
}
