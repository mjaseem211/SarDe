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
  final TextEditingController expenseController = TextEditingController();
  final TextEditingController amtController = TextEditingController();
  final TextEditingController referenceController = TextEditingController();
  final _addExpenseFormKey = GlobalKey<FormState>();

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
                    key: _addExpenseFormKey,
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
                            "Add Expence",
                            style: TextStyle(
                                color: const Color(0xffDD7164),
                                fontSize: 21.sp,
                                fontWeight: FontWeight.w400),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(
                              top: 101.h, left: 16.w, right: 19.w),
                          child: SizedBox(
                            width: 321.w,
                            height: 35.h,
                            child: TextFormField(
                              keyboardType: TextInputType.text,
                              // validator: MultiValidator([
                              //   PatternValidator(r'^[a-zA-Z0-9 ]*$',
                              //       errorText: 'Only use alphabets'),
                              //   RequiredValidator(
                              //       errorText: "Expense is required")
                              // ]),
                              controller: expenseController,
                              decoration: InputDecoration(
                                contentPadding: EdgeInsets.only(
                                  left: 9.w,
                                ),
                                labelText: 'Expense',
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
                              top: 151.h, left: 16.w, right: 154.w),
                          child: SizedBox(
                            width: 300.w,
                            height: 35.h,
                            child: TextFormField(
                              // validator: MultiValidator([
                              //   PatternValidator(r'^[0-9 ]*$',
                              //       errorText: 'Only use numbers'),
                              //   RequiredValidator(
                              //       errorText: "Amount is required")
                              // ]),
                              keyboardType: TextInputType.number,
                              controller: amtController,
                              decoration: InputDecoration(
                                contentPadding: EdgeInsets.only(
                                  left: 9.w,
                                ),
                                labelText: 'Amount',
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
                              top: 151.h, left: 218.w, right: 19.w),
                          child: SizedBox(
                            width: 119.w,
                            height: 35.h,
                            child: TextFormField(
                              controller: referenceController,
                              decoration: InputDecoration(
                                contentPadding: EdgeInsets.only(
                                  left: 9.w,
                                ),
                                labelText: 'Reference',
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
                              if (_addExpenseFormKey.currentState!.validate()) {
                                // If the form is valid, display a snackbar. In the real world,
                                // you'd often call a server or save the information in a database.
                                ScaffoldMessenger.of(context).showSnackBar(
                                  const SnackBar(
                                      content: Text('Processing Data')),
                                );
                                final prefs =
                                    await SardePreferences.getInstance();
                                final token = prefs.token;
                                final jobId = await prefs.jobId;
                                final response = await SardeAPI.addExpense(
                                    token ?? "",
                                    jobId ?? "",
                                    expenseController.text.trim(),
                                    amtController.text.trim(),
                                    referenceController.text.trim());
                                ScaffoldMessenger.of(context).showSnackBar(
                                  const SnackBar(
                                      content:
                                          Text('Expense Added Successfully')),
                                );
                                //   SnackBar(content: Text('${response.result}')),
                                // );
                                if (response.statusCode == 200) {
                                  widget.dataCallback([
                                    expenseController.text.trim(),
                                    amtController.text.trim(),
                                    referenceController.text.trim(),
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
