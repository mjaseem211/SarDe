import 'package:flutter/material.dart';
import 'package:sarde/screens/Start_Job_Form/widgets/Start_Job_widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:sarde/screens/Super_viser_Dashboard/supervisor_dashboard.dart';
import 'package:sarde/widgets/Top_Back_button.dart';

// ignore: camel_case_types
class Start_Job_Form extends StatelessWidget {
  const Start_Job_Form({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Column(children: [
        Top_Back_Button(
          onTap: () {
            Navigator.of(context).pushReplacement(MaterialPageRoute(
                builder: (context) => const SupervisorDashboard()));
          },
        ),
        SizedBox(
          height: 66.h,
        ),
        title1(),
        SizedBox(
          height: 3.h,
        ),
        subtitle(),
        SizedBox(
          height: 5.h,
        ),
        date(),
        Expanded(
          child: ListView(children: [
            heading(),
            subheading(),
            SizedBox(
              height: 3.h,
            ),
            data(),
            SizedBox(
              height: 9.h,
            ),
            line(),
            SizedBox(
              height: 11.h,
            ),
            heading2(),
            subheading1(),
            SizedBox(
              height: 18.h,
            ),
            data2(),
            SizedBox(
              height: 12.h,
            ),
            line(),
            SizedBox(
              height: 12.h,
            ),
            heading3(),
            subheading2(),
            SizedBox(
              height: 18.h,
            ),
            data3(),
          ]),
        ),
        const Start_Button(),
      ]),
    );
  }
}
