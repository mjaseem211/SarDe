import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Bottom_back_button extends StatelessWidget {
  final VoidCallback? onTap;

  Bottom_back_button({this.onTap});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        left: 43.w,
      ),
      child: GestureDetector(
        child: Row(
          children: [
            Image.asset(
              'assets/images/Bottom_back_button.png',
              height: 41.h,
              width: 41.w,
            ),
          ],
        ),
        onTap: onTap ?? () {},
      ),
    );
  }
}
