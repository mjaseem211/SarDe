import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:provider/provider.dart';
import 'package:sarde/models/user_details.dart';
import 'package:sarde/screens/Profile/job_transfer/job_transfer.dart';
import 'package:sarde/screens/Sign_in/signin.dart';

import '../../services/prefs.dart';

Widget title() {
  return Builder(
    builder: (context) {
      UserDetails userDetails = Provider.of<UserDetails>(context);
      return Padding(
        padding: EdgeInsets.only(left: 34.w, top: 200.h),
        child: Row(children: [
          Text(
            userDetails.name ?? "",
            style: TextStyle(
                color: const Color(0xFF2B3070),
                fontSize: 64.sp,
                fontWeight: FontWeight.w400),
          ),
        ]),
      );
    },
  );
}

Widget subtitle() {
  return Padding(
    padding: EdgeInsets.only(left: 39.w),
    child: Row(children: [
      Text(
        'Supervisor',
        style: TextStyle(
            color: const Color(0xFFDD7164),
            fontSize: 23.sp,
            fontWeight: FontWeight.w400),
      ),
    ]),
  );
}

// ignore: non_constant_identifier_names
Widget Old_Jobs() {
  return Padding(
    padding: EdgeInsets.only(
      left: 34.w,
    ),
    child: Row(children: [
      TextButton(
        child: Text(
          'Old Jobs ',
          style: TextStyle(
              color: const Color(0xFF2B3070),
              fontSize: 31.sp,
              fontWeight: FontWeight.w400),
        ),
        onPressed: () {},
      ),
    ]),
  );
}

// ignore: camel_case_types
class Job_transfer extends StatelessWidget {
  const Job_transfer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    {
      return Padding(
        padding: EdgeInsets.only(left: 34.w),
        child: Row(children: [
          TextButton(
            child: Text(
              'Job to Job Transfer',
              style: TextStyle(
                  color: const Color(0xFF2B3070),
                  fontSize: 31.sp,
                  fontWeight: FontWeight.w400),
            ),
            onPressed: () {
              Navigator.of(context).pushReplacement(MaterialPageRoute(
                  builder: (context) => const job_transfer()));
            },
          ),
        ]),
      );
    }
  }
}

// ignore: non_constant_identifier_names
Widget About() {
  return Padding(
    padding: EdgeInsets.only(left: 34.w),
    child: Row(children: [
      TextButton(
        child: Text(
          'About',
          style: TextStyle(
              color: const Color(0xFF2B3070),
              fontSize: 31.sp,
              fontWeight: FontWeight.w400),
        ),
        onPressed: () {},
      ),
    ]),
  );
}

Widget logout() {
  return Builder(builder: (context) {
    return Row(mainAxisAlignment: MainAxisAlignment.center, children: [
      TextButton(
        child: Text(
          'Logout',
          style: TextStyle(
              color: const Color(0xFF909396),
              fontSize: 25.sp,
              fontWeight: FontWeight.w400),
        ),
        onPressed: () async {

          SardePreferences prefs = await SardePreferences.getInstance();
          prefs.removeToken();
          Navigator.pushReplacement(context,
              MaterialPageRoute(builder: (BuildContext ctx) => const SignInPage()));
        },
      ),
    ]);
  });
}
