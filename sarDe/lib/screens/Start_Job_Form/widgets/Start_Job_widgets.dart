import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:sarde/screens/job_main/JobMain.dart';

class Start_Button extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    return Stack(alignment: Alignment.center, children: <Widget>[
      Expanded(
        child: Container(
          height: 98.h,
          width: 390.w,
          child: ElevatedButton(
            onPressed: () {


              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => JobMain()));


            },
            child: Padding(
              padding: EdgeInsets.only(left: 55.w, right: 214.w),
              child: Text('Start Job',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 25.sp,
                    fontWeight: FontWeight.w400,
                  )),
            ),
            style: ElevatedButton.styleFrom(
              primary: const Color(0xFF2B3070), // background
              onPrimary: const Color(0xFF2B3070),

              // foreground
            ),
          ),
        ),
      ),
      Container(
        padding: EdgeInsets.only(right: 54.w, left: 330.w),
        child: Image.asset('assets/images/forwardarrow.png'),
      ),
    ]);
  }
}


Widget Title1() {
  return Padding(
    padding: EdgeInsets.only(left: 33.w),
    child: Row(
        children: [

          Container(
            alignment: Alignment.centerLeft,
            child: Text(
              "Job 303",
              style: TextStyle(
                  fontWeight: FontWeight.w400,
                  fontSize: 35.sp,
                  color: const Color(0xFF2B3070)),
            ),
          ),
        ]),
  );
}

Widget SubTitle() {
  return Padding(
    padding: EdgeInsets.only(left: 33.w),
    child: Row(
        children: [

          Container(
            alignment: Alignment.centerLeft,
            child: Text(
              "NABARD RIDF 23\nKuttichira to Maradu",
              style: TextStyle(
                  fontWeight: FontWeight.w400,
                  fontSize: 22.sp,
                  color: const Color(0xFF2B3070).withOpacity(0.7)),
            ),
          ),
        ]),
  );
}

Widget Date() {
  return Padding(
    padding: EdgeInsets.only(left: 33.w, right: 189.w),
    child: Row(
      children: [
        Expanded(
          child: Container(
            alignment: Alignment.centerLeft,
            child: Text(
              "10-08-22",
              style: TextStyle(
                  fontWeight: FontWeight.w400,
                  fontSize: 22.sp,
                  color: const Color(0xFF52972A)),
            ),
          ),
        ),
        Expanded(
            child: Container(
              alignment: Alignment.centerRight,
              child: Text(
                "18-09-22",
                style: TextStyle(
                    fontWeight: FontWeight.w400,
                    fontSize: 22.sp,
                    color: const Color(0xFFB8493C)),
              ),
            )),
      ],
    ),
  );
}

Widget Heading() {
  return Padding(
    padding: EdgeInsets.only(left: 35.w),
    child: Row(
        children: [

          Container(
            alignment: Alignment.centerLeft,
            child: Text(
              "Road Marking",
              style: TextStyle(
                  fontWeight: FontWeight.w400,
                  fontSize: 20.sp,
                  color: const Color(0xFFDD7164)),
            ),
          ),
        ]),
  );
}

Widget SubHeading() {
  return Padding(
    padding: EdgeInsets.only(left: 36.w),
    child: Row(
        children: [

          Container(
            alignment: Alignment.centerLeft,
            child: Text(
              "Road Marking from kuttichira to maradu",
              style: TextStyle(
                  fontWeight: FontWeight.w400,
                  fontSize: 14.sp,
                  color: const Color(0xFF000000).withOpacity(0.5)),
            ),
          ),
        ]),
  );
}

Widget Data() {
  return Padding(
    padding: EdgeInsets.only(left: 36.w, right: 44.w),
    child: Row(
      children: [
        Expanded(
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
        ),
        Expanded(
            child: Container(
              alignment: Alignment.centerRight,
              child: Text(
                "Total : 534  sqm",
                style: TextStyle(
                    fontWeight: FontWeight.w400,
                    fontSize: 16.sp,
                    color: const Color(0xFF2B3070)),
              ),
            )),
      ],
    ),
  );
}

Widget line() {
  return Padding(
    padding: EdgeInsets.only(left: 37.w, right: 49.w),
    child: Row(
        children: [

          Container(
            height: 1.h,
            width: 304.w,
            color: Color(0xFF000000).withOpacity(0.5),
            alignment: Alignment.center,

          ),
        ]),
  );
}

Widget Heading2() {
  return Padding(
    padding: EdgeInsets.only(left: 35.w),
    child: Row(
        children: [

          Container(
            alignment: Alignment.centerLeft,
            child: Text(
              "Stud Fixing",
              style: TextStyle(
                  fontWeight: FontWeight.w400,
                  fontSize: 20.sp,
                  color: const Color(0xFFDD7164)),
            ),
          ),
        ]),
  );
}

Widget SubHeading1() {
  return Padding(
    padding: EdgeInsets.only(left: 36.w),
    child: Row(
        children: [

          Container(
            alignment: Alignment.centerLeft,
            child: Text(
              "Stud fixing on the sides from kuttichira to\n maradu",
              style: TextStyle(
                  fontWeight: FontWeight.w400,
                  fontSize: 14.sp,
                  color: const Color(0xFF000000).withOpacity(0.5)),
            ),
          ),
        ]),
  );
}
Widget Data2() {
  return Padding(
    padding: EdgeInsets.only(left: 36.w, right: 44.w),
    child: Row(
      children: [
        Expanded(
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
        ),
        Expanded(
            child: Container(
              alignment: Alignment.centerRight,
              child: Text(
                "Total : 184 nos",
                style: TextStyle(
                    fontWeight: FontWeight.w400,
                    fontSize: 16.sp,
                    color: const Color(0xFF2B3070)),
              ),
            )),
      ],
    ),
  );
}
Widget Heading3() {
  return Padding(
    padding: EdgeInsets.only(left: 35.w),
    child: Row(
        children: [

          Container(
            alignment: Alignment.centerLeft,
            child: Text(
              "Board Fixing",
              style: TextStyle(
                  fontWeight: FontWeight.w400,
                  fontSize: 20.sp,
                  color: const Color(0xFFDD7164)),
            ),
          ),
        ]),
  );
}
Widget SubHeading2() {
  return Padding(
    padding: EdgeInsets.only(left: 36.w),
    child: Row(
        children: [

          Container(
            alignment: Alignment.centerLeft,
            child: Text(
              "Board fixing on the sides from kuttichira to\n maradu",
              style: TextStyle(
                  fontWeight: FontWeight.w400,
                  fontSize: 14.sp,
                  color: const Color(0xFF000000).withOpacity(0.5)),
            ),
          ),
        ]),
  );
}
Widget Data3() {
  return Padding(
    padding: EdgeInsets.only(left: 36.w, right: 48.w),
    child: Row(
      children: [
        Expanded(
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
        ),
        Expanded(
            child: Container(
              alignment: Alignment.centerRight,
              child: Text(
                "Total : 43  nos",
                style: TextStyle(
                    fontWeight: FontWeight.w400,
                    fontSize: 16.sp,
                    color: const Color(0xFF2B3070)),
              ),
            )),
      ],
    ),
  );
}


