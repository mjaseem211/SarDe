import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Edge_alignment_drop_down extends StatefulWidget {
  const Edge_alignment_drop_down({Key? key}) : super(key: key);

  @override
  State<Edge_alignment_drop_down> createState() =>
      _Edge_alignment_drop_downState();
}

class _Edge_alignment_drop_downState extends State<Edge_alignment_drop_down> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 35.h,
      width: 304.w,
      decoration: BoxDecoration(
          border: Border.all(color: const Color(0xffDD7164), width: 1.w),
          borderRadius: BorderRadius.circular(4.r)),
      child: DropdownButton<String>(
        hint: Padding(
          padding: EdgeInsets.only(left: 19.w),
          child: Text(
            'Edge Alignment',
            style: TextStyle(
              color: const Color(0xff000000).withOpacity(0.26),
            ),
          ),
        ),
        icon: Padding(
          padding: EdgeInsets.only(left: 137.w),
          child: const Icon(
            Icons.keyboard_arrow_down_outlined,
            color: Color(0xffDD7164),
          ),
        ),
        elevation: 16,
        underline: Container(
          color: Colors.white,
        ),
        style: TextStyle(color: const Color(0xff000000).withOpacity(0.26)),
        onChanged: (String? newValue) {
          setState(() {});
        },
        items: <String>[
          'Acceptable',
          'Not-Acceptable',
        ].map<DropdownMenuItem<String>>((String value) {
          return DropdownMenuItem<String>(
            value: value,
            child: Text(value),
          );
        }).toList(),
      ),
    );
  }
}
