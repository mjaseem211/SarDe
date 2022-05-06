import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:sarde/screens/Super_viser_Dashboard/Super_viser_dashboard_widgets.dart';

// ignore: camel_case_types
class Super_viser_dashboard extends StatefulWidget {
  const Super_viser_dashboard({Key? key}) : super(key: key);

  @override
  State<Super_viser_dashboard> createState() => _Super_viser_dashboardState();
}

// ignore: camel_case_types
class _Super_viser_dashboardState extends State<Super_viser_dashboard> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: Colors.white,
      body: Column(
        children: <Widget>[
          const text_button(),
          SizedBox(
            height: 16.h,
          ),
          slider(),
          Expanded(
            child: ListView(shrinkWrap: true, primary: false, children: [
              Job_container(),
              SizedBox(
                height: 19.h,
              ),
              Job_container1(),
              SizedBox(
                height: 19.h,
              ),
              Job_container2(),
            ]),
          ),
          Bottom_data(),
        ],
      ),
    );
  }
}
