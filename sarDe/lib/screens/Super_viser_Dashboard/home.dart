import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:sarde/screens/Start_Job_Form/Start_Job_Form.dart';
import 'package:sarde/screens/Profile/profile.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        theme: ThemeData(
          textTheme: GoogleFonts.lexendDecaTextTheme(
            Theme.of(context)
                .textTheme, // If this is not set, then ThemeData.light().textTheme is used.
          ),
        ),
        debugShowCheckedModeBanner: false,
        home: Scaffold(
            resizeToAvoidBottomInset: false,
            body: SafeArea(
                child: Center(
                    child: Column(
              children: <Widget>[
                Container(
                    padding: EdgeInsets.fromLTRB(0, 97.h, 140.w, 0),
                    child: TextButton(
                        child: Text(
                          'Hi ,\nPradeep',
                          style: TextStyle(
                              color: const Color(0xFF2B3070),
                              fontSize: 64.sp,
                              fontWeight: FontWeight.bold),
                        ),
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => Profile()));
                        })),
                Stack(alignment: Alignment.centerLeft, children: <Widget>[
                  Container(
                      width: 316.w,
                      height: 5.0.h,
                      decoration: BoxDecoration(
                        color: const Color(0xffd8d4e9),
                        border: Border.all(
                          color: const Color(0xffd8d4e9),
                          width: 8.w,
                        ),
                        borderRadius: BorderRadius.circular(6.r),
                      )),
                  Container(
                      width: 198.w,
                      height: 9.0.h,
                      decoration: BoxDecoration(
                        color: const Color(0xffa49eb8),
                        border: Border.all(
                          color: const Color(0xffa49eb8),
                          width: 8.w,
                        ),
                        borderRadius: BorderRadius.circular(6.r),
                      )),
                ]),
                SizedBox(
                  height: 19.h,
                ),
                Stack(alignment: Alignment.centerLeft, children: <Widget>[
                  Container(
                    padding: EdgeInsets.fromLTRB(50.w, 0, 0, 0),
                    width: 306.w,
                    height: 124.h,
                    child: ElevatedButton(
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => Start_Job_Form()));
                      },
                      child: Text('',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 18.sp,
                          )),
                      style: ElevatedButton.styleFrom(
                        primary: const Color(0xFFA49EB8),
                        // background
                        onPrimary: const Color(0xFFA49EB8),
                        // foreground
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(9.0.r)),
                      ),
                    ),
                  ),
                  AnimatedContainer(
                      duration: const Duration(seconds: 1),
                      curve: Curves.fastOutSlowIn,
                      alignment: Alignment.bottomLeft,
                      width: 257.w,
                      height: 136.h,
                      decoration: BoxDecoration(
                        color: const Color(0xff2b3070),
                        border: Border.all(
                          color: const Color(0xff2b3070),
                          width: 8.w,
                        ),
                        borderRadius: BorderRadius.circular(13.r),
                      )),
                  Container(
                    padding: EdgeInsets.fromLTRB(15.w, 30.h, 0, 0),
                    child: Text(
                      'Job 303',
                      style: TextStyle(
                          color: const Color(0xFFFFFFFF),
                          fontSize: 18.sp,
                          fontWeight: FontWeight.normal),
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.fromLTRB(15.w, 75.h, 0, 0),
                    child: Text(
                      'Kuttichira to Maradu',
                      style: TextStyle(
                          color: const Color(0xDCFFFFFF),
                          fontSize: 18.sp,
                          fontWeight: FontWeight.normal),
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.fromLTRB(305.w, 0, 30.w, 100.h),
                    child: Text(
                      '78 %',
                      style: TextStyle(
                          color: const Color(0xFF636262),
                          fontSize: 18.sp,
                          fontWeight: FontWeight.normal),
                    ),
                  ),
                ]),
                SizedBox(
                  height: 19.h,
                ),
                Stack(alignment: Alignment.centerLeft, children: <Widget>[
                  Container(
                    width: 306.w,
                    height: 124.h,
                    decoration: BoxDecoration(
                      color: const Color(0xfff4cfc9),
                      border: Border.all(
                        color: const Color(0xfff4cfc9),
                        width: 8.w,
                      ),
                      borderRadius: BorderRadius.circular(10.0.r),
                    ),
                  ),
                  AnimatedContainer(
                      duration: const Duration(seconds: 1),
                      curve: Curves.fastOutSlowIn,
                      alignment: Alignment.bottomLeft,
                      width: 188.w,
                      height: 136.h,
                      decoration: BoxDecoration(
                        color: const Color(0xffdd7164),
                        border: Border.all(
                          color: const Color(0xffdd7164),
                          width: 8.w,
                        ),
                        borderRadius: BorderRadius.circular(10.0.r),
                      )),
                  Container(
                    padding: EdgeInsets.fromLTRB(305.w, 5.h, 30.w, 100.h),
                    child: Text(
                      '56 %',
                      style: TextStyle(
                          color: const Color(0xFF636262),
                          fontSize: 18.sp,
                          fontWeight: FontWeight.normal),
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.fromLTRB(15.w, 30.h, 0, 0),
                    child: Text(
                      'Job 308',
                      style: TextStyle(
                          color: const Color(0xFFFFFFFF),
                          fontSize: 18.sp,
                          fontWeight: FontWeight.normal),
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.fromLTRB(15.w, 75.h, 0, 0),
                    child: Text(
                      'Koyilandy  to Kozhikode',
                      style: TextStyle(
                          color: const Color(0xBAFFFFFF),
                          fontSize: 18.sp,
                          fontWeight: FontWeight.normal),
                    ),
                  ),
                ]),
                const Spacer(
                  flex: 5,
                ),
                Stack(children: <Widget>[
                  Container(
                      width: 500.w,
                      height: 216.h,
                      decoration: BoxDecoration(
                        color: const Color(0xffefd2bd),
                        border: Border.all(
                          color: const Color(0xffefd2bd),
                          width: 8.w,
                        ),
                        borderRadius: BorderRadius.circular(10.0.r),
                      )),
                  Container(
                    padding: EdgeInsets.fromLTRB(60.w, 35.h, 0, 0),
                    child: Text(
                      'Items shiped from inventry, please\n update once collected\n        ',
                      style: TextStyle(
                          color: const Color(0xBA000000),
                          fontSize: 18.sp,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.fromLTRB(50.w, 95.h, 0, 0),
                    child: Image.asset('assets/images/Line.jpg'),
                  ),
                  Container(
                    padding: EdgeInsets.fromLTRB(60.w, 115.h, 0, 0),
                    child: Text(
                      'Quality inspection pending on\n Kuttichira to Maradu.         ',
                      style: TextStyle(
                          color: const Color(0xBA000000),
                          fontSize: 18.sp,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                ]),
              ],
            )))));
  }
}
