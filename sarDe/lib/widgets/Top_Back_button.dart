

// ignore_for_file: camel_case_types, use_key_in_widget_constructors, file_names

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Top_Back_Button extends StatelessWidget {
  final VoidCallback? onTap;

  const Top_Back_Button({this.onTap});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(top: 70.h, left: 40.w),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          GestureDetector(
            child: const Icon(
              Icons.arrow_back,
            ),
            onTap: onTap ?? () {},
          ),
        ],
      ),
    );
  }
}
