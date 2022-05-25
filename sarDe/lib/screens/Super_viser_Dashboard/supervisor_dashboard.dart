import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:sarde/screens/Super_viser_Dashboard/Super_viser_dashboard_widgets.dart';

class SupervisorDashboard extends StatefulWidget {
  const SupervisorDashboard({Key? key}) : super(key: key);

  @override
  State<SupervisorDashboard> createState() => _SupervisorDashboardState();
}

class _SupervisorDashboardState extends State<SupervisorDashboard> {
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
          const SupervisorSlider(),
          Expanded(
            child: ListView(
              shrinkWrap: true,
              primary: false,
              children: [
                jobContainer(),
                SizedBox(
                  height: 19.h,
                ),
                Job_container1(),
                SizedBox(
                  height: 19.h,
                ),
                Job_container2(),
              ],
            ),
          ),
          Bottom_data(),
        ],
      ),
    );
  }
}
