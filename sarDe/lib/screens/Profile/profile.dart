import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:sarde/screens/Profile/profile_widgets.dart';
import 'package:sarde/screens/Super_viser_Dashboard/supervisor_dashboard.dart';
import 'package:sarde/widgets/Bottom_back_button.dart';

class Profile extends StatelessWidget {
  const Profile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        body: Column(
          children: <Widget>[
            title(),
            subtitle(),
            SizedBox(
              height: 76.h,
            ),
            Old_Jobs(),
            SizedBox(
              height: 24.h,
            ),
            const Job_transfer(),
            SizedBox(
              height: 24.h,
            ),
            About(),
            SizedBox(
              height: 72.h,
            ),
            Bottom_back_button(
              onTap: () {
                Navigator.of(context).pushReplacement(MaterialPageRoute(
                    builder: (context) => const SupervisorDashboard()));
              },
            ),
          ],
        ));
  }
}
