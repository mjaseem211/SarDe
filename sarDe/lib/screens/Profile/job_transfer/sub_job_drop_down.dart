import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class sub_job_drop_down extends StatefulWidget {
  const sub_job_drop_down({Key? key}) : super(key: key);

  @override
  State<sub_job_drop_down> createState() => _sub_job_drop_downState();
}

class _sub_job_drop_downState extends State<sub_job_drop_down> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 35.h,
      width: 199.w,
      decoration: BoxDecoration(
          border: Border.all(color: const Color(0xffDD7164), width: 1.w),
          borderRadius: BorderRadius.circular(4.r)),
      child: DropdownButton<String>(
        hint: Padding(
          padding: EdgeInsets.only(left: 13.w),
          child: Text(
            'Sub Job',
            style: TextStyle(
              color: const Color(0xff000000).withOpacity(0.26),
              fontWeight: FontWeight.w400,
              fontSize: 14.sp,
            ),
          ),
        ),
        icon: Padding(
          padding: EdgeInsets.only(
            left: 70.w,
          ),
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
          'Road Marking',
          'Stud Fixing',
          'Stud Fixing',
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
