import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:form_field_validator/form_field_validator.dart';
import 'package:sarde/api/api.dart';

import '../../../services/prefs.dart';

// ignore: camel_case_types
class dialogue_box extends StatefulWidget {
  final ValueChanged<List<dynamic>> dataCallback;

  const dialogue_box({Key? key, required this.dataCallback}) : super(key: key);

  @override
  State<dialogue_box> createState() => _dialogue_boxState();
}

// ignore: camel_case_types
class _dialogue_boxState extends State<dialogue_box> {
  final TextEditingController itemController = TextEditingController();
  final TextEditingController quantityController = TextEditingController();
  final TextEditingController conditionController = TextEditingController();
  final _addToolsFormKey = GlobalKey<FormState>();

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
                    key: _addToolsFormKey,
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
                            left: 25.w,
                            top: 60.h,
                          ),
                          child: Text(
                            "Add Tools",
                            style: TextStyle(
                                color: const Color(0xffDD7164),
                                fontSize: 21.sp,
                                fontWeight: FontWeight.w400),
                          ),
                        ),
                        // Padding(
                        //   padding:
                        //       EdgeInsets.only(top: 101.h, left: 16.w, right: 19.w),
                        //   child: const item_drop_down(),
                        Padding(
                          padding: EdgeInsets.only(
                            top: 101.h,
                            left: 16.w,
                          ),
                          child: SizedBox(
                            width: 321.w,
                            height: 35.h,
                            child: TextFormField(
                              keyboardType: TextInputType.text,
                              validator: MultiValidator([
                                PatternValidator(r'^[a-zA-Z0-9 ]*$',
                                    errorText: 'Only use alphanumeric'),
                                RequiredValidator(errorText: "Item is required")
                              ]),
                              controller: itemController,
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
                              top: 148.h, left: 16.w, right: 222.w),
                          child: SizedBox(
                            width: 118.w,
                            height: 35.h,
                            child: TextFormField(
                              validator: MultiValidator([
                                PatternValidator(r'^[0-9 ]*$',
                                    errorText: 'Only use numbers'),
                                RequiredValidator(
                                    errorText: "Quantity is required")
                              ]),
                              keyboardType: TextInputType.number,
                              controller: quantityController,
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
                                      BorderRadius.all(Radius.circular(10.r)),
                                  borderSide: BorderSide(
                                      width: 1.5.w, color: Colors.blue),
                                ),
                              ),
                            ),
                          ),
                        ),
                        // Padding(
                        //     padding: EdgeInsets.only(
                        //         left: 149.w, top: 148.h, right: 19.w),
                        //     child: const Condition_drop_down()),

                        Padding(
                          padding: EdgeInsets.only(
                            top: 148.h,
                            left: 150.w,
                          ),
                          child: SizedBox(
                            width: 188.w,
                            height: 35.h,
                            child: TextFormField(
                              validator: MultiValidator([
                                PatternValidator(r'^[a-zA-Z0-9 ]*$',
                                    errorText: 'Only Alphanumeric'),
                                RequiredValidator(
                                    errorText: "Condition is required")
                              ]),
                              keyboardType: TextInputType.number,
                              controller: conditionController,
                              decoration: InputDecoration(
                                contentPadding: EdgeInsets.only(
                                  left: 9.w,
                                ),
                                labelText: 'Condition',
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
                              if (_addToolsFormKey.currentState!.validate()) {
                                // If the form is valid, display a snackbar. In the real world,
                                // you'd often call a server or save the information in a database.
                                ScaffoldMessenger.of(context).showSnackBar(
                                  const SnackBar(
                                      content: Text('Processing Data')),
                                );
                                final prefs =
                                    await SardePreferences.getInstance();
                                final token = await prefs.token;
                                final response = await SardeAPI.addTools(
                                    token ?? "",
                                    itemController.text.trim(),
                                    quantityController.text.trim(),
                                    conditionController.text.trim() ?? "");
                                ScaffoldMessenger.of(context).showSnackBar(
                                  SnackBar(content: Text('${response.result}')),
                                );
                                if (response.statusCode == 200) {
                                  widget.dataCallback([
                                    itemController.text.trim() ?? "",
                                    quantityController.text.trim() ?? "",
                                    conditionController.text.trim() ?? ""
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
