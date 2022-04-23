import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:sarde/screens/Job_Main/Quality_Check/Add_new_Quality/Add_new_quality_check_widgets.dart';

class add_new_quality_check extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        body: ListView(shrinkWrap: true, children: [
          Column(children: [
            title(),
            SizedBox(
              height: 3.h,
            ),
            line(),
            SizedBox(
              height: 41.h,
            ),
            details(),
          ]),
        ]));
  }
}
