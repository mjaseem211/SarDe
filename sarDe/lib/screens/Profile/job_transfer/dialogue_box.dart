import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:sarde/screens/Profile/job_transfer/job_drop_down.dart';
import 'package:sarde/screens/Profile/job_transfer/sub_job_drop_down.dart';
import 'package:sarde/screens/Profile/job_transfer/type_drop_down.dart';

// ignore: camel_case_types
class dialogue_box extends StatefulWidget {
  const dialogue_box({Key? key}) : super(key: key);

  @override
  State<dialogue_box> createState() => _dialogue_boxState();
}

// ignore: camel_case_types
class _dialogue_boxState extends State<dialogue_box> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      child: Text(
        'New trasfer',
        style: TextStyle(
          color: const Color(0xff2B3070),
          fontWeight: FontWeight.w400,
          fontSize: 18.sp,
        ),
      ),
      onTap: () => showDialog(
          context: context,
          builder: (_) => Dialog(
              backgroundColor: Colors.transparent,
              insetPadding: EdgeInsets.only(left: 17.w, right: 17.w),
              child: Stack(
                clipBehavior: Clip.none, children: <Widget>[
                  Container(
                    width: 356.w,
                    height: 368.h,
                    decoration: BoxDecoration(
                      border: Border.all(
                        color: const Color(0xffDD7164),
                        width: 2.w,
                      ),
                      borderRadius: BorderRadius.circular(8.r),
                      color: Colors.white,
                    ),
                    padding: EdgeInsets.only(
                        left: 25.w, top: 59.h, bottom: 283.h),
                    child: Text(
                      "Job to Job Transfer",
                      style: TextStyle(
                          color: const Color(0xffDD7164),
                          fontSize: 21.sp,
                          fontWeight: FontWeight.w400),
                    ),
                  ),
                  Padding(
                      padding:
                          EdgeInsets.only(top: 101.h, left: 16.w,),
                      child: const type_drop_down()),
                  Padding(
                      padding:
                          EdgeInsets.only(left: 16.w, top: 151.h, ),
                      child: const job_drop_down()),
                  Padding(
                      padding:
                          EdgeInsets.only(top: 151.h, left: 138.w, ),
                      child: const sub_job_drop_down()),
                  Padding(
                    padding:
                        EdgeInsets.only(top: 205.h, left: 16.w, ),
                    child: SizedBox(
                      width: 163.w,
                      height: 35.h,
                      child: TextField(
                        decoration: InputDecoration(
                          contentPadding: EdgeInsets.only(
                            left: 9.w,
                          ),
                          labelText: 'Item',
                          labelStyle: TextStyle(
                            color: const Color(0xff000000).withOpacity(0.26),
                            fontSize: 14.sp,
                            fontWeight: FontWeight.w400,
                          ),
                          enabledBorder: OutlineInputBorder(
                            borderRadius:
                                BorderRadius.all(Radius.circular(4.r)),
                            borderSide: BorderSide(
                                color: const Color(0xFFDD7164), width: 1.w),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderRadius:
                                BorderRadius.all(Radius.circular(10.r)),
                            borderSide:
                                BorderSide(width: 1.5.w, color: Colors.blue),
                          ),
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding:
                        EdgeInsets.only(top: 205.h, left: 196.w, right: 19.w),
                    child: SizedBox(
                      width: 141.w,
                      height: 35.h,
                      child: TextField(
                        decoration: InputDecoration(
                          contentPadding: EdgeInsets.only(
                            left: 9.w,
                          ),
                          labelText: 'Quantity',
                          labelStyle: TextStyle(
                            color: const Color(0xff000000).withOpacity(0.26),
                            fontSize: 14.sp,
                            fontWeight: FontWeight.w400,
                          ),
                          enabledBorder: OutlineInputBorder(
                            borderRadius:
                                BorderRadius.all(Radius.circular(4.r)),
                            borderSide: BorderSide(
                                color: const Color(0xFFDD7164), width: 1.w),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderRadius:
                                BorderRadius.all(Radius.circular(10.r)),
                            borderSide:
                                BorderSide(width: 1.5.w, color: Colors.blue),
                          ),
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding:
                        EdgeInsets.only(top: 259.h, left: 16.w, ),
                    child: SizedBox(
                      width: 163.w,
                      height: 35.h,
                      child: TextField(
                        decoration: InputDecoration(
                          contentPadding: EdgeInsets.only(
                            left: 9.w,
                          ),
                          labelText: 'Transfer to job',
                          labelStyle: TextStyle(
                            color: const Color(0xff000000).withOpacity(0.26),
                            fontSize: 14.sp,
                            fontWeight: FontWeight.w400,
                          ),
                          enabledBorder: OutlineInputBorder(
                            borderRadius:
                                BorderRadius.all(Radius.circular(4.r)),
                            borderSide: BorderSide(
                                color: const Color(0xFFDD7164), width: 1.w),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderRadius:
                                BorderRadius.all(Radius.circular(10.r)),
                            borderSide:
                                BorderSide(width: 1.5.w, color: Colors.blue),
                          ),
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(
                      top: 270.h,
                      left: 207.w,
                    ),
                    child: Text(
                      'Lukman',
                      style: TextStyle(
                        color: const Color(0xff000000).withOpacity(0.26),
                        fontSize: 14.sp,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(
                      top: 317.h,
                    ),
                    child: GestureDetector(
                      child: Container(alignment: Alignment.center,
                        width: 361.w,
                        height: 51.h,
                        decoration: BoxDecoration(
                          color: const Color(0xffDD7164),
                          borderRadius: BorderRadius.circular(4.r),
                        ),
                        child: Padding(
                            padding: EdgeInsets.only(left: 204.w, ),
                            child: Text(
                              'Initiate trasfer',
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
              ))),
    );
  }
}
