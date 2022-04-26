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
        body: ListView(shrinkWrap: true, children: [
          Column(
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
              Job_Transfer(),
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
                      builder: (context) => Super_viser_dashboard()));
                },
              )
            ],
          )
        ]));
  }
}
