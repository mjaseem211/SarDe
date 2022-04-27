import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:sarde/screens/Job_Main/Inventory/Add_new_inventory/Add_new_inventory.dart';
import 'package:sarde/screens/Job_Main/Inventory/Inventory_widgets.dart';
import 'package:sarde/screens/job_main/JobMain.dart';
import 'package:sarde/widgets/Bottom_back_button.dart';
import 'package:sarde/widgets/text_button.dart';

class Inventory extends StatelessWidget {
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
            child: ListView(children: [
              SizedBox(
                height: 52.h,
              ),
              text_button(
                onTap: () {
                  Navigator.of(context).pushReplacement(MaterialPageRoute(
                      builder: (context) => add_new_inventory()));
                },
                left: 46.w,
                right: 207.w,
                text: "Road Marking",
              ),
              text_button(
                onTap: () {
                  Navigator.of(context).pushReplacement(MaterialPageRoute(
                      builder: (context) => add_new_inventory()));
                },
                text: "Road Marking from kuttichira to maradu",
                font_size: 14.sp,
                color: const Color(0xFF000000).withOpacity(0.5),
                left: 47.w,
                right: 46.w,
              ),
              SizedBox(height: 3.h),
              text_button(
                onTap: () {
                  Navigator.of(context).pushReplacement(MaterialPageRoute(
                      builder: (context) => add_new_inventory()));
                },
                text: "18-09-22",
                right: 67.w,
                left: 257.w,
                color: const Color(0xFFBC401E),
                font_size: 16.sp,
              ),
              SizedBox(
                height: 20.h,
              ),
              text_button(
                onTap: () {
                  Navigator.of(context).pushReplacement(MaterialPageRoute(
                      builder: (context) => add_new_inventory()));
                },
                text: "Stud Fixing",
                left: 47.w,
              ),
              text_button(
                onTap: () {
                  Navigator.of(context).pushReplacement(MaterialPageRoute(
                      builder: (context) => add_new_inventory()));
                },
                text: "Stud fixing on the sides from kuttichira to\nmaradu",
                font_size: 14.sp,
                color: const Color(0xFF000000).withOpacity(0.5),
                left: 47.w,
                right: 46.w,
              ),
              SizedBox(
                height: 3.h,
              ),
              text_button(
                onTap: () {
                  Navigator.of(context).pushReplacement(MaterialPageRoute(
                      builder: (context) => add_new_inventory()));
                },
                text: "18-09-22",
                left: 249.w,
                right: 67.w,
                color: const Color(0xFFBC401E),
                font_size: 16.sp,
              ),
              SizedBox(
                height: 34.h,
              ),
              text_button(
                onTap: () {
                  Navigator.of(context).pushReplacement(MaterialPageRoute(
                      builder: (context) => add_new_inventory()));
                },
                text: "Board Fixing",
                left: 46.w,
                right: 220.w,
              ),
              text_button(
                onTap: () {
                  Navigator.of(context).pushReplacement(MaterialPageRoute(
                      builder: (context) => add_new_inventory()));
                },
                text: "Board fixing on the sides from kuttichira to\nmaradu",
                font_size: 14.sp,
                color: const Color(0xFF000000).withOpacity(0.5),
                left: 47.w,
                right: 46.w,
              ),
              SizedBox(
                height: 3.h,
              ),
              text_button(
                onTap: () {
                  Navigator.of(context).pushReplacement(MaterialPageRoute(
                      builder: (context) => add_new_inventory()));
                },
                text: "18-09-22",
                left: 257.w,
                right: 67.w,
                color: const Color(0xFFBC401E),
                font_size: 16.sp,
              ),
              SizedBox(
                height: 228.h,
              ),
            ]),
          ),
          Bottom_back_button(
            onTap: () {
              Navigator.of(context).pushReplacement(
                  MaterialPageRoute(builder: (context) => JobMain()));
            },
          ),
          SizedBox(
            height: 68.h,
          ),
        ]));
  }
}
