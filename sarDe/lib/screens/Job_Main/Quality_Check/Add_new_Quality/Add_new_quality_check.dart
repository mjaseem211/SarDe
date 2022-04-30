import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:photo_view/photo_view.dart';
import 'package:sarde/screens/Job_Main/JobMain.dart';
import 'package:sarde/screens/Job_Main/Quality_Check/Add_new_Quality/Add_new_quality_check_widgets.dart';
import 'package:sarde/screens/Job_Main/Quality_Check/Add_new_Quality/dialogue_box.dart';
import 'package:sarde/widgets/Bottom_back_button.dart';

class add_new_quality_check extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(children: [
          title(),
          SizedBox(
            height: 3.h,
          ),
          line(),
          Photoview(),
          SizedBox(height: 74.h),
          dialogue_box(),
          SizedBox(
            height: 312.61.h,
          ),
          Bottom_back_button(
            onTap: () {
              Navigator.of(context).pushReplacement(
                  MaterialPageRoute(builder: (context) => JobMain()));
            },
          ),
          SizedBox(
            height: 72.h,
          )
        ]),
      ),
    );
  }
}
