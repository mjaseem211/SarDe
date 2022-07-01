// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:provider/provider.dart';
import 'package:sarde/models/user_details.dart';
import 'package:sarde/providers/job_id.dart';
import 'package:sarde/screens/Profile/profile.dart';
import 'package:sarde/screens/Start_Job_Form/Start_Job_Form.dart';

import '../../models/job_card/job_card.dart';

Widget nameButton() {
  return Builder(
    builder: (context) {
      return Padding(
        padding: EdgeInsets.only(
          left: 33.w,
          top: 90.h,
        ),
        child: Row(children: [
          TextButton(
              child: Text(
                'Hi,',
                style: TextStyle(
                    color: const Color(0xFF2B3070),
                    fontSize: 64.sp,
                    fontWeight: FontWeight.w400),
              ),
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => const Profile()));
              }),
        ]),
      );
    },
  );
}

Widget nameButton1() {
  return Builder(
    builder: (context) {
      UserDetails userDetails = Provider.of<UserDetails>(context);
      return Padding(
        padding: EdgeInsets.only(
          left: 33.w,
        ),
        child: Row(children: [
          TextButton(
              child: Text(
                userDetails.name ?? "",
                style: TextStyle(
                    color: const Color(0xFF2B3070),
                    fontSize: 64.sp,
                    fontWeight: FontWeight.w400),
              ),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const Profile(),
                  ),
                );
              }),
        ]),
      );
    },
  );
}

class SupervisorSlider extends StatelessWidget {
  const SupervisorSlider({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.center,
      children: <Widget>[
        Padding(
          padding: EdgeInsets.only(left: 40.w),
          child: Row(
            children: [
              Container(
                width: 316.w,
                height: 5.0.h,
                decoration: BoxDecoration(
                  color: const Color(0xffd8d4e9),
                  borderRadius: BorderRadius.circular(6.r),
                ),
              ),
            ],
          ),
        ),
        Padding(
          padding: EdgeInsets.only(left: 43.w),
          child: Row(
            children: [
              Container(
                width: 198.w,
                height: 9.0.h,
                decoration: BoxDecoration(
                  color: const Color(0xffa49eb8),
                  borderRadius: BorderRadius.circular(6.r),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}

Widget jobContainer(String id, String jobTitle, Result job) {
  return Builder(
    builder: (context) {
      return GestureDetector(
        child: Stack(alignment: Alignment.center, children: <Widget>[
          Padding(
            padding: EdgeInsets.only(left: 43.w),
            child: Row(
              children: [
                Container(
                  margin: EdgeInsets.only(top: 20.h),
                  width: 306.w,
                  height: 124.h,
                  decoration: BoxDecoration(
                    color: const Color(0xff2b3070).withOpacity(0.35),
                    borderRadius: BorderRadius.circular(13.r),
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.only(left: 43.w),
            child: Row(
              children: [
                AnimatedContainer(
                  margin: EdgeInsets.only(top: 20.h),
                  duration: const Duration(seconds: 1),
                  curve: Curves.fastOutSlowIn,
                  alignment: Alignment.bottomLeft,
                  width: 306.w,
                  height: 136.h,
                  decoration: BoxDecoration(
                    color: const Color(0xff2b3070),
                    borderRadius: BorderRadius.circular(13.r),
                  ),
                ),
              ],
            ),
          ),
          Row(children: [
            Padding(
              padding: EdgeInsets.only(top: 66.5.h, right: 225.w, left: 62.w),
              child: Text(
                id,
                style: TextStyle(
                  color: const Color(0xFFFFFFFF),
                  fontSize: 17.sp,
                  fontWeight: FontWeight.w400,
                ),
              ),
            ),
          ]),
          Row(
            children: [
              Padding(
                padding: EdgeInsets.only(top: 112.h, right: 118.w, left: 62.w),
                child: Text(
                  jobTitle,
                  style: TextStyle(
                      color: const Color(0xffffffff).withOpacity(.46),
                      fontSize: 14.sp,
                      fontWeight: FontWeight.w400),
                ),
              ),
            ],
          ),
          // Padding(
          //   padding: EdgeInsets.only(
          //     top: 20.h,
          //     left: 265.w,
          //     bottom: 99.h,
          //   ),
          //   child: Text(
          //     '78 %',
          //     style: TextStyle(
          //         color: const Color(0xFF000000).withOpacity(0.5),
          //         fontSize: 15.sp,
          //         fontWeight: FontWeight.w400),
          //   ),
          // ),
        ]),
        onTap: () {
          Navigator.of(context).push(
            MaterialPageRoute(
              builder: (context) => ChangeNotifierProvider.value(
                value: JobIDProvider(
                  id,
                  jobTitle,
                  job,

                ),
                child: Start_Job_Form(jobCardModel: job),
              ),
            ),
          );
        },
      );
    },
  );
}

// ignore: non_constant_identifier_names
Widget Bottom_data(String message_title, String message_description) {
  return Container(
    width: 390.w,
    height: 180.h,
    decoration: BoxDecoration(
      color: const Color(0xffefd2bd),
      borderRadius: BorderRadius.only(
        
        topLeft: Radius.circular(10.r),
        topRight: Radius.circular(10.r)
        
      )
    ),
    child: Column(
      children: [
        Row(children: [
          Padding(
            padding: EdgeInsets.only(left: 35.w, top: 30.h),
            child: Text(
              message_title,
              style: TextStyle(
                color: Colors.black,
                fontWeight: FontWeight.w400,
                fontSize: 18.sp,
              ),
            ),
          ),
        ]),
        Row(children: [
          Padding(
              padding: EdgeInsets.only(
                left: 24.w,
              ),
              child: Container(
                  width: 332.w, height: 1.h, color: const Color(0xff8B8888))),
        ]),
        Row(children: [
          Padding(
            padding: EdgeInsets.only(
              left: 35.w,
              top: 8.h,
            ),
            child: Text(
              message_description,
              style: TextStyle(
                color: Colors.black,
                fontWeight: FontWeight.w400,
                fontSize: 18.sp,
              ),
            ),
          ),
        ]),
      ],
    ),
  );
}
