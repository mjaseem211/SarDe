import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../services/prefs.dart';
import 'Add_new_work_progress.dart';

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

Widget subJobsWorkProgress(String taskName, String taskDetails, String total) {
  return Builder(builder: (context) {
    return GestureDetector(
      child: Stack(alignment: Alignment.center, children: [
        Padding(
          padding: EdgeInsets.only(
            left: 35.w,
          ),
          child: Row(children: [
            Text(
              taskName,
              style: TextStyle(
                  fontWeight: FontWeight.w400,
                  fontSize: 20.sp,
                  color: const Color(0xFFDD7164)),
            ),
          ]),
        ),
        Padding(
          padding: EdgeInsets.only(
            top: 50.h,
            left: 35.w,
          ),
          child: Row(
            children: [
              Text(
                taskDetails,
                style: TextStyle(
                    fontWeight: FontWeight.w400,
                    fontSize: 13.sp,
                    color: const Color(0xFF000000).withOpacity(0.5)),
              ),
            ],
          ),
        ),
        Builder(builder: (context) {
          return Padding(
            padding: EdgeInsets.only(left: 36.w, right: 44.w, top: 100.h),
            child: Row(
              children: [
                Expanded(
                  child: Text(
                    "Date",
                    style: TextStyle(
                        fontWeight: FontWeight.w400,
                        fontSize: 16.sp,
                        color: const Color(0xFFBC401E)),
                  ),
                ),
                Text(
                  total,
                  style: TextStyle(
                      fontWeight: FontWeight.w400,
                      fontSize: 16.sp,
                      color: const Color(0xFF2B3070)),
                ),
              ],
            ),
          );
        }),
        Padding(
          padding: EdgeInsets.only(
            top: 150.h,
            left: 37.w,
          ),
          child: Row(children: [
            Container(
              height: 1.h,
              width: 304.w,
              color: const Color(0xFF000000).withOpacity(0.5),
              alignment: Alignment.center,
            ),
          ]),
        ),
      ]),
      onTap: () async {
        final prefs = await SardePreferences.getInstance();
        var accessToken = prefs.token;
        var jobId = await prefs.jobId;
        Navigator.of(context).push(MaterialPageRoute(
            builder: (context) => const addNewWorkProgress()));
      },
    );
  });
}
