import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

// ignore: camel_case_types
class drop_down extends StatefulWidget {
  const drop_down({Key? key}) : super(key: key);

  @override
  State<drop_down> createState() => _drop_downState();
}

// ignore: camel_case_types
class _drop_downState extends State<drop_down> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 35.h,
      width: 321.w,
      decoration: BoxDecoration(
          border: Border.all(color: const Color(0xffDD7164), width: 1.w),
          borderRadius: BorderRadius.circular(4.r)),
      child: DropdownButton<String>(
        hint: Padding(
          padding: EdgeInsets.only(left: 13.w),
          child: Text(
            'Expence',
            style: TextStyle(
              color: const Color(0xff000000).withOpacity(0.26),
              fontWeight: FontWeight.w400,
              fontSize: 14.sp,
            ),
          ),
        ),
        icon: Padding(
          padding: EdgeInsets.only(left: 195.w, right: 14.w),
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
        items: <String>['Vech Rent', 'Machine Rent',]
            .map<DropdownMenuItem<String>>((String value) {
          return DropdownMenuItem<String>(
            value: value,
            child: Text(value),
          );
        }).toList(),
      ),
    );
  }
}