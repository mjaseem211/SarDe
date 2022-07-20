import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../widgets/Bottom_back_button.dart';
import '../profile.dart';

class AboutPage extends StatelessWidget {
  const AboutPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        body: Column(children: <Widget>[
          Row(children: [
            logo(),
          ]),
          SizedBox(
            height: 300.h,
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

Widget logo() {
  return Padding(
    padding: EdgeInsets.only(top: 280.h),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Image.asset(
          'assets/images/sarde.png',
          height: 155.h,
          width: 254.w,
        ),
      ],
    ),
  );
}
