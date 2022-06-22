import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:provider/provider.dart';
import 'package:sarde/screens/Job_Main/Expense/Add_new_expense.dart';
import 'package:sarde/screens/Job_Main/Inventory/Inventory.dart';
import 'package:sarde/screens/Job_Main/Labours/Add_new_Labours.dart';
import 'package:sarde/screens/Job_Main/Quality_Check/Quality_Check.dart';
import 'package:sarde/screens/Job_Main/Tools/Add_new_Tools.dart';
import 'package:sarde/screens/Job_Main/Work_Progress/work_progress.dart';
import '../../../providers/job_id.dart';
import 'app_grid_buttons.dart';

Widget title(BuildContext context) {
  JobIDProvider job = Provider.of<JobIDProvider>(
    context,
  );
  return Padding(
    padding: EdgeInsets.only(left: 33.w, right: 44.w),
    child: Row(
      children: [
        Expanded(
          child: Text(
            job.jobID,
            style: TextStyle(
                fontWeight: FontWeight.w400,
                fontSize: 35.sp,
                color: const Color(0xFF2B3070)),
          ),
        ),
        Text(
          "",
          style: TextStyle(
              fontWeight: FontWeight.w400,
              fontSize: 22.sp,
              color: const Color(0xFFBC401E)),
        ),
      ],
    ),
  );
}

Widget subTitle(BuildContext context) {
  JobIDProvider job = Provider.of<JobIDProvider>(
    context,
  );
  return Padding(
    padding: EdgeInsets.only(
      left: 33.w,
    ),
    child: Row(
      children: [
        Text(
          job.jobTitle,
          style: TextStyle(
            color: const Color(0xFF2B3070).withOpacity(0.7),
            fontSize: 22.sp,
            fontWeight: FontWeight.w400,
          ),
        )
      ],
    ),
  );
}

// ignore: camel_case_types
class job_main_nav extends StatelessWidget {
  const job_main_nav({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 33.w, right: 40.w),
      child: Row(
        children: [
          Column(
            children: [
              GridButtons(
                onTap: () {
                  Navigator.of(context).push(MaterialPageRoute(
                      builder: (context) => const work_progress()));
                },
                name: "Work\nProgress",
              ),
              SizedBox(
                height: 15.h,
              ),
              GridButtons(
                height: 147.h,
                onTap: () {
                  Navigator.of(context).pushReplacement(MaterialPageRoute(
                      builder: (context) => const add_new_labours()));
                },
                assetimage: "assets/images/add_button.png",
                name: "Labours",
                top: 98.h,
              ),
              SizedBox(
                height: 15.h,
              ),
              GridButtons(
                height: 98.h,
                onTap: () {
                  Navigator.of(context).pushReplacement(MaterialPageRoute(
                      builder: (context) => const add_new_tools()));
                },
                assetimage: "assets/images/add_button.png",
                name: "Tools",
                top: 52.h,
              )
            ],
          ),
          SizedBox(
            width: 13.w,
          ),
          Column(
            children: [
              GridButtons(
                assetimage: "assets/images/add_button.png",
                height: 144.h,
                width: 143.w,
                name: "Expense",
                top: 98.h,
                onTap: () {
                  Navigator.of(context).pushReplacement(MaterialPageRoute(
                      builder: (context) => const add_new_expense()));
                },
              ),
              SizedBox(
                height: 15.h,
              ),
              GridButtons(
                height: 154.h,
                width: 143.w,
                name: "Quality\nCheck",
                top: 83.h,
                onTap: () {
                  Navigator.of(context).pushReplacement(MaterialPageRoute(
                      builder: (context) => const Quality_Check()));
                },
              ),
              SizedBox(
                height: 15.h,
              ),
              GridButtons(
                onTap: () {
                  Navigator.of(context).pushReplacement(MaterialPageRoute(
                      builder: (context) => const Inventory()));
                },
                height: 162.h,
                width: 139.w,
                name: "Inventory",
                top: 117.h,
              )
            ],
          ),
        ],
      ),
    );
  }
}
