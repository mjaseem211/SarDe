import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:sarde/screens/Super_viser_Dashboard/Super_viser_dashboard_widgets.dart';

class Super_viser_dashboard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: ListView(
          shrinkWrap: true,
          children: [ Column(
              children: <Widget>[
                text_button(),
                SizedBox(
                  height: 16.h,
                ),
                slider(),
                SizedBox(
                  height: 19.h,
                ),
                Job_container(),
                SizedBox(
                  height: 19.h,
                ),
                Job_container1(),
                SizedBox(
                  height: 36.h,
                ),
                Bottom_data(),
              ],
            )
   ] )
    );
  }




}