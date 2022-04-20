import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:sarde/screens/Complete_checkup_form/complete_checkup_form.dart';

class Close_Button3 extends StatelessWidget {
  final VoidCallback? onPressed;

  Close_Button3({this.onPressed});

  @override
  Widget build(BuildContext context) {
    return Stack(alignment: Alignment.center, children: <Widget>[
      Expanded(
        child: Container(
          height: 94.h,
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
}
