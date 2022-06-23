// ignore_for_file: file_names, camel_case_types

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:sarde/providers/job_id.dart';
import 'package:sarde/screens/Start_Job_Form/widgets/Start_Job_widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:sarde/widgets/Top_Back_button.dart';

import '../../api/getAllsubJObs.dart';
import '../../models/job_card/job_card.dart';
import '../../services/prefs.dart';

class Start_Job_Form extends StatefulWidget {
  const Start_Job_Form({
    Key? key,
    required this.jobCardModel,
  }) : super(key: key);

  final Result jobCardModel;

  @override
  State<Start_Job_Form> createState() => _Start_Job_FormState();
}

class _Start_Job_FormState extends State<Start_Job_Form> {
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
      Widget subJobsCard = subJobs(
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
    JobIDProvider job = Provider.of<JobIDProvider>(
      context,
    );
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Column(children: [
        Top_Back_Button(
          onTap: () {
            Navigator.of(context).pop(context);
          },
        ),
        SizedBox(
          height: 66.h,
        ),
        title1(context),
        SizedBox(
          height: 3.h,
        ),
        subtitle(context),
        SizedBox(
          height: 5.h,
        ),
        date(context),
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
        ChangeNotifierProvider(
          create: (context) => job,
          child: const Start_Button(),
        ),
      ]),
    );
  }
}
