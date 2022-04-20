import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:sarde/screens/home.dart';
class HomeButton extends StatelessWidget {



  @override
  Widget build(BuildContext context) {
    return Stack(alignment: Alignment.bottomCenter, children: [
      Padding(
        padding: EdgeInsets.only(
            top: 158.h, left: 159.w, right: 167.w, bottom: 71.h),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              child: GestureDetector(
                child: Text(
                  "Home",
                  style: TextStyle(
                    color: Color(0xFF000000),
                    fontSize: 22.sp,
                    fontWeight: FontWeight.w400,
                  ),
                ),
                onTap: () {
                  Navigator.of(context).pushReplacement(
                      MaterialPageRoute(builder: (context) => Home()));
                },
              ),
            ),
          ],
        ),
      ),
    ]);


  }
}


Widget Success (){
  return Stack(
      alignment: Alignment.center,

      children: [
        Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children:[ Container(

              height: 350.h,
              width: 320.w,
              decoration: BoxDecoration(color:const Color(0xFF47FF4F).withOpacity(0.13),borderRadius: BorderRadius.circular(12.r)),


            ),
            ]  ),
        Padding(padding: EdgeInsets.only(left: 121.w,right: 111.w),
          child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  alignment: Alignment.center,
                  child:  Image.asset("assets/images/success.png",
                    height: 96.h,
                    width: 96.w,),
                ),  ]),
        ),

        Padding(padding: EdgeInsets.only(top:209.h,left: 75.w,right: 75.w),
          child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  alignment: Alignment.center,
                  child:  Text("Good Job",
                      style:TextStyle( color:Color(0XFF52972A),fontWeight: FontWeight.w400,fontSize: 35.sp, )
                  ),
                ),  ]),
        ),
        Padding(padding: EdgeInsets.only(top:264.h,left: 44.w,right: 43.w),
          child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  alignment: Alignment.center,
                  child:  Text("Job 303 Kuttichira to Maradu day 21.03.21 Completed",
                      style:TextStyle( color:Color(0XFF2B3070).withOpacity(.7),fontWeight: FontWeight.w400,fontSize: 9.sp, )
                  ),
                ),  ]),
        ),
      ]);
}