// ignore_for_file: camel_case_types

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Stud_Fixing_inventory_dialoguebox extends StatefulWidget {
  const Stud_Fixing_inventory_dialoguebox({Key? key}) : super(key: key);

  @override
  State<Stud_Fixing_inventory_dialoguebox> createState() =>
      _Stud_Fixing_inventory_dialogueboxState();
}

class _Stud_Fixing_inventory_dialogueboxState
    extends State<Stud_Fixing_inventory_dialoguebox> {
  @override
  Widget build(BuildContext context) {
    return Row(mainAxisAlignment: MainAxisAlignment.center, children: [
      Padding(
        padding: EdgeInsets.only(left: 52.5.w, top: 33.h),
        child: GestureDetector(
          child: Stack(alignment: Alignment.center, children: [
            Container(
              height: 75.h,
              width: 75.w,
              color: Colors.white,
            ),
            Image.asset(
              'assets/images/plus_button.png',
              height: 20.h,
              width: 20.w,
            ),
          ]),
          onTap: () {
            showDialog(
                context: context,
                builder: (_) => Dialog(
                    backgroundColor: Colors.transparent,
                    insetPadding: EdgeInsets.only(left: 17.w, right: 17.w),
                    child: Stack(
                      clipBehavior: Clip.none,
                      children: <Widget>[
                        Container(
                          width: 361.w,
                          height: 183.h,
                          decoration: BoxDecoration(
                            border: Border.all(
                              color: const Color(0xffDD7164),
                              width: 2.w,
                            ),
                            borderRadius: BorderRadius.circular(8.r),
                            color: Colors.white,
                          ),
                          padding: EdgeInsets.only(
                              left: 25.w, top: 44.h, right: 202.w),
                          child: Text(
                            "Add Material",
                            style: TextStyle(
                                color: const Color(0xffDD7164),
                                fontSize: 21.sp,
                                fontWeight: FontWeight.w400),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(
                            top: 88.h,
                            left: 19.w,
                          ),
                          child: SizedBox(
                            width: 179.w,
                            height: 35.h,
                            child: TextField(
                              decoration: InputDecoration(
                                contentPadding: EdgeInsets.only(
                                  left: 9.w,
                                ),
                                labelText: 'Item',
                                labelStyle: TextStyle(
                                  color:
                                      const Color(0xff000000).withOpacity(0.26),
                                  fontSize: 14.sp,
                                  fontWeight: FontWeight.w400,
                                ),
                                enabledBorder: OutlineInputBorder(
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(4.r)),
                                  borderSide: BorderSide(
                                      color: const Color(0xFFDD7164),
                                      width: 1.w),
                                ),
                                focusedBorder: OutlineInputBorder(
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(4.r)),
                                  borderSide: BorderSide(
                                      width: 1.5.w, color: Colors.blue),
                                ),
                              ),
                            ),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(
                              top: 88.h, left: 221.w, right: 21.w),
                          child: SizedBox(
                            width: 118.w,
                            height: 35.h,
                            child: TextField(
                              decoration: InputDecoration(
                                contentPadding: EdgeInsets.only(
                                  left: 9.w,
                                ),
                                labelText: 'Quantity',
                                labelStyle: TextStyle(
                                  color:
                                      const Color(0xff000000).withOpacity(0.26),
                                  fontSize: 14.sp,
                                  fontWeight: FontWeight.w400,
                                ),
                                enabledBorder: OutlineInputBorder(
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(4.r)),
                                  borderSide: BorderSide(
                                      color: const Color(0xFFDD7164),
                                      width: 1.w),
                                ),
                                focusedBorder: OutlineInputBorder(
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(4.r)),
                                  borderSide: BorderSide(
                                      width: 1.5.w, color: Colors.blue),
                                ),
                              ),
                            ),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(
                            top: 139.h,
                          ),
                          child: GestureDetector(
                            child: Container(
                              width: 361.w,
                              height: 51.h,
                              decoration: BoxDecoration(
                                color: const Color(0xffDD7164),
                                borderRadius: BorderRadius.circular(4.r),
                                image: const DecorationImage(
                                  alignment: Alignment(.9, -.1),
                                  image: AssetImage(
                                    'assets/images/forward_arrow.png',
                                  ),
                                ),
                              ),
                              child: Padding(
                                  padding:
                                      EdgeInsets.only(left: 251.w, top: 11.h),
                                  child: Text(
                                    'Add',
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontWeight: FontWeight.w400,
                                        fontSize: 18.sp),
                                  )),
                            ),
                            onTap: () {
                              Navigator.pop(context);
                            },
                          ),
                        ),
                      ],
                    )));
          },
        ),
      ),
      SizedBox(
        width: 106.w,
      ),
      Padding(
        padding: EdgeInsets.only(top: 46.7.h, right: 78.5.w),
        child: GestureDetector(
          child: Stack(alignment: Alignment.center, children: [
            Container(
              height: 75.h,
              width: 75.w,
              color: Colors.white,
            ),
            Image.asset(
              'assets/images/Subtract.png',
              height: 4.h,
              width: 26.w,
            ),
          ]),
          onTap: () {
            showDialog(
                context: context,
                builder: (_) => Dialog(
                    backgroundColor: Colors.transparent,
                    insetPadding: EdgeInsets.only(left: 17.w, right: 17.w),
                    child: Stack(
                      clipBehavior: Clip.none,
                      children: <Widget>[
                        Container(
                          width: 361.w,
                          height: 183.h,
                          decoration: BoxDecoration(
                            border: Border.all(
                              color: const Color(0xffDD7164),
                              width: 2.w,
                            ),
                            borderRadius: BorderRadius.circular(8.r),
                            color: Colors.white,
                          ),
                          padding: EdgeInsets.only(
                              left: 25.w, top: 44.h, right: 180.w),
                          child: Text(
                            "Material Usage",
                            style: TextStyle(
                                color: const Color(0xffDD7164),
                                fontSize: 21.sp,
                                fontWeight: FontWeight.w400),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(
                            top: 88.h,
                            left: 19.w,
                          ),
                          child: SizedBox(
                            width: 179.w,
                            height: 35.h,
                            child: TextField(
                              decoration: InputDecoration(
                                contentPadding: EdgeInsets.only(
                                  left: 9.w,
                                ),
                                labelText: 'Item',
                                labelStyle: TextStyle(
                                  color:
                                      const Color(0xff000000).withOpacity(0.26),
                                  fontSize: 14.sp,
                                  fontWeight: FontWeight.w400,
                                ),
                                enabledBorder: OutlineInputBorder(
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(4.r)),
                                  borderSide: BorderSide(
                                      color: const Color(0xFFDD7164),
                                      width: 1.w),
                                ),
                                focusedBorder: OutlineInputBorder(
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(4.r)),
                                  borderSide: BorderSide(
                                      width: 1.5.w, color: Colors.blue),
                                ),
                              ),
                            ),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(
                              top: 88.h, left: 221.w, right: 21.w),
                          child: SizedBox(
                            width: 118.w,
                            height: 35.h,
                            child: TextField(
                              decoration: InputDecoration(
                                contentPadding: EdgeInsets.only(
                                  left: 9.w,
                                ),
                                labelText: 'Quantity',
                                labelStyle: TextStyle(
                                  color:
                                      const Color(0xff000000).withOpacity(0.26),
                                  fontSize: 14.sp,
                                  fontWeight: FontWeight.w400,
                                ),
                                enabledBorder: OutlineInputBorder(
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(4.r)),
                                  borderSide: BorderSide(
                                      color: const Color(0xFFDD7164),
                                      width: 1.w),
                                ),
                                focusedBorder: OutlineInputBorder(
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(4.r)),
                                  borderSide: BorderSide(
                                      width: 1.5.w, color: Colors.blue),
                                ),
                              ),
                            ),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(
                            top: 139.h,
                          ),
                          child: GestureDetector(
                            child: Container(
                              width: 361.w,
                              height: 51.h,
                              decoration: BoxDecoration(
                                color: const Color(0xffDD7164),
                                borderRadius: BorderRadius.circular(4.r),
                                image: const DecorationImage(
                                  alignment: Alignment(.9, -.1),
                                  image: AssetImage(
                                    'assets/images/forward_arrow.png',
                                  ),
                                ),
                              ),
                              child: Padding(
                                  padding:
                                      EdgeInsets.only(left: 251.w, top: 11.h),
                                  child: Text(
                                    'Add',
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontWeight: FontWeight.w400,
                                        fontSize: 18.sp),
                                  )),
                            ),
                            onTap: () {
                              Navigator.pop(context);
                            },
                          ),
                        ),
                      ],
                    )));
          },
        ),
      ),
    ]);
  }
}
