// ignore_for_file: camel_case_types, non_constant_identifier_names, file_names

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:sarde/screens/Job_Main/Work_Progress/Work_progress_dialogue_box.dart';
import '../../../api/getAllWorkprogress.dart';
import '../../../services/prefs.dart';
import '../../../widgets/Bottom_back_button.dart';
import 'package:sarde/screens/Job_Main/Work_Progress/Add_new_work_progress_widgets.dart';

class addNewWorkProgress extends StatefulWidget {
  const addNewWorkProgress({Key? key}) : super(key: key);

  @override
  State<addNewWorkProgress> createState() => _addNewWorkProgressState();
}

class _addNewWorkProgressState extends State<addNewWorkProgress> {
  final workProgressApi = GetAllWorkProgress();

  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_) {
      _getAllWorkProgress(0, 25);
    });
  }

  _getAllWorkProgress(pageOffset, pageCount) async {
    // loading circularIndicator
    showDialog(
      context: context,
      builder: (context) {
        return const Center(child: CircularProgressIndicator());
      },
    );
    final prefs = await SardePreferences.getInstance();
    var jobId = await prefs.jobId;
    var accessToken = prefs.token;
    var subJobId = await prefs.subJobId;
    var workProgressData = await workProgressApi.getWorkProgress(
      accessToken: accessToken,
      jobId: jobId,
      subJobId: subJobId,
      pageOffset: pageOffset,
      pageCount: pageCount,
    );
    for (var element in workProgressData!.result) {
      Widget workProgress = Data(element.itemDescription, element.no,
          element.length, element.width, element.meterSqr);
      WorkprogressDataList.add(workProgress);
    }
    setState(() {}); // pop the loading circle
    Navigator.of(context).pop();
  }

  final List<Widget> WorkprogressDataList = [];

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
              itemCount: WorkprogressDataList.length,
              itemBuilder: (BuildContext context, int index) {
                return WorkprogressDataList[index];
              }),
        ),
        Road_marking_dialoguebox(
          dataCallback: (data) {
            Widget workprogress =
                Data(data[0], data[1], data[2], data[3], data[4]);
            WorkprogressDataList.add(workprogress);
            setState(() {});
          },
        ),
        Bottom_back_button(
          onTap: () {
            Navigator.of(context).pop();
          },
        ),
        SizedBox(
          height: 68.h,
        )
      ]),
    );
  }
}
