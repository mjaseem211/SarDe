// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:provider/provider.dart';
import 'package:sarde/providers/job_id.dart';
import 'package:sarde/screens/Job_Main/JobMain.dart';

import '../../../services/prefs.dart';

// ignore: camel_case_types
class Start_Button extends StatelessWidget {
  const Start_Button({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final job = Provider.of<JobIDProvider>(
      context,
    );
    return GestureDetector(
      onTap: () async {
        final prefs = await SardePreferences.getInstance();
        prefs.jobsId = job.jobID;

        Navigator.of(context).push(
          MaterialPageRoute(
            builder: (context) => ChangeNotifierProvider(
              create: (context) => job,
              child: const JobMain(),
            ),
          ),
        );
      },
      child: Row(
        children: [
          Container(
            height: 98.h,
            width: 390.w,
            decoration: const BoxDecoration(
              color: Color(0xff2B3070),
              image: DecorationImage(
                alignment: Alignment(.75, 0),
                image: AssetImage(
                  'assets/images/forward_arrow.png',
                ),
              ),
            ),
            child: Padding(
              padding: EdgeInsets.only(left: 56.w, top: 28.h),
              child: Text(
                "Start Job",
                style: TextStyle(
                    fontWeight: FontWeight.w400,
                    fontSize: 25.sp,
                    color: const Color(0xFFFFFFFF)),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

Widget title1(BuildContext context) {
  JobIDProvider job = Provider.of<JobIDProvider>(
    context,
  );

  return Padding(
    padding: EdgeInsets.only(left: 33.w),
    child: Row(children: [
      Text(
        job.jobID,
        style: TextStyle(
            fontWeight: FontWeight.w400,
            fontSize: 35.sp,
            color: const Color(0xFF2B3070)),
      ),
    ]),
  );
}

Widget subtitle(BuildContext context) {
  JobIDProvider job = Provider.of<JobIDProvider>(
    context,
  );
  return Padding(
    padding: EdgeInsets.only(left: 33.w),
    child: Row(children: [
      Text(
        job.jobTitle,
        style: TextStyle(
            fontWeight: FontWeight.w400,
            fontSize: 22.sp,
            color: const Color(0xFF2B3070).withOpacity(0.7)),
      ),
    ]),
  );
}

Widget date(BuildContext context) {
  JobIDProvider job = Provider.of<JobIDProvider>(
    context,
  );
  return Padding(
    padding: EdgeInsets.only(left: 33.w, right: 149.w),
    child: Row(
      children: [
        Expanded(
          child: Text(
            "${job.jobResult.startDateTime}",
            style: TextStyle(
                fontWeight: FontWeight.w400,
                fontSize: 22.sp,
                color: const Color(0xFF52972A)),
          ),
        ),
        Text(
          "${job.jobResult.finishDateTime}",
          style: TextStyle(
              fontWeight: FontWeight.w400,
              fontSize: 22.sp,
              color: const Color(0xFFB8493C)),
        ),
      ],
    ),
  );
}

Widget heading() {
  return Padding(
    padding: EdgeInsets.only(left: 35.w, ),
    child: Row(children: [
      Text(
        "Road Marking",
        style: TextStyle(
            fontWeight: FontWeight.w400,
            fontSize: 20.sp,
            color: const Color(0xFFDD7164)),
      ),
    ]),
  );
}

Widget subheading(BuildContext context) {
  JobIDProvider job = Provider.of<JobIDProvider>(
    context,
  );
  return Padding(
    padding: EdgeInsets.only(left: 35.w, ),
    child: Row(
      children: [
        Text(
          "Road Marking from ",
          style: TextStyle(
              fontWeight: FontWeight.w400,
              fontSize: 13.sp,
              color: const Color(0xFF000000).withOpacity(0.5)),
        ),
        Text(
          job.jobTitle,
          style: TextStyle(
              fontWeight: FontWeight.w400,
              fontSize: 13.sp,
              color: const Color(0xFF000000).withOpacity(0.5)),
        ),
      ],
    ),
  );
}

Widget data(BuildContext context) {
  JobIDProvider job = Provider.of<JobIDProvider>(
    context,
  );
  return Padding(
    padding: EdgeInsets.only(left: 36.w, right: 44.w),
    child: Row(
      children: [
        Expanded(
          child: Text(
            "${job.jobResult.finishDateTime}",
            style: TextStyle(
                fontWeight: FontWeight.w400,
                fontSize: 16.sp,
                color: const Color(0xFFBC401E)),
          ),
        ),
        Text(
          job.jobResult.roadMarkingSqm,
          style: TextStyle(
              fontWeight: FontWeight.w400,
              fontSize: 16.sp,
              color: const Color(0xFF2B3070)),
        ),
      ],
    ),
  );
}

Widget line() {
  return Padding(
    padding: EdgeInsets.only(left: 37.w, ),
    child: Row(children: [
      Container(
        height: 1.h,
        width: 304.w,
        color: const Color(0xFF000000).withOpacity(0.5),
        alignment: Alignment.center,
      ),
    ]),
  );
}

Widget heading2() {
  return Padding(
    padding: EdgeInsets.only(left: 35.w,),
    child: Row(children: [
      Text(
        "Stud Fixing",
        style: TextStyle(
            fontWeight: FontWeight.w400,
            fontSize: 20.sp,
            color: const Color(0xFFDD7164)),
      ),
    ]),
  );
}
Widget subheading1(BuildContext context) {
  JobIDProvider job = Provider.of<JobIDProvider>(
    context,
  );
  return Padding(
    padding: EdgeInsets.only(left: 35.w, ),
    child: Row(
      children: [
        Text(
          "Stud fixing on the sides from ",
          style: TextStyle(
              fontWeight: FontWeight.w400,
              fontSize: 13.sp,
              color: const Color(0xFF000000).withOpacity(0.5)),
        ),
        Text(
          job.jobTitle,
          style: TextStyle(
              fontWeight: FontWeight.w400,
              fontSize: 13.sp,
              color: const Color(0xFF000000).withOpacity(0.5)),
        ),
      ],
    ),
  );
}

Widget data2(BuildContext context) {
  JobIDProvider job = Provider.of<JobIDProvider>(
    context,
  );
  return Padding(
    padding: EdgeInsets.only(left: 36.w, right: 44.w),
    child: Row(
      children: [
        Expanded(
          child: Text(
            "${job.jobResult.finishDateTime}",
            style: TextStyle(
                fontWeight: FontWeight.w400,
                fontSize: 16.sp,
                color: const Color(0xFFBC401E)),
          ),
        ),
        Text(
          job.jobResult.studFixingNos,
          style: TextStyle(
              fontWeight: FontWeight.w400,
              fontSize: 16.sp,
              color: const Color(0xFF2B3070)),
        ),
      ],
    ),
  );
}

Widget heading3() {
  return Padding(
    padding: EdgeInsets.only(left: 35.w,),
    child: Row(children: [
      Text(
        "Board Fixing",
        style: TextStyle(
            fontWeight: FontWeight.w400,
            fontSize: 20.sp,
            color: const Color(0xFFDD7164)),
      ),
    ]),
  );
}
Widget subheading2(BuildContext context) {
  JobIDProvider job = Provider.of<JobIDProvider>(
    context,
  );
  return Padding(
    padding: EdgeInsets.only(left: 35.w, ),
    child: Row(
      children: [
        Text(
          "Board fixing on the sides from ",
          style: TextStyle(
              fontWeight: FontWeight.w400,
              fontSize: 13.sp,
              color: const Color(0xFF000000).withOpacity(0.5)),
        ),
        Text(
          job.jobTitle,
          style: TextStyle(
              fontWeight: FontWeight.w400,
              fontSize: 13.sp,
              color: const Color(0xFF000000).withOpacity(0.5)),
        ),
      ],
    ),
  );
}

Widget data3(BuildContext context) {
  JobIDProvider job = Provider.of<JobIDProvider>(
    context,
  );
  return Padding(
    padding: EdgeInsets.only(left: 36.w, right: 48.w),
    child: Row(
      children: [
        Expanded(
          child: Text(
            "${job.jobResult.finishDateTime}",
            style: TextStyle(
                fontWeight: FontWeight.w400,
                fontSize: 16.sp,
                color: const Color(0xFFBC401E)),
          ),
        ),
        Text(
          job.jobResult.boardFixingNos,
          style: TextStyle(
              fontWeight: FontWeight.w400,
              fontSize: 16.sp,
              color: const Color(0xFF2B3070)),
        ),
      ],
    ),
  );
}
