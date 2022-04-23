import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class text_button extends StatelessWidget {
  final VoidCallback? onTap;
  final String? text;
  final Color? color;
  final double? font_size;
  final double? left;
  final double? right;

  text_button(
      {this.onTap,
      this.text,
      this.color,
      this.font_size,
      this.left,
      this.right});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        left: left ?? 33.w,
        right: right ?? 0,
      ),
      child: GestureDetector(
        child: Row(children: [
          Text(text ?? "",
              style: TextStyle(
                  color: color ?? const Color(0xFFDD7164),
                  fontSize: font_size ?? 20.sp,
                  fontWeight: FontWeight.w400)),
        ]),
        onTap: onTap ?? () {},
      ),
    );
  }
}
