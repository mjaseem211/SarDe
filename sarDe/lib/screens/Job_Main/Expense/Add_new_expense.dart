import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:sarde/screens/Job_Main/JobMain.dart';
import 'package:sarde/widgets/Bottom_back_button.dart';
import 'package:sarde/screens/Job_Main/Expense/Add_new_expense_widgets.dart';

class add_new_expense extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(children: [
        title(),
        SizedBox(
          height: 26.h,
        ),
        heading(),
        SizedBox(
          height: 2.h,
        ),
        line(),
        Expanded(
          child: ListView(children: [
            data(),
            SizedBox(
              height: 15.h,
            ),
            data1(),
          ]),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [Image.asset('assets/images/plus_button.png')],
        ),
        SizedBox(
          height: 365.61.h,
        ),
        Bottom_back_button(
          onTap: () {
            Navigator.of(context).pushReplacement(
                MaterialPageRoute(builder: (context) => JobMain()));
          },
        ),
        SizedBox(
          height: 72.h,
        ),
      ]),
    );
  }
}
