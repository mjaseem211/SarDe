import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Close_Day_Button extends StatelessWidget {
  final VoidCallback? onPressed;

  Close_Day_Button({this.onPressed});

  @override
  Widget build(BuildContext context) {
    return Stack(alignment: Alignment.center, children: <Widget>[
      Expanded(
        child: Container(
          height: 94.h,
          width: 390.w,
          child: ElevatedButton(
            onPressed: onPressed ?? () {},
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
        child: Image.asset('assets/images/forward_arrow.png',height: 14.h,width: 8.w,),
      ),
    ]);
  }
}
