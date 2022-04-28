import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';



Widget title(){
  return Padding(padding: EdgeInsets.only(left: 34.w,top: 257.h,right: 94.w),
    child: Row(
        children:[Text(
          'Pradeep',
          style: TextStyle(
              color:const Color(0xFF2B3070),
              fontSize: 64.sp,
              fontWeight: FontWeight.w400),
        ),
        ] ),
  );
}

Widget subtitle(){
  return  Padding(padding: EdgeInsets.only(left: 39.w,right: 230.w),
    child: Row(

        children:[ Text(
          'Supervisor',
          style: TextStyle(
              color:const Color(0xFFDD7164),
              fontSize: 23.sp,
              fontWeight: FontWeight.w400),
        ),
        ]),
  );
}

Widget Old_Jobs(){
  return  Padding(padding: EdgeInsets.only(left: 34.w,),
    child: Row(
        children:[ TextButton(
          child:  Text(
            'Old Jobes ',
            style: TextStyle(
                color:const Color(0xFF2B3070),
                fontSize: 31.sp,
                fontWeight: FontWeight.w400),
          ),
          onPressed: () {},
        ),
        ]),
  );
}

Widget Job_Transfer() {
  return Padding(padding: EdgeInsets.only(left: 34.w),
    child: Row(
        children: [ TextButton(
          child: Text(
            'Job to Job Transfer',
            style: TextStyle(
                color: const Color(0xFF2B3070),
                fontSize: 31.sp,
                fontWeight: FontWeight.w400),
          ),
          onPressed: () {},
        ),
        ]),
  );
}

Widget About(){

  return  Padding(padding: EdgeInsets.only(left: 34.w),
    child: Row(
        children:[ TextButton(
          child:  Text(
            'About',
            style: TextStyle(
                color:const Color(0xFF2B3070),
                fontSize: 31.sp,
                fontWeight: FontWeight.w400),
          ),
          onPressed: () {},
        ),
        ]),
  );
}