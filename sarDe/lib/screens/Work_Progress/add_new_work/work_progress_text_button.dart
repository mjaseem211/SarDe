import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class text_button extends StatelessWidget {
  final VoidCallback? onTap;

  text_button({this.onTap});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        left: 33.w,
      ),
      child: GestureDetector(
        child: Row(children: [
          Text("Road Marking",
              style: TextStyle(
                  color: Color(0xFFDD7164),
                  fontSize: 20.sp,
                  fontWeight: FontWeight.w400)),
        ]),

        onTap: onTap ?? () {

        },
      ),
    );
  }
}


