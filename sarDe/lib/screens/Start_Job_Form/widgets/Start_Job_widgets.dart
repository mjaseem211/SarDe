// ignore_for_file: file_names, camel_case_types

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:intl/intl.dart';
import 'package:provider/provider.dart';
import 'package:sarde/providers/job_id.dart';
import 'package:sarde/screens/Job_Main/JobMain.dart';
import '../../../providers/sub_jobid.dart';
import '../../../services/prefs.dart';

class Start_Button extends StatelessWidget {
  const Start_Button({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final job = Provider.of<JobIDProvider>(
      context,
    );
    final subJob = Provider.of<JobIDProvider>(
      context,
    );
    return GestureDetector(
      onTap: () async {
        final prefs = await SardePreferences.getInstance();
        prefs.jobsId = job.jobID;
        prefs.subJobsId = subJob.subJobResult.id;
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
        "Job " "${job.jobID}",
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
Widget jobDescription(BuildContext context) {
  JobIDProvider job = Provider.of<JobIDProvider>(
    context,
  );
  return Padding(
    padding: EdgeInsets.only(left: 33.w),
    child: Row(children: [
      Text(
        job.jobResult.jobDescription,
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

  var startDate = job.jobResult.startDate;
  var finishDate = job.jobResult.finishDate;
  return Padding(
    padding: EdgeInsets.only(left: 33.w, right: 50.w),
    child: Row(
      children: [
        Expanded(
          child: Text(
            DateFormat("dd-MM-yyyy").format(startDate),
            style: TextStyle(
                fontWeight: FontWeight.w400,
                fontSize: 22.sp,
                color: const Color(0xFF52972A)),
          ),
        ),
        Text(
          DateFormat("dd-MM-yyyy").format(finishDate),
          style: TextStyle(
              fontWeight: FontWeight.w400,
              fontSize: 22.sp,
              color: const Color(0xFFB8493C)),
        ),
      ],
    ),
  );
}

Widget subJobs(String taskName, String taskDetails, String total) {
  return Stack(alignment: Alignment.center, children: [
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
      JobIDProvider job = Provider.of<JobIDProvider>(
        context,
      );
      var finishDate = job.jobResult.finishDate;
      return Padding(
        padding: EdgeInsets.only(left: 36.w, right: 44.w, top: 100.h),
        child: Row(
          children: [
            Expanded(
              child: Text(
                DateFormat("dd-MM-yyyy").format(finishDate),
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
  ]);
}
