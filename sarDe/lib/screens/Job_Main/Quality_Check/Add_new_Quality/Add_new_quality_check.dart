// ignore_for_file: file_names, camel_case_types
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:sarde/screens/Job_Main/Quality_Check/Add_new_Quality/Add_new_quality_check_widgets.dart';
import 'package:sarde/screens/Job_Main/Quality_Check/Add_new_Quality/dialogue_box.dart';
import 'package:sarde/widgets/Bottom_back_button.dart';
import '../../../../api/getAllqualityCheck.dart';
import '../../../../services/prefs.dart';

class add_new_quality_check extends StatefulWidget {
  const add_new_quality_check({Key? key}) : super(key: key);

  @override
  State<add_new_quality_check> createState() => _add_new_quality_checkState();
}

class _add_new_quality_checkState extends State<add_new_quality_check> {


  final qualityCheckApi = GetAllQualityCheck();

  // get subJobId => null;

  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_) {
      _getAllExpenses(0, 25);
    });
  }

  _getAllExpenses(pageOffset, pageCount) async {
    final prefs = await SardePreferences.getInstance();
    var jobId = await prefs.jobId;
    var accessToken = prefs.token;
    var subJobId = await prefs.subJobId;
    var qualityCheckData = await qualityCheckApi.getQualityCheck(
      accessToken: accessToken,
      jobId: jobId,
      subJobId: subJobId,
    );
    for (var element in qualityCheckData!.result) {
      Widget qualityCheck =
      Photoview(element.fileFullUrl, element.id, element.thickness,element.edgeAlignment,element.comment);
      qualityCheckDataList.add(qualityCheck);
    }
    setState(() {});
  }

  final List<Widget> qualityCheckDataList = [];



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: Colors.white,
      body: Column(children: [
        title(),
        SizedBox(
          height: 3.h,
        ),
        line(),
        Expanded(
          child: ListView.builder(
              itemCount: qualityCheckDataList.length,
              itemBuilder: (BuildContext context, int index) {
                return qualityCheckDataList[index];
              }),
        ),
        const dialogue_box(),
        SizedBox(
          height: 312.61.h,
        ),
        Bottom_back_button(
          onTap: () {
            Navigator.of(context).pop();
          },
        ),
        SizedBox(
          height: 72.h,
        )
      ]),
    );
  }
}
