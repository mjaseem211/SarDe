import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:form_field_validator/form_field_validator.dart';
import 'package:image_picker/image_picker.dart';

import '../../../../api/api.dart';
import '../../../../services/prefs.dart';

// import 'package:sarde/screens/Job_Main/Quality_Check/Add_new_Quality/Edge_alignment_drop_down.dart';
// import 'package:sarde/screens/Job_Main/Quality_Check/Add_new_Quality/location_dropdown.dart';
// import 'package:sarde/screens/Job_Main/Quality_Check/Add_new_Quality/thickness_dropdown.dart';

// ignore: camel_case_types
class dialogue_box extends StatefulWidget {
  final ValueChanged<List<dynamic>> dataCallback;

  const dialogue_box({Key? key, required this.dataCallback}) : super(key: key);

  @override
  State<dialogue_box> createState() => _dialogue_boxState();
}

// ignore: camel_case_types
class _dialogue_boxState extends State<dialogue_box> {
  final TextEditingController locationController = TextEditingController();
  final TextEditingController thicknessController = TextEditingController();
  final TextEditingController edgeAlignmentController = TextEditingController();
  final TextEditingController commentController = TextEditingController();
  final _addQualityCheck = GlobalKey<FormState>();

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
                    key: _addQualityCheck,
                    child: Stack(
                      clipBehavior: Clip.none,
                      children: <Widget>[
                        Container(
                          width: 356.w,
                          height: 607.h,
                          decoration: BoxDecoration(
                            border: Border.all(
                              color: const Color(0xffDD7164),
                              width: 2.w,
                            ),
                            borderRadius: BorderRadius.circular(8.r),
                            color: Colors.white,
                          ),
                          padding: EdgeInsets.only(
                            left: 25.w,
                            top: 60.h,
                          ),
                          child: Text(
                            "Quality Check",
                            style: TextStyle(
                                color: const Color(0xffDD7164),
                                fontSize: 21.sp,
                                fontWeight: FontWeight.w400),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(left: 25.w, top: 144.h),
                          child: Stack(alignment: Alignment.center, children: [
                            Container(
                              width: 304.w,
                              height: 165.h,
                              decoration: BoxDecoration(
                                color: Colors.grey.withOpacity(0.35),
                                borderRadius: BorderRadius.circular(5.r),
                              ),
                            ),
                            GestureDetector(
                              child: const Icon(
                                Icons.photo_camera_outlined,
                                color: Colors.grey,
                              ),
                              onTap: () => openSheet(context),
                            ),
                          ]),
                        ),
                        Padding(
                          padding: EdgeInsets.only(
                              top: 113.h, left: 29.w, right: 189.w),
                          child: Row(children: [
                            Text(
                              "12.03.21  12.36 pm ",
                              style: TextStyle(
                                  color: const Color(0xff2B3070),
                                  fontSize: 13.sp,
                                  fontWeight: FontWeight.w400),
                            ),
                          ]),
                        ),
                        Padding(
                          padding: EdgeInsets.only(
                              top: 326.h, left: 29.w, right: 27.w),
                          child: SizedBox(
                            width: 304.w,
                            height: 35.h,
                            child: TextFormField(
                              keyboardType: TextInputType.text,
                              // validator: MultiValidator([
                              //   RequiredValidator(
                              //       errorText: "Location is required")
                              // ]),
                              controller: locationController,
                              decoration: InputDecoration(
                                contentPadding:
                                    EdgeInsets.only(left: 19.w, top: 9.h),
                                labelText: 'location',
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

                        // child: const location_drop_down(),
                        // ),
                        Padding(
                          padding: EdgeInsets.only(
                              top: 374.h, left: 29.w, right: 27.w),
                          child: SizedBox(
                            width: 304.w,
                            height: 35.h,
                            child: TextFormField(
                              keyboardType: TextInputType.text,
                              // validator: MultiValidator([
                              //   RequiredValidator(
                              //       errorText: "Location is required")
                              // ]),
                              controller: thicknessController,
                              decoration: InputDecoration(
                                contentPadding:
                                    EdgeInsets.only(left: 19.w, top: 9.h),
                                labelText: 'Thickness',
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
                        //     child: const thickness_drop_down()),
                        Padding(
                          padding: EdgeInsets.only(
                              top: 422.h, left: 29.w, right: 27.w),
                          child: SizedBox(
                            width: 304.w,
                            height: 35.h,
                            child: TextFormField(
                              keyboardType: TextInputType.text,
                              // validator: MultiValidator([
                              //   RequiredValidator(
                              //       errorText: "Edge Alignment is required")
                              // ]),
                              controller: edgeAlignmentController,
                              decoration: InputDecoration(
                                contentPadding:
                                    EdgeInsets.only(left: 19.w, top: 9.h),
                                labelText: 'Edge Alignment',
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
                        //     child: const Edge_alignment_drop_down()),
                        Padding(
                          padding: EdgeInsets.only(
                              top: 467.h, left: 29.w, right: 27.w),
                          child: SizedBox(
                            width: 304.w,
                            height: 70.h,
                            child: TextFormField(
                              keyboardType: TextInputType.text,
                              controller: commentController,
                              decoration: InputDecoration(
                                contentPadding:
                                    EdgeInsets.only(left: 19.w, top: 9.h),
                                labelText: 'Comment',
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
                            top: 556.h,
                          ),
                          child: GestureDetector(
                              child: Container(
                                width: 361.w,
                                height: 51.h,
                                decoration: BoxDecoration(
                                  color: const Color(0xffDD7164),
                                  borderRadius: BorderRadius.circular(4.r),
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
                                if (_addQualityCheck.currentState!.validate()) {
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
                                  final subJobId = await prefs.subJobId;
                                  final userfile = await prefs.userfile;
                                  final response =
                                      await SardeAPI.addNewQualityCheck(
                                          token ?? "",
                                          jobId ?? "",
                                          subJobId ?? "",
                                          userfile ?? "",
                                          locationController.text.trim(),
                                          edgeAlignmentController.text.trim(),
                                          commentController.text.trim(),
                                          thicknessController.text.trim());

                                  ScaffoldMessenger.of(context).showSnackBar(
                                    const SnackBar(
                                        content: Text(
                                            'QualityCheck Added Successfully')),
                                  );
                                  if (response.statusCode == 200) {
                                    widget.dataCallback([
                                      locationController.text.trim(),
                                      edgeAlignmentController.text.trim(),
                                      commentController.text.trim(),
                                      thicknessController.text.trim(),
                                    ]);
                                  }
                                  Navigator.pop(context);
                                }
                              }),
                        ),
                      ],
                    ),
                  ))),
        ),
      ],
    );
  }
}

Future<String> pickTheImage(bool isCamera) async {
  final ImagePicker _picker = ImagePicker();

  XFile? result;

  if (isCamera) {
    result = await _picker.pickImage(source: ImageSource.camera);
  } else {
    result = await _picker.pickImage(source: ImageSource.gallery);
  }

  if (result == null) {
// user cancelled the selection

  }

  return result!.path;
}

void openSheet(BuildContext context) {
  showModalBottomSheet(
    context: context,
    builder: (context) {
      return const OptionsList();
    },
  );
}

class OptionsList extends StatelessWidget {
  const OptionsList({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView(
      shrinkWrap: true,
      children: [
        ListTile(
          leading: const Icon(Icons.camera),
          title: const Text('Camera'),
          onTap: () {
            Navigator.pop(context);
            pickTheImage(true);
          },
        ),
        ListTile(
          leading: const Icon(Icons.photo_library),
          title: const Text('Gallery'),
          onTap: () {
            Navigator.pop(context);
            pickTheImage(false);
          },
        ),
      ],
    );
  }
}
