import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:sarde/screens/Profile/profile.dart';
import 'package:sarde/screens/Start_Job_Form/Start_Job_Form.dart';

class text_button extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 33.w, top: 97.h, right: 90.w),
      child: Row(children: [
        TextButton(
            child: Text(
              'Hi,\nPradeep',
              style: TextStyle(
                  color: const Color(0xFF2B3070),
                  fontSize: 64.sp,
                  fontWeight: FontWeight.w400),
            ),
            onPressed: () {
              Navigator.push(
                  context, MaterialPageRoute(builder: (context) => Profile()));
            }),
      ]),
    );
  }
}

Widget slider() {
  return Stack(alignment: Alignment.center, children: <Widget>[
    Padding(
      padding: EdgeInsets.only(left: 40.w),
      child: Row(children: [
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
      ]),
    ),
    Padding(
      padding: EdgeInsets.only(left: 43.w),
      child: Row(children: [
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
    ),
  ]);
}
Widget Job_container() {

  return Builder(
    builder: (context) {
      return GestureDetector(
        child: Stack(alignment: Alignment.center, children: <Widget>[
          Padding(
            padding: EdgeInsets.only(left: 43.w),
            child: Row(children: [
              Container(
                  width: 306.w,
                  height: 124.h,
                  decoration: BoxDecoration(
                    color: const Color(0xff2b3070).withOpacity(0.35),
                    borderRadius: BorderRadius.circular(13.r),
                  )),
            ]),
          ),
          Padding(
            padding: EdgeInsets.only(left: 43.w),
            child: Row(children: [
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
            ]),
          ),
          Padding(
            padding: EdgeInsets.only(top: 46.5.h, right: 225.w),
            child: Text(
              'Job 303',
              style: TextStyle(
                  color: const Color(0xFFFFFFFF),
                  fontSize: 18.sp,
                  fontWeight: FontWeight.normal),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(top: 92.h, right: 118.w),
            child: Text(
              'Kuttichira to Maradu',
              style: TextStyle(
                  color: const Color(0xffffffff).withOpacity(.46),
                  fontSize: 18.sp,
                  fontWeight: FontWeight.normal),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(
              left: 273.w,
              bottom: 99.h,
            ),
            child: Text(
              '78 %',
              style: TextStyle(
                  color: const Color(0xFF000000).withOpacity(0.5),
                  fontSize: 12.sp,
                  fontWeight: FontWeight.normal),
            ),
          ),
        ]),
        onTap: () {
          Navigator.of(context).pushReplacement(MaterialPageRoute(
              builder: (context) => Start_Job_Form()));
        },
      );
    }
  );
}

Widget Job_container1() {
  return  Builder(
    builder: (context) {
      return GestureDetector(
        child: Stack(alignment: Alignment.center, children: <Widget>[
          Padding(
            padding: EdgeInsets.only(left: 43.w),
            child: Row(children: [
              Container(
                  width: 306.w,
                  height: 124.h,
                  decoration: BoxDecoration(
                    color: const Color(0xffDD7164).withOpacity(0.35),
                    borderRadius: BorderRadius.circular(13.r),
                  )),
            ]),
          ),
          Padding(
            padding: EdgeInsets.only(left: 43.w),
            child: Row(children: [
              AnimatedContainer(
                  duration: const Duration(seconds: 1),
                  curve: Curves.fastOutSlowIn,
                  alignment: Alignment.bottomLeft,
                  width: 188.w,
                  height: 136.h,
                  decoration: BoxDecoration(
                    color: const Color(0xffDD7164),
                    borderRadius: BorderRadius.circular(13.r),
                  )),
            ]),
          ),
          Padding(
            padding: EdgeInsets.only(top: 46.5.h, right: 225.w),
            child: Text(
              'Job 308',
              style: TextStyle(
                  color: const Color(0xFFFFFFFF),
                  fontSize: 18.sp,
                  fontWeight: FontWeight.normal),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(top: 92.h, right: 95.w),
            child: Text(
              'Koyilandy to Kozhikode',
              style: TextStyle(
                  color: const Color(0xffffffff).withOpacity(.46),
                  fontSize: 18.sp,
                  fontWeight: FontWeight.normal),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(
              left: 273.w,
              bottom: 99.h,
            ),
            child: Text(
              '56 %',
              style: TextStyle(
                  color: const Color(0xFF000000).withOpacity(0.5),
                  fontSize: 12.sp,
                  fontWeight: FontWeight.normal),
            ),
          ),
        ]),
        onTap: () {
          Navigator.of(context).pushReplacement(MaterialPageRoute(
              builder: (context) => Start_Job_Form()));
        },
      );
    }
  );
}


Widget Bottom_data(){
  return  Stack(children: <Widget>[
    Container(
        width: 500.w,
        height: 216.h,
        decoration: BoxDecoration(
          color: const Color(0xffefd2bd),
          borderRadius: BorderRadius.circular(10.r),
        )),
    Padding(padding: EdgeInsets.only(left: 35.w,top: 52.h),
      child: Text(
        'Items shiped from inventry, please\nupdate once collected\n        ',
        style: TextStyle(
            color: const Color(0xBA000000),
            fontSize: 18.sp,
            fontWeight: FontWeight.w400),
      ),
    ),

    Padding(padding: EdgeInsets.only(left: 24.w,top: 111.h),

        child: Image.asset('assets/images/Line.jpg',width: 332.w,height: 1.h,)),
    Padding(padding: EdgeInsets.only(
        left: 35.w,top: 120.h
    ),
      child: Text(
        'Quality inspection pending on\nKuttichira to Maradu.         ',
        style: TextStyle(
            color: const Color(0xBA000000),
            fontSize: 18.sp,
            fontWeight: FontWeight.w400),
      ),
    ),
  ]);
}