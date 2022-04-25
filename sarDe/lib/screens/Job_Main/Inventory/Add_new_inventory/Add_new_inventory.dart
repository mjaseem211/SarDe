import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:sarde/screens/Job_Main/JobMain.dart';
import 'package:sarde/screens/Job_Main/Inventory/Add_new_inventory/Add_new_inventory_widgets.dart';
import 'package:sarde/widgets/Bottom_back_button.dart';

class add_new_inventory extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: ListView(shrinkWrap: true, children: [
        Column(children: [
          title(),
          SizedBox(
            height: 26.h,
          ),
          heading(),
          SizedBox(
            height: 2.h,
          ),
          line(),
          SizedBox(
            height: 6.h,
          ),
          data(),
          SizedBox(
            height: 33.h,
          ),
          Padding(
            padding: EdgeInsets.only(left: 103.w, right: 129.w),
            child: Row(children: [
              Column(
                children: [
                  Image.asset(
                    'assets/images/plus_button.png',
                    height: 20.h,
                    width: 20.w,
                  )
                ],
              ),
              SizedBox(
                width: 106.w,
              ),
              Column(
                children: [
                  Image.asset(
                    'assets/images/Subtract.png',
                    height: 5.h,
                    width: 30.w,
                  )
                ],
              ),
            ]),
          ),
          SizedBox(
            height: 439.3.h,
          ),
          Bottom_back_button(
            onTap: () {
              Navigator.of(context).pushReplacement(
                  MaterialPageRoute(builder: (context) => JobMain()));
            },
          ),
        ]),
      ]),
    );
  }
}
