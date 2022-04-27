import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Close_Day_Button extends StatelessWidget {
  final VoidCallback? onTap;

  Close_Day_Button({this.onTap});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      child: Stack(alignment:Alignment.bottomCenter,children: <Widget>[
        Row(children: [
          Expanded(
            child: Container(
              height: 94.h,
              width: 390.w,
              color:const Color(0xff2B3070),
            ),
          ),
        ]),
        Padding(
          padding: EdgeInsets.only(
              right: 214.w, left: 55.w, top: 28.h, bottom: 35.h),
          child: Text(
            "Close Day",
            style: TextStyle(
                fontWeight: FontWeight.w400,
                fontSize: 25.sp,
                color: const Color(0xFFFFFFFF)),
          ),
        ),
        Padding(padding: EdgeInsets.only(left: 330.w,right: 54.w,bottom: 44.h,top: 38.h
        ),
          child: Image.asset(
            'assets/images/forward_arrow.png',
            height: 14.h,
            width: 8.w,
          ),
        ),


    ]),
      onTap: onTap ?? () {},
    );
  }
}
