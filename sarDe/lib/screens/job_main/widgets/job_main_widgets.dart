import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../widgets/app_grid_buttons.dart';

Widget backButton() {
  return Padding(
    padding: EdgeInsets.only(top: 53.h, left: 41.w),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        GestureDetector(
          child: const Icon(Icons.arrow_back),
        )
      ],
    ),
  );
}

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
            color: Color(0xFF2B3070).withOpacity(0.7),
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
            ),
            SizedBox(
              height: 15.h,
            ),
            GridButtons(
              height: 147.h,
              onTap: () {
                print("GRid 2");
              },
            ),
            SizedBox(
              height: 15.h,
            ),
            GridButtons(
              height: 98.h,
            )
          ],
        ),
        SizedBox(
          width: 13.w,
        ),
        Column(
          children: [
            GridButtons(
              height: 144.h,
              width: 143.w,
            ),
            SizedBox(
              height: 15.h,
            ),
            GridButtons(
              height: 154.h,
              width: 143.w,
            ),
            SizedBox(
              height: 15.h,
            ),
            GridButtons(
              height: 162.h,
              width: 139.w,
            )
          ],
        ),
      ],
    ),
  );
}

// ignore: non_constant_identifier_names
Widget CloseButton1() {
  return Stack(alignment: Alignment.center, children: <Widget>[
    Expanded(
      child: Container(
        height: 98.h,
        width: 390.w,
        child: ElevatedButton(
          onPressed: () {},
          child: Padding(
            padding: EdgeInsets.only(left: 55.w, right: 214.w),
            child: Text('Close Day',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 25.sp,
                  fontWeight: FontWeight.w400,
                )),
          ),
          style: ElevatedButton.styleFrom(
            primary: const Color(0xFF2B3070), // background
            onPrimary: const Color(0xFF2B3070),

            // foreground
          ),
        ),
      ),
    ),
    Container(
      padding: EdgeInsets.only(right: 54.w, left: 330.w),
      child: Image.asset('assets/images/forwardarrow.png'),
    ),
  ]);
}
