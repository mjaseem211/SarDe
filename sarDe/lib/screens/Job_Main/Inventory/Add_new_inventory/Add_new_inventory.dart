import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:sarde/screens/Job_Main/JobMain.dart';
import 'package:sarde/screens/Job_Main/Inventory/Add_new_inventory/Add_new_inventory_widgets.dart';
import 'package:sarde/widgets/Bottom_back_button.dart';

class add_new_inventory extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(children: [
        title(),
        SizedBox(
          height: 26.h,
        ),
        heading(),
        SizedBox(
          height: 2.h,
        ),
        line(),
        Expanded(
          child: ListView(shrinkWrap: true, children: [
            data(),
          ]),
        ),
        Row(children: [
          Padding(
            padding: EdgeInsets.only(left: 90.w, top: 33.h),
            child: Column(
              children: [
                Image.asset(
                  'assets/images/plus_button.png',
                  height: 20.h,
                  width: 20.w,
                )
              ],
            ),
          ),
          SizedBox(
            width: 106.w,
          ),
          Padding(
            padding: EdgeInsets.only(top: 46.7.h, right: 116.w),
            child: Column(
              children: [
                Image.asset(
                  'assets/images/Subtract.png',
                  height: 4.h,
                  width: 26.w,
                )
              ],
            ),
          ),
        ]),
        SizedBox(
          height: 439.3.h,
        ),
        Bottom_back_button(
          onTap: () {
            Navigator.of(context).pushReplacement(
                MaterialPageRoute(builder: (context) => JobMain()));
          },
        ),
        SizedBox(
          height: 72.h,
        ),
      ]),
    );
  }
}
