// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:sarde/screens/Job_Main/Inventory/Inventory_widgets.dart';
import 'package:sarde/widgets/Bottom_back_button.dart';
import '../../../api/getAllsubJObs.dart';
import '../../../services/prefs.dart';

class Inventory extends StatefulWidget {
  const Inventory({Key? key}) : super(key: key);

  @override
  State<Inventory> createState() => _InventoryState();
}

class _InventoryState extends State<Inventory> {
  final subJobsApi = GetAllSubJobCards();

  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_) {
      _getSubJobCards();
    });
  }

  _getSubJobCards() async {
    // loading circularIndicator
    showDialog(
      context: context,
      builder: (context) {
        return const Center(child: CircularProgressIndicator());
      },
    );
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

    // pop the loading circle
    Navigator.of (context).pop();
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
              reverse: false,
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
