import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:sarde/screens/Profile/job_transfer/job_transfer_widgets.dart';
import 'package:sarde/screens/Profile/profile.dart';
import 'package:sarde/screens/Super_viser_Dashboard/Super_viser_dashboard.dart';
import 'package:sarde/widgets/Bottom_back_button.dart';

class job_transfer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        body: ListView(shrinkWrap: true, children: [
          Column(children: [
            title(),
            SizedBox(
              height: 25.h,
            ),
            subtitle(),
            SizedBox(
              height: 12.h,
            ),
            heading(),
            subheading(),
            SizedBox(
              height: 42.h,
            ),
            subtitle1(),
            SizedBox(
              height: 12.h,
            ),
            heading(),
            subheading(),
            SizedBox(
              height: 20.h,
            ),
            line(),
            SizedBox(
              height: 13.h,
            ),
            heading(),
            subheading(),
            SizedBox(
              height: 274.h,
            ),
            Row(children: [
              Column(children: [Bottom_back_button(
                onTap: (){

                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => Profile()));
                },
              )]),
              SizedBox(
                width: 142.w,
              ),
              Column(
                children: [
                  GestureDetector(
                    child: Text(
                      'New trasfer',
                      style: TextStyle(
                        color: const Color(0xff2B3070),
                        fontWeight: FontWeight.w400,
                        fontSize: 18.sp,
                      ),
                    ),
                  )
                ],
              )
            ]),
            SizedBox(
              height: 68.h,
            ),
          ]),
        ]));
  }
}
