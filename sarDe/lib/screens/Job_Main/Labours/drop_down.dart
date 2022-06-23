// import 'dart:convert';
// import 'package:flutter/material.dart';
// import 'package:flutter_screenutil/flutter_screenutil.dart';
//
// // ignore: camel_case_types
// class drop_down extends StatefulWidget {
//   const drop_down({Key? key}) : super(key: key);
//
//   @override
//   State<drop_down> createState() => _drop_downState();
// }
//
// // ignore: camel_case_types
// class _drop_downState extends State<drop_down> {
//   String? dropdownValue;
//
//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       height: 35.h,
//       width: 321.w,
//       decoration: BoxDecoration(
//           border: Border.all(color: const Color(0xffDD7164), width: 1.w),
//           borderRadius: BorderRadius.circular(4.r)),
//       child: DropdownButton<String>(
//         value: dropdownValue,
//         hint: Padding(
//           padding: EdgeInsets.only(left: 9.w),
//           child: Text(
//             'Name',
//             style: TextStyle(
//               color: const Color(0xff000000).withOpacity(0.26),
//             ),
//           ),
//         ),
//         isExpanded: true,
//         icon: const Icon(
//           Icons.keyboard_arrow_down_outlined,
//           color: Color(0xffDD7164),
//         ),
//         elevation: 16,
//         underline: Container(
//           color: Colors.white,
//         ),
//         style: TextStyle(color: const Color(0xff000000).withOpacity(0.26)),
//         onChanged: (String? newValue) {
//           setState(() {
//             dropdownValue = newValue;
//           });
//         },
//         items: <String>['pradeep', 'lukhman', 'nihal', 'jabir']
//             .map<DropdownMenuItem<String>>((String value) {
//           return DropdownMenuItem<String>(
//             value: value,
//             child: Padding(
//               padding: EdgeInsets.only(left: 19.w),
//               child: Text(
//                 value,
//                 style: TextStyle(
//                   color: const Color(0xff000000).withOpacity(0.26),
//                 ),
//               ),
//             ),
//           );
//         }).toList(),
//       ),
//     );
//   }
// }
