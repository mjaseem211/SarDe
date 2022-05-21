import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

// ignore: camel_case_types
class Close_Day_Button extends StatelessWidget {
  final VoidCallback? onTap;

  // ignore: use_key_in_widget_constructors
  const Close_Day_Button({this.onTap});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap ?? () {},
      child: Row(children: [
        Container(
          height: 94.h,
          width: 390.w,
          decoration: const BoxDecoration(
            color: Color(0xff2B3070),
            image: DecorationImage(
              alignment: Alignment(.75, 0),
              image: AssetImage(
                'assets/images/forward_arrow.png',
              ),
            ),
          ),
          child: Padding(padding: EdgeInsets.only(left: 56.w,top: 28.h),  child: Text(
            "Close Day",
            style: TextStyle(
                fontWeight: FontWeight.w400,
                fontSize: 25.sp,
                color: const Color(0xFFFFFFFF)),
          ),
        ),
        ),
      ]),

    );
  }
}
