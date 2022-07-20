import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../widgets/Bottom_back_button.dart';
import '../profile.dart';

class OldJobs extends StatelessWidget {
  const OldJobs({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        body: Column(children: <Widget>[
          Row(children: [
            oldJobs(),
          ]),
          SizedBox(
            height: 600.h,
          ),
          Bottom_back_button(
            onTap: () {
              Navigator.of(context).push(
                  MaterialPageRoute(builder: (context) => const Profile()));
            },
          ),
        ]));
  }
}

Widget oldJobs() {
  return Padding(
    padding: EdgeInsets.only(left: 33.w, top: 99.h),
    child: Row(children: [
      Text("Old Jobs",
          style: TextStyle(
              color: const Color(0xFF2B3070),
              fontSize: 35.sp,
              fontWeight: FontWeight.w400)),
    ]),
  );
}
