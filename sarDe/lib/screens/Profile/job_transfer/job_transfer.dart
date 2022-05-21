import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:sarde/screens/Profile/job_transfer/dialogue_box.dart';
import 'package:sarde/screens/Profile/job_transfer/job_transfer_widgets.dart';
import 'package:sarde/screens/Profile/profile.dart';
import 'package:sarde/widgets/Bottom_back_button.dart';

// ignore: camel_case_types
class job_transfer extends StatelessWidget {
  const job_transfer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        body: Column(children: [
          title(),
          SizedBox(
            height: 25.h,
          ),
          subtitle(),
          Expanded(
            child: ListView(shrinkWrap: true, children: [
              heading(),
              subheading(),
            ]),
          ),
          subtitle1(),
          Expanded(
            flex: 4,
            child: ListView(shrinkWrap: true, children: [
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
            ]),
          ),
          Padding(padding: EdgeInsets.only(right: 65.w),
            child: Row(children: [
              Expanded(
                child: Bottom_back_button(
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => const Profile()));
                  },
                ),
              ),

              const dialogue_box(),
            ]),
          ),
          SizedBox(
            height: 68.h,
          ),
        ]));
  }
}
