import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:sarde/screens/Job_Main/Inventory/Road_Marking/Road_Marking_inventory.dart';
import 'package:sarde/screens/Job_Main/Inventory/Inventory_widgets.dart';
import 'package:sarde/screens/job_main/JobMain.dart';
import 'package:sarde/widgets/Bottom_back_button.dart';
import 'package:sarde/widgets/text_button.dart';

import 'Board_Fixing/Board_Fixing_Inventory.dart';
import 'Stud_Fixing/Stud_Fixing_Inventory.dart';

class Inventory extends StatelessWidget {
  const Inventory({Key? key}) : super(key: key);

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
              text_button(
                onTap: () {
                  Navigator.of(context).pushReplacement(MaterialPageRoute(
                      builder: (context) => const Road_Marking_inventory()));
                },
                left: 46.w,
                right: 207.w,
                text: "Road Marking",
              ),
              text_button(
                onTap: () {
                  Navigator.of(context).pushReplacement(MaterialPageRoute(
                      builder: (context) => const Road_Marking_inventory()));
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
                      builder: (context) => const Road_Marking_inventory()));
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
                      builder: (context) => const Stud_Fixing_inventory()));
                },
                text: "Stud Fixing",
                left: 47.w,
              ),
              text_button(
                onTap: () {
                  Navigator.of(context).pushReplacement(MaterialPageRoute(
                      builder: (context) => const Stud_Fixing_inventory()));
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
                      builder: (context) => const Stud_Fixing_inventory()));
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
                      builder: (context) => const Board_Fixing_inventory()));
                },
                text: "Board Fixing",
                left: 46.w,
                right: 220.w,
              ),
              text_button(
                onTap: () {
                  Navigator.of(context).pushReplacement(MaterialPageRoute(
                      builder: (context) => const Board_Fixing_inventory()));
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
                      builder: (context) => const Board_Fixing_inventory()));
                },
                text: "18-09-22",
                left: 257.w,
                right: 67.w,
                color: const Color(0xFFBC401E),
                font_size: 16.sp,
              ),
            ]),
          ),
          Bottom_back_button(
            onTap: () {
              Navigator.of(context).pushReplacement(
                  MaterialPageRoute(builder: (context) => const JobMain()));
            },
          ),
          SizedBox(
            height: 68.h,
          ),
        ]));
  }
}
