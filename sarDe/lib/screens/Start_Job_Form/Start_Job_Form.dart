import 'package:flutter/material.dart';
import 'package:sarde/widgets/Back_button.dart';
import 'package:sarde/screens/Start_Job_Form/widgets/Start_Job_widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:sarde/screens/home.dart';

class Start_Job_Form extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(shrinkWrap: true, children: [
        Column(children: [
          Back_Button(
            onTap: () {
              Navigator.of(context).pushReplacement(
                  MaterialPageRoute(builder: (context) => Home()));
            },
          ),
          SizedBox(
            height: 66.h,
          ),
          Title1(),
          SizedBox(
            height: 3.h,
          ),
          SubTitle(),
          SizedBox(
            height: 5.h,
          ),
          Date(),
          SizedBox(
            height: 24.h,
          ),
          Heading(),
          SubHeading(),
          SizedBox(
            height: 3.h,
          ),
          Data(),
          SizedBox(
            height: 9.h,
          ),
          line(),
          SizedBox(
            height: 11.h,
          ),
          Heading2(),
          SubHeading1(),
          SizedBox(
            height: 18.h,
          ),
          Data2(),
          SizedBox(
            height: 12.h,
          ),
          line(),
          SizedBox(
            height: 12.h,
          ),
          Heading3(),
          SubHeading2(),
          SizedBox(
            height: 18.h,
          ),
          Data3(),
          SizedBox(
            height: 169.h,
          ),
          Start_Button(),
        ]),
      ]),
    );
  }
}
