import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
class GridButtons extends StatelessWidget {
  final double? height;
  final double? width;
  final Color? color;
  final double? radius;
  final VoidCallback? onTap;

  GridButtons({this.height,this.width,this.color,this.radius,this.onTap});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap ?? (){},
      child: Container(
        height: height??214.h,
        width: width??160.w,
        decoration:  BoxDecoration(
            color: color??Color(0xFFDD7164),
            borderRadius: BorderRadius.circular(radius??13.r)
        ),
      ),
    );
  }
}