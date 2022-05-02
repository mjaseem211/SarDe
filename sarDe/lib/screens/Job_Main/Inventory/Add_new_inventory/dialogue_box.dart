import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:sarde/screens/Job_Main/Inventory/Add_new_inventory/drop_down.dart';

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
    return Row(children: [
      Padding(
        padding: EdgeInsets.only(left: 90.w, top: 33.h),
        child: Column(
          children: [
            GestureDetector(
              child: Image.asset(
                'assets/images/plus_button.png',
                height: 20.h,
                width: 20.w,
              ),
              onTap: () {
                showDialog(
                    context: context,
                    builder: (_) => Dialog(
                        backgroundColor: Colors.transparent,
                        insetPadding: EdgeInsets.only(left: 17.w, right: 17.w),
                        child: Stack(
                          overflow: Overflow.visible,
                          alignment: Alignment.center,
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
                                    top: 88.h, left: 21.w, right: 161.w),
                                child: const drop_down()),
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
                                      color: const Color(0xff000000)
                                          .withOpacity(0.26),
                                      fontSize: 14.sp,
                                      fontWeight: FontWeight.w400,
                                    ),
                                    enabledBorder: OutlineInputBorder(
                                      borderRadius: BorderRadius.all(
                                          Radius.circular(4.r)),
                                      borderSide: BorderSide(
                                          color: const Color(0xFFDD7164),
                                          width: 1.w),
                                    ),
                                    focusedBorder: OutlineInputBorder(
                                      borderRadius: BorderRadius.all(
                                          Radius.circular(4.r)),
                                      borderSide: BorderSide(
                                          width: 1.5.w, color: Colors.blue),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.only(
                                top: 214.h,
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
                                      padding: EdgeInsets.only(
                                          left: 251.w, top: 11.h),
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
          ],
        ),
      ),
      SizedBox(
        width: 106.w,
      ),
      Padding(
        padding: EdgeInsets.only(top: 46.7.h, right: 116.w),
        child: Column(
          children: [
            GestureDetector(
              child: Image.asset(
                'assets/images/Subtract.png',
                height: 4.h,
                width: 26.w,
              ),
              onTap: () {
                showDialog(
                    context: context,
                    builder: (_) => Dialog(
                        backgroundColor: Colors.transparent,
                        insetPadding: EdgeInsets.only(left: 17.w, right: 17.w),
                        child: Stack(
                          overflow: Overflow.visible,
                          alignment: Alignment.center,
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
                                    top: 88.h, left: 21.w, right: 161.w),
                                child: const drop_down()),
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
                                      color: const Color(0xff000000)
                                          .withOpacity(0.26),
                                      fontSize: 14.sp,
                                      fontWeight: FontWeight.w400,
                                    ),
                                    enabledBorder: OutlineInputBorder(
                                      borderRadius: BorderRadius.all(
                                          Radius.circular(4.r)),
                                      borderSide: BorderSide(
                                          color: const Color(0xFFDD7164),
                                          width: 1.w),
                                    ),
                                    focusedBorder: OutlineInputBorder(
                                      borderRadius: BorderRadius.all(
                                          Radius.circular(4.r)),
                                      borderSide: BorderSide(
                                          width: 1.5.w, color: Colors.blue),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.only(
                                top: 214.h,
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
                                      padding: EdgeInsets.only(
                                          left: 251.w, top: 11.h),
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
          ],
        ),
      ),
    ]);
  }
}