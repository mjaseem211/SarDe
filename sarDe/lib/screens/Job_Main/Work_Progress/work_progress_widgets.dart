import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:sarde/screens/Job_Main/Work_Progress/add_new_work/Add_new_work.dart';


Widget Title1() {
  return Padding(
    padding: EdgeInsets.only(left: 33.w, top: 99.h),
    child: Row(children: [
      Text("Work Progress",
          style: TextStyle(
              color: const Color(0xFF2B3070),
              fontSize: 35.sp,
              fontWeight: FontWeight.w400)),
    ]),
  );
}

Widget Sub_Title() {
  return Padding(
    padding: EdgeInsets.only(
      left: 33.w,
    ),
    child: Row(children: [
      Text("Job 303",
          style: TextStyle(
              color: Color(0xFF2B3070).withOpacity(0.7),
              fontSize: 22.sp,
              fontWeight: FontWeight.w400)),
    ]),
  );
}

class text_button1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 34.w, right: 46.w),
      child: Row(
        children: [
          Expanded(
            child: GestureDetector(
              child: Container(
                alignment: Alignment.centerLeft,
                child: Text(
                  "18-09-22",
                  style: TextStyle(
                      fontWeight: FontWeight.w400,
                      fontSize: 16.sp,
                      color: const Color(0xFFBC401E)),
                ),
              ),
              onTap: () {
                Navigator.of(context).pushReplacement(
                    MaterialPageRoute(builder: (context) => add_new_work()));
              },
            ),
          ),
          Expanded(
            child: GestureDetector(
              child: Container(
                alignment: Alignment.centerRight,
                child: Text(
                  "Total : 534  sqm",
                  style: TextStyle(
                      fontWeight: FontWeight.w400,
                      fontSize: 16.sp,
                      color: const Color(0xFF2B3070)),
                ),
              ),
              onTap: () {
                Navigator.of(context).pushReplacement(
                    MaterialPageRoute(builder: (context) => add_new_work()));
              },
            ),
          ),
        ],
      ),
    );
  }
}

class text_button2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 34.w, right: 46.w),
      child: Row(
        children: [
          Expanded(
            child: GestureDetector(
              child: Container(
                alignment: Alignment.centerLeft,
                child: Text(
                  "18-09-22",
                  style: TextStyle(
                      fontWeight: FontWeight.w400,
                      fontSize: 16.sp,
                      color: const Color(0xFFBC401E)),
                ),
              ),
              onTap: () {
                Navigator.of(context).pushReplacement(
                    MaterialPageRoute(builder: (context) => add_new_work()));
              },
            ),
          ),
          Expanded(
            child: GestureDetector(
              child: Container(
                alignment: Alignment.centerRight,
                child: Text(
                  "Total : 184 nos",
                  style: TextStyle(
                      fontWeight: FontWeight.w400,
                      fontSize: 16.sp,
                      color: const Color(0xFF2B3070)),
                ),
              ),
              onTap: () {
                Navigator.of(context).pushReplacement(
                    MaterialPageRoute(builder: (context) => add_new_work()));
              },
            ),
          ),
        ],
      ),
    );
  }
}




class text_button3 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 34.w, right: 46.w),
      child: Row(
        children: [
          Expanded(
            child: GestureDetector(
              child: Container(
                alignment: Alignment.centerLeft,
                child: Text(
                  "18-09-22",
                  style: TextStyle(
                      fontWeight: FontWeight.w400,
                      fontSize: 16.sp,
                      color: const Color(0xFFBC401E)),
                ),
              ),
              onTap: () {
                Navigator.of(context).pushReplacement(
                    MaterialPageRoute(builder: (context) => add_new_work()));
              },
            ),
          ),
          Expanded(
            child: GestureDetector(
              child: Container(
                alignment: Alignment.centerRight,
                child: Text(
                  "Total : 43  nos",
                  style: TextStyle(
                      fontWeight: FontWeight.w400,
                      fontSize: 16.sp,
                      color: const Color(0xFF2B3070)),
                ),
              ),
              onTap: () {
                Navigator.of(context).pushReplacement(
                    MaterialPageRoute(builder: (context) => add_new_work()));
              },
            ),
          ),
        ],
      ),
    );
  }
}