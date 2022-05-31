import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'Board_Fixing/Board_Fixing.dart';
import 'Road_Marking/Road_marking.dart';
import 'Stud_Fixing/Stud_Fixing.dart';


// ignore: non_constant_identifier_names
Widget Title1() {
  return Padding(
    padding: EdgeInsets.only(left: 33.w, top: 99.h),
    child: Row(children: [
      Text("Work Progress",
          style: TextStyle(
              color: const Color(0xFF2B3070),
              fontSize: 35.sp,
              fontWeight: FontWeight.w400)),
    ]),
  );
}

// ignore: non_constant_identifier_names
Widget Sub_Title() {
  return Padding(
    padding: EdgeInsets.only(
      left: 33.w,
    ),
    child: Row(children: [
      Text("Job 303",
          style: TextStyle(
              color: const Color(0xFF2B3070).withOpacity(0.7),
              fontSize: 22.sp,
              fontWeight: FontWeight.w400)),
    ]),
  );
}

// ignore: camel_case_types
class text_button1 extends StatelessWidget {
  const text_button1({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 34.w, right: 46.w),
      child: GestureDetector(
        onTap: () {
          Navigator.of(context).pushReplacement(
              MaterialPageRoute(builder: (context) => const Road_Marking_work_progress()));
        },
        child: Row(
          children: [
            Expanded(
              child: Text(
                "18-09-22",
                style: TextStyle(
                    fontWeight: FontWeight.w400,
                    fontSize: 16.sp,
                    color: const Color(0xFFBC401E)),
              ),
            ),
            Text(
              "Total : 534  sqm",
              style: TextStyle(
                  fontWeight: FontWeight.w400,
                  fontSize: 16.sp,
                  color: const Color(0xFF2B3070)),
            ),
          ],
        ),
      ),
    );
  }
}

// ignore: camel_case_types
class text_button2 extends StatelessWidget {
  const text_button2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 34.w, right: 46.w),
      child: GestureDetector(
        onTap: () {
          Navigator.of(context).pushReplacement(
              MaterialPageRoute(builder: (context) => const Stud_Fixing_workprogress()));
        },
        child: Row(
          children: [
            Expanded(
              child: Text(
                "18-09-22",
                style: TextStyle(
                    fontWeight: FontWeight.w400,
                    fontSize: 16.sp,
                    color: const Color(0xFFBC401E)),
              ),
            ),
            Text(
              "Total : 184 nos",
              style: TextStyle(
                  fontWeight: FontWeight.w400,
                  fontSize: 16.sp,
                  color: const Color(0xFF2B3070)),
            ),
          ],
        ),
      ),
    );
  }
}

// ignore: camel_case_types
class text_button3 extends StatelessWidget {
  const text_button3({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 34.w, right: 46.w),
      child: GestureDetector(
        onTap: () {
          Navigator.of(context).pushReplacement(
              MaterialPageRoute(builder: (context) => const Board_Fixing_work_progress()));
        },
        child: Row(
          children: [
            Expanded(
              child: Text(
                "18-09-22",
                style: TextStyle(
                    fontWeight: FontWeight.w400,
                    fontSize: 16.sp,
                    color: const Color(0xFFBC401E)),
              ),
            ),
            Text(
              "Total : 43  nos",
              style: TextStyle(
                  fontWeight: FontWeight.w400,
                  fontSize: 16.sp,
                  color: const Color(0xFF2B3070)),
            ),
          ],
        ),
      ),
    );
  }
}
