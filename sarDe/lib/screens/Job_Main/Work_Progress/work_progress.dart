// ignore_for_file: camel_case_types

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:sarde/screens/Job_Main/Work_Progress/work_progress_widgets.dart';
import 'package:sarde/widgets/Bottom_back_button.dart';
import '../../../api/getAllsubJObs.dart';
import '../../../services/prefs.dart';

class work_progress extends StatefulWidget {
  const work_progress({Key? key}) : super(key: key);

  @override
  State<work_progress> createState() => _work_progressState();
}

class _work_progressState extends State<work_progress> {
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
        resizeToAvoidBottomInset: false,
        backgroundColor: Colors.white,
        body: Column(children: [
          Title1(),
          SizedBox(
            height: 3.h,
          ),
          Sub_Title(),
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
            height: 72.h,
          ),
        ]));
  }
}
