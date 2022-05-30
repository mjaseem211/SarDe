import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class GridButtons extends StatelessWidget {
  final double? height;
  final double? width;
  final Color? color;
  final double? radius;
  final VoidCallback? onTap;
  final String? name;
  final double? left;
  final String? assetimage;
  final double? top;

  const GridButtons(
      {Key? key,
      this.height,
      this.width,
      this.color,
      this.radius,
      this.onTap,
      this.name,
      this.left,
      this.top,
      this.assetimage,})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap ?? () {},
      child: Container(
        height: height ?? 214.h,
        width: width ?? 160.w,
        decoration: BoxDecoration(
          color: color ?? const Color(0xFFDD7164),
          borderRadius: BorderRadius.circular(radius ?? 13.r),
          image: DecorationImage(
            alignment: const Alignment(.8, -0.7),
            image: AssetImage(
              assetimage ?? '',
            ),
          ),
        ),
        child: Padding(
            padding: EdgeInsets.only(
              top: top ?? 140.h,
              left: left ?? 19.w,
            ),
            child: Text(
              name ?? "",
              style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.w400,
                fontSize: 22.sp,
              ),
            )),
      ),
    );
  }
}
