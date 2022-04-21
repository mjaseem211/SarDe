import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'app_grid_buttons.dart';



Widget title() {
  return Padding(
    padding: EdgeInsets.only(left: 33.w, right: 44.w),
    child: Row(
      children: [
        Expanded(
          child: Container(
            alignment: Alignment.centerLeft,
            child: Text(
              "Job 303",
              style: TextStyle(
                  fontWeight: FontWeight.w400,
                  fontSize: 35.sp,
                  color: const Color(0xFF2B3070)),
            ),
          ),
        ),
        Expanded(
            child: Container(
          alignment: Alignment.centerRight,
          child: Text(
            "18-09-22",
            style: TextStyle(
                fontWeight: FontWeight.w400,
                fontSize: 22.sp,
                color: const Color(0xFFBC401E)),
          ),
        )),
      ],
    ),
  );
}

Widget subTitle() {
  return Padding(
    padding: EdgeInsets.only(left: 33.w),
    child: Row(
      children: [
        Text(
          "Kuttichira to Maradu",
          style: TextStyle(
            color:const Color(0xFF2B3070).withOpacity(0.7),
            fontSize: 22.sp,
            fontWeight: FontWeight.w400,
          ),
        )
      ],
    ),
  );
}

Widget gridView() {
  return Padding(
    padding: EdgeInsets.only(left: 33.w, right: 40.w),
    child: Row(
      children: [
        Column(
          children: [

            GridButtons(
              onTap: () {},
                  name: "Work\n Progress",

            ),


            SizedBox(
              height: 15.h,
            ),
            GridButtons(
              height: 147.h,
              onTap: () {
                print("GRid 2");
              },
              assetimage: 'assets/images/add_button.png',
              name: "Labours",
              top: 98.h,
            ),
            SizedBox(
              height: 15.h,
            ),
            GridButtons(
              assetimage: 'assets/images/add_button.png',
              height: 98.h,
              onTap: (){},
              name: "Tools",
              top: 52.h,
            )
          ],
        ),
        SizedBox(
          width: 13.w,
        ),
        Column(
          children: [
            GridButtons(
              assetimage: 'assets/images/add_button.png',
              height: 144.h,
              width: 143.w,
              name: "Expense",
              top: 98.h,
            ),
            SizedBox(
              height: 15.h,
            ),
            GridButtons(
              height: 154.h,
              width: 143.w,
              name: "Quality\n Check",
              top: 83.h,
            ),
            SizedBox(
              height: 15.h,
            ),
            GridButtons(
              height: 162.h,
              width: 139.w,
              name: "Inventory",
              top: 117.h,
            )
          ],
        ),
      ],
    ),
  );
}

