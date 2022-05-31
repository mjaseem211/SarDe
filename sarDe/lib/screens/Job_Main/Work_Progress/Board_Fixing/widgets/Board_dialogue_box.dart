// ignore_for_file: camel_case_types

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:form_field_validator/form_field_validator.dart';

import '../../../../../api/api.dart';
import '../../../../../services/prefs.dart';

class Board_Fixing_dialoguebox extends StatefulWidget {
  final ValueChanged<List<dynamic>> dataCallback;

  const Board_Fixing_dialoguebox({Key? key, required this.dataCallback})
      : super(key: key);

  @override
  State<Board_Fixing_dialoguebox> createState() =>
      _Board_Fixing_dialogueboxState();
}

class _Board_Fixing_dialogueboxState extends State<Board_Fixing_dialoguebox> {
  final TextEditingController itemdescriptionController = TextEditingController();
  final TextEditingController noController = TextEditingController();
  final TextEditingController lengthController = TextEditingController();
  final TextEditingController widthController = TextEditingController();
  final TextEditingController metersqrController = TextEditingController();
  final _addboardworkprogress = GlobalKey<FormState>();

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
                  child: Form(
                    autovalidateMode: AutovalidateMode.always,
                    key: _addboardworkprogress,
                    child: Stack(
                      clipBehavior: Clip.none,
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
                              left: 25.w, top: 59.h, bottom: 156.h),
                          child: Text(
                            "Add Work Progress",
                            style: TextStyle(
                                color: const Color(0xffDD7164),
                                fontSize: 21.sp,
                                fontWeight: FontWeight.w400),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(
                              top: 101.h, left: 16.w, right: 109.w),
                          child: SizedBox(
                            width: 231.w,
                            height: 35.h,
                            child: TextFormField(
                              keyboardType: TextInputType.text,
                              validator: MultiValidator([
                                RequiredValidator(
                                    errorText: "Item Description is required")
                              ]),
                              controller: itemdescriptionController,
                              decoration: InputDecoration(
                                contentPadding: EdgeInsets.only(
                                  left: 9.w,
                                ),
                                labelText: 'Item Description',
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
                              top: 101.h, left: 272.w, right: 18.w),
                          child: SizedBox(
                            width: 66.w,
                            height: 35.h,
                            child: TextFormField(
                              validator: MultiValidator([
                                PatternValidator(r'^[0-9 ]*$',
                                    errorText: 'Only use numbers'),
                                RequiredValidator(errorText: "No is required")
                              ]),
                              keyboardType: TextInputType.number,
                              controller: noController,
                              decoration: InputDecoration(
                                contentPadding: EdgeInsets.only(
                                  left: 9.w,
                                ),
                                labelText: 'No',
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
                              top: 151.h, left: 16.w, right: 147.w),
                          child: SizedBox(
                            width: 119.w,
                            height: 35.h,
                            child: TextFormField(
                              validator: MultiValidator([
                                PatternValidator(r'^[0-9,.]*$',
                                    errorText: 'Only use numbers'),
                                RequiredValidator(
                                    errorText: "Length is required")
                              ]),
                              keyboardType: TextInputType.number,
                              controller: lengthController,
                              decoration: InputDecoration(
                                contentPadding: EdgeInsets.only(
                                  left: 9.w,
                                ),
                                labelText: 'Length',
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
                              top: 151.h, left: 145.w, right: 19.w),
                          child: SizedBox(
                            width: 119.w,
                            height: 35.h,
                            child: TextFormField(
                              validator: MultiValidator([
                                PatternValidator(r'^[0-9,. ]*$',
                                    errorText: 'Only use numbers'),
                                RequiredValidator(
                                    errorText: "Width is required")
                              ]),
                              keyboardType: TextInputType.number,
                              controller: widthController,
                              decoration: InputDecoration(
                                contentPadding: EdgeInsets.only(
                                  left: 9.w,
                                ),
                                labelText: 'Width',
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
                            top: 151.h,
                            left: 275.w,
                          ),
                          child: SizedBox(
                            width: 66.w,
                            height: 35.h,
                            child: TextFormField(
                              validator: MultiValidator([
                                PatternValidator(r'^[0-9,. ]*$',
                                    errorText: 'Only use numbers'),
                                RequiredValidator(
                                  errorText: "Meter Sqr is required",
                                )
                              ]),
                              keyboardType: TextInputType.number,
                              controller: metersqrController,
                              decoration: InputDecoration(
                                contentPadding: EdgeInsets.only(
                                  left: 9.w,
                                ),
                                labelText: 'Meter Sqr',
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
                            onTap: () async {
                              if (_addboardworkprogress.currentState!
                                  .validate()) {
                                // If the form is valid, display a snackbar. In the real world,
                                // you'd often call a server or save the information in a database.
                                ScaffoldMessenger.of(context).showSnackBar(
                                  const SnackBar(
                                      content: Text('Processing Data')),
                                );
                                final prefs =
                                    await SardePreferences.getInstance();
                                final token = await prefs.token;
                                final response =
                                    await SardeAPI.addBoardFixingworkprogress(
                                        token ?? "",
                                        itemdescriptionController.text.trim(),
                                        noController.text.trim(),
                                        lengthController.text.trim(),
                                        widthController.text.trim(),
                                        metersqrController.text.trim() ?? "");
                                ScaffoldMessenger.of(context).showSnackBar(
                                  SnackBar(content: Text('${response.result}')),
                                );
                                if (response.statusCode == 200) {
                                  widget.dataCallback([
                                    itemdescriptionController.text.trim() ?? "",
                                    noController.text.trim() ?? "",
                                    lengthController.text.trim() ?? "",
                                    widthController.text.trim() ?? "",
                                    metersqrController.text.trim() ?? ""
                                  ]);
                                }

                                Navigator.pop(context);
                              }
                            },
                          ),
                        ),
                      ],
                    ),
                  ))),
        ),
      ],
    );
  }
}
