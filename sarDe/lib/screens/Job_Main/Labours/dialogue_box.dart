import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:form_field_validator/form_field_validator.dart';
import '../../../api/api.dart';
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
  final TextEditingController nameController = TextEditingController();
  final TextEditingController tradeController = TextEditingController();
  final TextEditingController typeController = TextEditingController();
  final TextEditingController hoursController = TextEditingController();
  final _addLaboursFormKey = GlobalKey<FormState>();

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
                    key: _addLaboursFormKey,
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
                            top: 59.h,
                          ),
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
                              top: 151.h, left: 16.w, right: 236.w),
                          child: SizedBox(
                            width: 104.w,
                            height: 35.h,
                            child: TextFormField(
                              keyboardType: TextInputType.text,
                              validator: MultiValidator([
                                PatternValidator(r'^[a-zA-Z0-9 ]*$',
                                    errorText: 'Only use alphanumeric'),
                                RequiredValidator(errorText: "Item is required")
                              ]),
                              controller: tradeController,
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
                        //   padding: EdgeInsets.only(
                        //       top: 101.h, left: 16.w, right: 19.w),
                        //   child: const drop_down(),
                        // ),
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
                                RequiredValidator(errorText: "Name is required")
                              ]),
                              controller: nameController,
                              decoration: InputDecoration(
                                contentPadding: EdgeInsets.only(
                                  left: 9.w,
                                ),
                                labelText: 'Name',
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
                              top: 151.h, left: 138.w, right: 127.w),
                          child: SizedBox(
                            width: 91.w,
                            height: 35.h,
                            child: TextFormField(
                              keyboardType: TextInputType.text,
                              validator: MultiValidator([
                                PatternValidator(r'^[a-zA-Z0-9 ]*$',
                                    errorText: 'Only use alphanumeric'),
                                RequiredValidator(errorText: "Type is required")
                              ]),
                              controller: typeController,
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
                              top: 151.h, left: 246.w, right: 19.w),
                          child: SizedBox(
                            width: 91.w,
                            height: 35.h,
                            child: TextFormField(
                              keyboardType: TextInputType.text,
                              validator: MultiValidator([
                                PatternValidator(r'^[0-9]*$',
                                    errorText: 'Only use numbers'),
                                RequiredValidator(errorText: "Hours is required")
                              ]),
                              controller: hoursController,
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
                              if (_addLaboursFormKey.currentState!.validate()) {
                                // If the form is valid, display a snackbar. In the real world,
                                // you'd often call a server or save the information in a database.
                                ScaffoldMessenger.of(context).showSnackBar(
                                  const SnackBar(
                                      content: Text('Processing Data')),
                                );
                                final prefs =
                                    await SardePreferences.getInstance();
                                final token = prefs.token;
                                final response = await SardeAPI.addLabours(
                                  token ?? "",
                                  nameController.text.trim(),
                                  tradeController.text.trim(),
                                  typeController.text.trim(),
                                  hoursController.text.trim(),
                                );
                                ScaffoldMessenger.of(context).showSnackBar(
                                  SnackBar(content: Text('${response.result}')),
                                );
                                if (response.statusCode == 200) {
                                  widget.dataCallback([
                                    nameController.text.trim(),
                                    tradeController.text.trim(),
                                    typeController.text.trim(),
                                    hoursController.text.trim()
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
