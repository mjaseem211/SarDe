import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Top_Back_Button extends StatelessWidget {
  final VoidCallback? onTap;

  Top_Back_Button({this.onTap});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(top: 50.h, left: 40.w),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          GestureDetector(
            child: const Icon(Icons.arrow_back),
            onTap: onTap ?? () {},
          ),
        ],
      ),
    );
  }
}
