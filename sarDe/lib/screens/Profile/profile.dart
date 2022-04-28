import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:sarde/screens/Profile/profile_widgets.dart';
import 'package:sarde/screens/Super_viser_Dashboard/Super_viser_dashboard.dart';
import 'package:sarde/widgets/Bottom_back_button.dart';

class Profile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        body: Column(
          children: <Widget>[
            title(),
            subtitle(),
            Expanded(
              child: ListView(children: [
                Old_Jobs(),
                SizedBox(
                  height: 24.h,
                ),
                Job_Transfer(),
                SizedBox(
                  height: 24.h,
                ),
                About(),
              ]),
            ),
            Bottom_back_button(
              onTap: () {
                Navigator.of(context).pushReplacement(MaterialPageRoute(
                    builder: (context) => Super_viser_dashboard()));
              },
            ),
            SizedBox(height: 142.h),
          ],
        ));
  }
}
