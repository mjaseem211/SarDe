// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:sarde/screens/Job_Main/Labours/dialogue_box.dart';
import 'package:sarde/screens/job_main/JobMain.dart';
import '../../../../widgets/Bottom_back_button.dart';
import 'package:sarde/screens/Job_Main/Labours/Add_new_Labours_widgets.dart';

import '../../../api/getallLabours.dart';
import '../../../services/prefs.dart';

// ignore: camel_case_types
class add_new_labours extends StatefulWidget {
  const add_new_labours({Key? key}) : super(key: key);

  @override
  State<add_new_labours> createState() => _add_new_laboursState();
}

// ignore: camel_case_types
class _add_new_laboursState extends State<add_new_labours> {
  final laboursApi = GetAllLabours();

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
    var expenseData = await laboursApi.getLabours(
      accessToken: accessToken,
      jobId: jobId,
      pageOffset: pageOffset,
      pageCount: pageCount,
    );
    for (var element in expenseData!.result) {
      Widget labours =
          data1(element.name, element.trade, element.type, element.hours);
      laboursDataList.add(labours);
    }
    setState(() {});
  }

  final List<Widget> laboursDataList = [];

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
              itemCount: laboursDataList.length,
              itemBuilder: (BuildContext context, int index) {
                return laboursDataList[index];
              }),
        ),
        dialogue_box(
          dataCallback: (data) {
            Widget labours = data1(data[0], data[1], data[2], data[3]);
            laboursDataList.add(labours);
            setState(() {});
          },
        ),
        SizedBox(
          height: 365.61.h,
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
