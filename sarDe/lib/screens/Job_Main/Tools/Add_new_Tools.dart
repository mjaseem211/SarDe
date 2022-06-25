// ignore_for_file: camel_case_types, file_names

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:sarde/screens/Job_Main/JobMain.dart';
import 'package:sarde/screens/Job_Main/Tools/Add_new_Tools_widgets.dart';
import 'package:sarde/screens/Job_Main/Tools/dialogue_box.dart';
import 'package:sarde/widgets/Bottom_back_button.dart';
import '../../../api/getAllTools.dart';
import '../../../services/prefs.dart';

class add_new_tools extends StatefulWidget {
  const add_new_tools({Key? key}) : super(key: key);

  @override
  State<add_new_tools> createState() => _add_new_toolsState();
}

class _add_new_toolsState extends State<add_new_tools> {
  final toolsApi = GetAllTools();
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
    var toolsData = await toolsApi.getTools(
      accessToken: accessToken,
      jobId: jobId,
      pageOffset: pageOffset,
      pageCount: pageCount,
    );
    for (var element in toolsData!.result) {
      Widget tools =
      data2(element.item, element.quantity, element.condition);
      toolsDataList.add(tools);
    }
    setState(() {});
  }

  final List<Widget> toolsDataList = [];

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
              itemCount: toolsDataList.length,
              itemBuilder: (BuildContext context, int index) {
                return toolsDataList[index];
              }),
        ),
         dialogue_box(
          dataCallback: (data) {
            Widget item = data2( data[0], data[1], data[2]);
            toolsDataList.add(item);
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
        ),
      ]),
    );
  }
}
