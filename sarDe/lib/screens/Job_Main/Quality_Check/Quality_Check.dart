// ignore_for_file: file_names, camel_case_types

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:sarde/screens/Job_Main/Quality_Check/Add_new_Quality/Add_new_quality_check.dart';
import 'package:sarde/screens/Job_Main/Quality_Check/Quality_Check_widgets.dart';
import 'package:sarde/screens/job_main/JobMain.dart';
import 'package:sarde/widgets/Bottom_back_button.dart';
import 'package:sarde/widgets/text_button.dart';

import '../../../api/getAllsubJObs.dart';
import '../../../services/prefs.dart';

class Quality_Check extends StatefulWidget {
  const Quality_Check({Key? key}) : super(key: key);

  @override
  State<Quality_Check> createState() => _Quality_CheckState();
}

class _Quality_CheckState extends State<Quality_Check> {
  final subJobsApi = GetAllSubJobCards();

  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_) {
      _getSubJobCards();
    });
  }

  _getSubJobCards() async {
    final prefs = await SardePreferences.getInstance();
    var accessToken = prefs.token;
    var jobId = await prefs.jobId;

    var subJobCardData =
        await subJobsApi.getSubJobs(accessToken: accessToken, jobId: jobId);
    for (var element in subJobCardData!.result.subJobs!) {
      Widget subJobsCard = subJobsWorkProgress(
        element.taskName,
        element.taskDetails,
        element.total,
      );
      subJobDataList.add(subJobsCard);
    }
    setState(() {});
  }

  final List<Widget> subJobDataList = [];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        body: Column(children: [
          title(),
          SizedBox(
            height: 3.h,
          ),
          subtitle(),
          Expanded(
            flex: 12,
            child: ListView.builder(
              reverse: true,
              shrinkWrap: false,
              itemCount: subJobDataList.length,
              itemBuilder: (BuildContext context, int index) {
                return subJobDataList[index];
              },
            ),
          ),
          Bottom_back_button(
            onTap: () {
              Navigator.of(context).pop();
            },
          ),
          SizedBox(
            height: 68.h,
          ),
        ]));
  }
}
