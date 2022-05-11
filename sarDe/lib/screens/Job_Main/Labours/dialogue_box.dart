import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:sarde/screens/Job_Main/Labours/drop_down.dart';

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
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        GestureDetector(
          child: Image.asset(
            'assets/images/plus_button.png',
            height: 32.h,
            width: 30.w,
          ),
          onTap: () => showDialog(
              context: context,
              builder: (_) => Dialog(
                  backgroundColor: Colors.transparent,
                  insetPadding: EdgeInsets.only(left: 17.w, right: 17.w),
                  child: Stack(
                    overflow: Overflow.visible,
                    children: <Widget>[
                      Container(
                        width: 356.w,
                        height: 248.h,
                        decoration: BoxDecoration(
                          border: Border.all(
                            color: const Color(0xffDD7164),
                            width: 2.w,
                          ),
                          borderRadius: BorderRadius.circular(8.r),
                          color: Colors.white,
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(
                            left: 25.w, top: 59.h, right: 211.w),
                        child: Text(
                          "Add Labour",
                          style: TextStyle(
                              color: const Color(0xffDD7164),
                              fontSize: 21.sp,
                              fontWeight: FontWeight.w400),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(
                            top: 101.h, left: 16.w, right: 19.w),
                        child: const drop_down(),
                      ),
                      Padding(
                        padding: EdgeInsets.only(
                            top: 151.h, left: 16.w, right: 236.w),
                        child: SizedBox(
                          width: 104.w,
                          height: 35.h,
                          child: TextField(
                            decoration: InputDecoration(
                              contentPadding: EdgeInsets.only(
                                left: 9.w,
                              ),
                              labelText: 'Trade',
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
                                    color: const Color(0xFFDD7164), width: 1.w),
                              ),
                              focusedBorder: OutlineInputBorder(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(10.r)),
                                borderSide: BorderSide(
                                    width: 1.5.w, color: Colors.blue),
                              ),
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(
                            top: 151.h, left: 138.w, right: 127.w),
                        child: SizedBox(
                          width: 91.w,
                          height: 35.h,
                          child: TextField(
                            decoration: InputDecoration(
                              contentPadding: EdgeInsets.only(
                                left: 9.w,
                              ),
                              labelText: 'Type',
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
                                    color: const Color(0xFFDD7164), width: 1.w),
                              ),
                              focusedBorder: OutlineInputBorder(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(10.r)),
                                borderSide: BorderSide(
                                    width: 1.5.w, color: Colors.blue),
                              ),
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(
                            top: 151.h, left: 246.w, right: 19.w),
                        child: SizedBox(
                          width: 91.w,
                          height: 35.h,
                          child: TextField(
                            decoration: InputDecoration(
                              contentPadding: EdgeInsets.only(
                                left: 9.w,
                              ),
                              labelText: 'Hours',
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
                                    color: const Color(0xFFDD7164), width: 1.w),
                              ),
                              focusedBorder: OutlineInputBorder(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(10.r)),
                                borderSide: BorderSide(
                                    width: 1.5.w, color: Colors.blue),
                              ),
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(
                          top: 200.h,
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
                  ))),
        ),
      ],
    );
  }
}
