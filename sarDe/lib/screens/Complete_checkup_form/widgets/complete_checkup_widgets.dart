import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

Widget backButton() {
  return Padding(
    padding: EdgeInsets.only(top: 53.h, left: 38.w, right: 344.w),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        GestureDetector(
          child: const Icon(Icons.arrow_back),
        )
      ],
    ),
  );
}

Widget title() {
  return Padding(
    padding: EdgeInsets.only(left: 33.w, right: 44.w),
    child: Row(
      children: [
        Expanded(
          child: Text(
            "Job 303",
            style: TextStyle(
                fontWeight: FontWeight.w400,
                fontSize: 35.sp,
                color: const Color(0xFF2B3070)),
          ),
        ),
        Text(
          "18-09-22",
          style: TextStyle(
              fontWeight: FontWeight.w400,
              fontSize: 22.sp,
              color: const Color(0xFFBC401E)),
        ),
      ],
    ),
  );
}

Widget subTitle() {
  return Padding(
    padding: EdgeInsets.only(left: 33.w, right: 134.w),
    child: Row(
      children: [
        Text(
          "Kuttichira to Maradu",
          style: TextStyle(
            color: const Color(0xFF2B3070).withOpacity(0.7),
            fontSize: 22.sp,
            fontWeight: FontWeight.w400,
          ),
        )
      ],
    ),
  );
}

Widget subTitle2() {
  return Padding(
    padding: EdgeInsets.only(left: 36.w),
    child: Row(
      children: [
        Text(
          "Work Progress",
          style: TextStyle(
            color: const Color(0xFF2B3070),
            fontSize: 20.sp,
            fontWeight: FontWeight.w400,
          ),
        )
      ],
    ),
  );
}

// ignore: non_constant_identifier_names
Widget Heading1() {
  return Padding(
    padding: EdgeInsets.only(right: 62.w, left: 38.w),
    child: Row(
      children: [
        Expanded(
          child: Text(
            "Work Name",
            style: TextStyle(
                fontWeight: FontWeight.w400,
                fontSize: 13.sp,
                color: const Color(0xFF2B3070)),
          ),
        ),
        Expanded(
          child: Text(
            "Today",
            style: TextStyle(
                fontWeight: FontWeight.w400,
                fontSize: 13.sp,
                color: const Color(0xFF2B3070)),
          ),
        ),
        Text(
          "Total",
          style: TextStyle(
              fontWeight: FontWeight.w400,
              fontSize: 13.sp,
              color: const Color(0xFF2B3070)),
        ),
      ],
    ),
  );
}

Widget line() {
  return Padding(
    padding: EdgeInsets.only(left: 36.w, right: 44.w),
    child: Row(
      children: [
        Container(
          height: 2.h,
          width: 310.w,
          decoration: BoxDecoration(
              color: const Color(0xFFD8D4E9),
              borderRadius: BorderRadius.circular(6.r)),
        ),
      ],
    ),
  );
}

// ignore: non_constant_identifier_names
Widget Heading2() {
  return Padding(
    padding: EdgeInsets.only(right: 47.w, left: 38.w),
    child: Row(
      children: [
        Expanded(
          child: Text(
            "Road Marking",
            style: TextStyle(
                fontWeight: FontWeight.w400,
                fontSize: 13.sp,
                color: const Color(0xFFDD7164)),
          ),
        ),
        Expanded(
          child: Text(
            "128 sqm",
            style: TextStyle(
                fontWeight: FontWeight.w400,
                fontSize: 13.sp,
                color: const Color(0xFFDD7164)),
          ),
        ),
        Text(
          "121.8 sqm",
          style: TextStyle(
              fontWeight: FontWeight.w400,
              fontSize: 13.sp,
              color: const Color(0xFFDD7164)),
        ),
      ],
    ),
  );
}

// ignore: non_constant_identifier_names
Widget Heading3() {
  return Padding(
    padding: EdgeInsets.only(right: 54.w, left: 38.w),
    child: Row(
      children: [
        Expanded(
          child: Text(
            "Stud fixing",
            style: TextStyle(
                fontWeight: FontWeight.w400,
                fontSize: 13.sp,
                color: const Color(0xFFDD7164)),
          ),
        ),
        Expanded(
          child: Text(
            "55 nos",
            style: TextStyle(
                fontWeight: FontWeight.w400,
                fontSize: 13.sp,
                color: const Color(0xFFDD7164)),
          ),
        ),
        Text(
          "102 nos",
          style: TextStyle(
              fontWeight: FontWeight.w400,
              fontSize: 13.sp,
              color: const Color(0xFFDD7164)),
        ),
      ],
    ),
  );
}

// ignore: non_constant_identifier_names
Widget Heading4() {
  return Padding(
    padding: EdgeInsets.only(right: 58.w, left: 38.w),
    child: Row(
      children: [
        Expanded(
          child: Text(
            "Board Fixing",
            style: TextStyle(
                fontWeight: FontWeight.w400,
                fontSize: 13.sp,
                color: const Color(0xFFDD7164)),
          ),
        ),
        Expanded(
          child: Text(
            "15 nos",
            style: TextStyle(
                fontWeight: FontWeight.w400,
                fontSize: 13.sp,
                color: const Color(0xFFDD7164)),
          ),
        ),
        Text(
          "26 nos",
          style: TextStyle(
              fontWeight: FontWeight.w400,
              fontSize: 13.sp,
              color: const Color(0xFFDD7164)),
        ),
      ],
    ),
  );
}

// ignore: non_constant_identifier_names
Widget Subtitle3() {
  return Padding(
      padding: EdgeInsets.only(left: 36.w, right: 271.w),
      child: Row(
        children: [
          Text(
            "Expence",
            style: TextStyle(
              color: const Color(0xFF2B3070),
              fontSize: 20.sp,
              fontWeight: FontWeight.w400,
            ),
          )
        ],
      ));
}

// ignore: non_constant_identifier_names
Widget Heading5() {
  return Padding(
    padding: EdgeInsets.only(right: 46.w, left: 36.w),
    child: Row(
      children: [
        Expanded(
          child: Text(
            "Expenses",
            style: TextStyle(
                fontWeight: FontWeight.w400,
                fontSize: 13.sp,
                color: const Color(0xFF2B3070)),
          ),
        ),
        Expanded(
          child: Text(
            "Amount",
            style: TextStyle(
                fontWeight: FontWeight.w400,
                fontSize: 13.sp,
                color: const Color(0xFF2B3070)),
          ),
        ),
        Text(
          "Reference",
          style: TextStyle(
              fontWeight: FontWeight.w400,
              fontSize: 13.sp,
              color: const Color(0xFF2B3070)),
        ),
      ],
    ),
  );
}

// ignore: non_constant_identifier_names
Widget Heading6() {
  return Padding(
    padding: EdgeInsets.only(right: 53.w, left: 36.w),
    child: Row(
      children: [
        Expanded(
          child: Text(
            "Vech Rent",
            style: TextStyle(
                fontWeight: FontWeight.w400,
                fontSize: 13.sp,
                color: const Color(0xFFDD7164)),
          ),
        ),
        Expanded(
          child: Text(
            "1800",
            style: TextStyle(
                fontWeight: FontWeight.w400,
                fontSize: 13.sp,
                color: const Color(0xFFDD7164)),
          ),
        ),
        Text(
          "5 days",
          style: TextStyle(
              fontWeight: FontWeight.w400,
              fontSize: 13.sp,
              color: const Color(0xFFDD7164)),
        ),
      ],
    ),
  );
}

// ignore: non_constant_identifier_names
Widget Heading7() {
  return Padding(
    padding: EdgeInsets.only(right: 40.w, left: 36.w),
    child: Row(
      children: [
        Expanded(
          flex: 11,
          child: Text(
            "Machine Rent",
            style: TextStyle(
                fontWeight: FontWeight.w400,
                fontSize: 13.sp,
                color: const Color(0xFFDD7164)),
          ),
        ),
        Expanded(
          flex: 9,
          child: Text(
            "1000",
            style: TextStyle(
                fontWeight: FontWeight.w400,
                fontSize: 13.sp,
                color: const Color(0xFFDD7164)),
          ),
        ),
        Text(
          "Modern tools",
          style: TextStyle(
              fontWeight: FontWeight.w400,
              fontSize: 13.sp,
              color: const Color(0xFFDD7164)),
        ),
      ],
    ),
  );
}

// ignore: non_constant_identifier_names
Widget Total() {
  return Padding(
    padding: EdgeInsets.only(right: 195.w, left: 88.w),
    child: Row(children: [
      Expanded(
        child: Text(
          "Total",
          style: TextStyle(
              fontWeight: FontWeight.w400,
              fontSize: 13.sp,
              color: const Color(0xFFBC401E)),
        ),
      ),
      Text(
        "2800",
        style: TextStyle(
            fontWeight: FontWeight.w500,
            fontSize: 13.sp,
            color: const Color(0xFFBC401E)),
      ),
    ]),
  );
}

// ignore: non_constant_identifier_names
Widget Subtitle4() {
  return Padding(
      padding: EdgeInsets.only(
        left: 36.w,
      ),
      child: Row(
        children: [
          Text(
            "Labour",
            style: TextStyle(
              color: const Color(0xFF2B3070),
              fontSize: 20.sp,
              fontWeight: FontWeight.w400,
            ),
          )
        ],
      ));
}

// ignore: non_constant_identifier_names
Widget Heading8() {
  return Padding(
    padding: EdgeInsets.only(right: 62.w, left: 36.w),
    child: Row(
      children: [
        Expanded(
          child: Text(
            "Name",
            style: TextStyle(
                fontWeight: FontWeight.w400,
                fontSize: 13.sp,
                color: const Color(0xFF2B3070)),
          ),
        ),
        Expanded(
          child: Text(
            "Trade",
            style: TextStyle(
                fontWeight: FontWeight.w400,
                fontSize: 13.sp,
                color: const Color(0xFF2B3070)),
          ),
        ),
        Expanded(
          child: Text(
            "Type",
            style: TextStyle(
                fontWeight: FontWeight.w400,
                fontSize: 13.sp,
                color: const Color(0xFF2B3070)),
          ),
        ),
        Text(
          "Hours",
          style: TextStyle(
              fontWeight: FontWeight.w400,
              fontSize: 13.sp,
              color: const Color(0xFF2B3070)),
        ),
      ],
    ),
  );
}

// ignore: non_constant_identifier_names
Widget Heading9() {
  return Padding(
    padding: EdgeInsets.only(right: 80.w, left: 36.w),
    child: Row(
      children: [
        Expanded(
          flex: 13,
          child: Text(
            "Rahul",
            style: TextStyle(
                fontWeight: FontWeight.w400,
                fontSize: 13.sp,
                color: const Color(0xFFDD7164)),
          ),
        ),
        Expanded(
          flex: 14,
          child: Text(
            "Rope man",
            style: TextStyle(
                fontWeight: FontWeight.w400,
                fontSize: 13.sp,
                color: const Color(0xFFDD7164)),
          ),
        ),
        Expanded(
          flex: 13,
          child: Text(
            "Sub",
            style: TextStyle(
                fontWeight: FontWeight.w400,
                fontSize: 13.sp,
                color: const Color(0xFFDD7164)),
          ),
        ),
        Text(
          "5",
          style: TextStyle(
              fontWeight: FontWeight.w400,
              fontSize: 13.sp,
              color: const Color(0xFFDD7164)),
        ),
      ],
    ),
  );
}

// ignore: non_constant_identifier_names
Widget Heading10() {
  return Padding(
    padding: EdgeInsets.only(right: 80.w, left: 36.w),
    child: Row(
      children: [
        Expanded(
          child: Text(
            "Vinod",
            style: TextStyle(
                fontWeight: FontWeight.w400,
                fontSize: 13.sp,
                color: const Color(0xFFDD7164)),
          ),
        ),
        Expanded(
          child: Text(
            "Painter ",
            style: TextStyle(
                fontWeight: FontWeight.w400,
                fontSize: 13.sp,
                color: const Color(0xFFDD7164)),
          ),
        ),
        Expanded(
          child: Text(
            "Own",
            style: TextStyle(
                fontWeight: FontWeight.w400,
                fontSize: 13.sp,
                color: const Color(0xFFDD7164)),
          ),
        ),
        Text(
          "8",
          style: TextStyle(
              fontWeight: FontWeight.w400,
              fontSize: 13.sp,
              color: const Color(0xFFDD7164)),
        ),
      ],
    ),
  );
}

// ignore: non_constant_identifier_names
Widget Subtitle5() {
  return Padding(
      padding: EdgeInsets.only(
        left: 36.w,
      ),
      child: Row(
        children: [
          Text(
            "Tools",
            style: TextStyle(
              color: const Color(0xFF2B3070),
              fontSize: 20.sp,
              fontWeight: FontWeight.w400,
            ),
          )
        ],
      ));
}

// ignore: non_constant_identifier_names
Widget Heading11() {
  return Padding(
    padding: EdgeInsets.only(right: 48.w, left: 37.w),
    child: Row(
      children: [
        Expanded(
          child: Text(
            "Item",
            style: TextStyle(
                fontWeight: FontWeight.w400,
                fontSize: 13.sp,
                color: const Color(0xFF2B3070)),
          ),
        ),
        Expanded(
          child: Text(
            "Quantity",
            style: TextStyle(
                fontWeight: FontWeight.w400,
                fontSize: 13.sp,
                color: const Color(0xFF2B3070)),
          ),
        ),
        Text(
          "Condition",
          style: TextStyle(
              fontWeight: FontWeight.w400,
              fontSize: 13.sp,
              color: const Color(0xFF2B3070)),
        ),
      ],
    ),
  );
}

// ignore: non_constant_identifier_names
Widget Heading12() {
  return Padding(
    padding: EdgeInsets.only(right: 61.w, left: 37.w),
    child: Row(
      children: [
        Expanded(
          flex: 10,
          child: Text(
            "Boiler",
            style: TextStyle(
                fontWeight: FontWeight.w400,
                fontSize: 13.sp,
                color: const Color(0xFFDD7164)),
          ),
        ),
        Expanded(
          flex: 8,
          child: Text(
            "2",
            style: TextStyle(
                fontWeight: FontWeight.w400,
                fontSize: 13.sp,
                color: const Color(0xFFDD7164)),
          ),
        ),
        Text(
          "Good",
          style: TextStyle(
              fontWeight: FontWeight.w400,
              fontSize: 13.sp,
              color: const Color(0xFF52972A)),
        ),
      ],
    ),
  );
}

// ignore: non_constant_identifier_names
Widget Heading13() {
  return Padding(
    padding: EdgeInsets.only(right: 55.w, left: 37.w),
    child: Row(
      children: [
        Expanded(
          flex: 8,
          child: Text(
            "Spanner 12",
            style: TextStyle(
                fontWeight: FontWeight.w400,
                fontSize: 13.sp,
                color: const Color(0xFFDD7164)),
          ),
        ),
        Expanded(
          flex: 6,
          child: Text(
            "1",
            style: TextStyle(
                fontWeight: FontWeight.w400,
                fontSize: 13.sp,
                color: const Color(0xFFDD7164)),
          ),
        ),
        Text(
          "Service",
          style: TextStyle(
              fontWeight: FontWeight.w400,
              fontSize: 13.sp,
              color: const Color(0xFFF7CE46)),
        ),
      ],
    ),
  );
}

// ignore: non_constant_identifier_names
Widget Subtitle6() {
  return Padding(
      padding: EdgeInsets.only(
        left: 36.w,
      ),
      child: Row(
        children: [
          Text(
            "Inventory Usage",
            style: TextStyle(
              color: const Color(0xFF2B3070),
              fontSize: 20.sp,
              fontWeight: FontWeight.w400,
            ),
          )
        ],
      ));
}

// ignore: non_constant_identifier_names
Widget Heading14() {
  return Padding(
    padding: EdgeInsets.only(left: 36.w, right: 54.w),
    child: Row(
      children: [
        Expanded(
          child: Text(
            "Item",
            style: TextStyle(
                fontWeight: FontWeight.w400,
                fontSize: 13.sp,
                color: const Color(0xFF2B3070)),
          ),
        ),
        Text(
          "Quantity",
          style: TextStyle(
              fontWeight: FontWeight.w400,
              fontSize: 13.sp,
              color: const Color(0xFF2B3070)),
        ),
      ],
    ),
  );
}

// ignore: non_constant_identifier_names
Widget Heading15() {
  return Padding(
    padding: EdgeInsets.only(left: 36.w, right: 53.w),
    child: Row(
      children: [
        Expanded(
          child: Text(
            "Rst Paint White",
            style: TextStyle(
                fontWeight: FontWeight.w400,
                fontSize: 13.sp,
                color: const Color(0xFFDD7164)),
          ),
        ),
        Text(
          "10 Bag",
          style: TextStyle(
              fontWeight: FontWeight.w400,
              fontSize: 13.sp,
              color: const Color(0xFFDD7164)),
        ),
      ],
    ),
  );
}

// ignore: non_constant_identifier_names
Widget Subtitle7() {
  return Padding(
      padding: EdgeInsets.only(
        left: 36.w,
      ),
      child: Row(
        children: [
          Text(
            "Quality Check",
            style: TextStyle(
              color: const Color(0xFF2B3070),
              fontSize: 20.sp,
              fontWeight: FontWeight.w400,
            ),
          )
        ],
      ));
}

// ignore: non_constant_identifier_names
Widget Heading16() {
  return Padding(
    padding: EdgeInsets.only(left: 36.w, right: 69.w),
    child: Row(
      children: [
        Expanded(
          child: Text(
            "Time",
            style: TextStyle(
                fontWeight: FontWeight.w400,
                fontSize: 13.sp,
                color: const Color(0xFF2B3070)),
          ),
        ),
        Text(
          "Status",
          style: TextStyle(
              fontWeight: FontWeight.w400,
              fontSize: 13.sp,
              color: const Color(0xFF2B3070)),
        ),
      ],
    ),
  );
}

// ignore: non_constant_identifier_names
Widget Heading17() {
  return Padding(
    padding: EdgeInsets.only(left: 36.w, right: 56.w),
    child: Row(
      children: [
        Expanded(
          child: Text(
            "Road Marking",
            style: TextStyle(
                fontWeight: FontWeight.w400,
                fontSize: 13.sp,
                color: const Color(0xFFDD7164)),
          ),
        ),
        Text(
          "3 times done",
          style: TextStyle(
              fontWeight: FontWeight.w400,
              fontSize: 13.sp,
              color: const Color(0xFFDD7164)),
        ),
      ],
    ),
  );
}

// ignore: non_constant_identifier_names
Widget Heading18() {
  return Padding(
    padding: EdgeInsets.only(left: 36.w, right: 56.w),
    child: Row(
      children: [
        Expanded(
          child: Text(
            "Stud Fixing",
            style: TextStyle(
                fontWeight: FontWeight.w400,
                fontSize: 13.sp,
                color: const Color(0xFFDD7164)),
          ),
        ),
        Text(
          "3 times done",
          style: TextStyle(
              fontWeight: FontWeight.w400,
              fontSize: 13.sp,
              color: const Color(0xFFDD7164)),
        ),
      ],
    ),
  );
}

// ignore: non_constant_identifier_names
Widget Heading19() {
  return Padding(
    padding: EdgeInsets.only(left: 36.w, right: 56.w),
    child: Row(
      children: [
        Expanded(
          child: Text(
            "Board Fixing",
            style: TextStyle(
                fontWeight: FontWeight.w400,
                fontSize: 13.sp,
                color: const Color(0xFFDD7164)),
          ),
        ),
        Text(
          "2 times done ",
          style: TextStyle(
              fontWeight: FontWeight.w400,
              fontSize: 13.sp,
              color: const Color(0xFFDD7164)),
        ),
      ],
    ),
  );
}
