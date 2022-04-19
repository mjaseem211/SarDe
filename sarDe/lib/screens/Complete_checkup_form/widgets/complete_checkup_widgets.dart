import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

Widget backButton() {
  return Padding(
    padding: EdgeInsets.only(top: 53.h, left: 38.w),
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
          child: Container(
            alignment: Alignment.centerLeft,
            child: Text(
              "Job 303",
              style: TextStyle(
                  fontWeight: FontWeight.w400,
                  fontSize: 35.sp,
                  color: const Color(0xFF2B3070)),
            ),
          ),
        ),
        Expanded(
            child: Container(
          alignment: Alignment.centerRight,
          child: Text(
            "18-09-22",
            style: TextStyle(
                fontWeight: FontWeight.w400,
                fontSize: 22.sp,
                color: const Color(0xFFBC401E)),
          ),
        )),
      ],
    ),
  );
}

Widget subTitle() {
  return Padding(
    padding: EdgeInsets.only(left: 33.w),
    child: Row(
      children: [
        Text(
          "Kuttichira to Maradu",
          style: TextStyle(
            color: Color(0xFF2B3070).withOpacity(0.7),
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
            color: Color(0xFF2B3070),
            fontSize: 20.sp,
            fontWeight: FontWeight.w400,
          ),
        )
      ],
    ),
  );
}

Widget Heading1() {
  return Padding(
    padding: EdgeInsets.only(right: 62.w, left: 38.w),
    child: Row(
      children: [
        Expanded(
          child: Container(
            child: Text(
              "Work Name",
              style: TextStyle(
                  fontWeight: FontWeight.w400,
                  fontSize: 13.sp,
                  color: const Color(0xFF2B3070)),
            ),
          ),
        ),
        SizedBox(
          width: 70.w,
        ),
        Expanded(
            child: Container(
          alignment: Alignment.centerLeft,
          child: Text(
            "Today",
            style: TextStyle(
                fontWeight: FontWeight.w400,
                fontSize: 13.sp,
                color: const Color(0xFF2B3070)),
          ),
        )),
        Expanded(
            child: Container(
          alignment: Alignment.centerRight,
          child: Text(
            "Total",
            style: TextStyle(
                fontWeight: FontWeight.w400,
                fontSize: 13.sp,
                color: const Color(0xFF2B3070)),
          ),
        )),
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
              color: Color(0xFFD8D4E9),
              borderRadius: BorderRadius.circular(6.r)),
        ),
      ],
    ),
  );
}

Widget Heading2() {
  return Padding(
    padding: EdgeInsets.only(right: 47.w, left: 38.w),
    child: Row(
      children: [
        Expanded(
          child: Container(
            child: Text(
              "Road Marking",
              style: TextStyle(
                  fontWeight: FontWeight.w400,
                  fontSize: 13.sp,
                  color: const Color(0xFFDD7164)),
            ),
          ),
        ),
        SizedBox(
          width: 51.w,
        ),
        Expanded(
            child: Container(
          alignment: Alignment.centerLeft,
          child: Text(
            "128 sqm",
            style: TextStyle(
                fontWeight: FontWeight.w400,
                fontSize: 13.sp,
                color: const Color(0xFFDD7164)),
          ),
        )),
        Expanded(
            child: Container(
          alignment: Alignment.centerRight,
          child: Text(
            "121.8 sqm",
            style: TextStyle(
                fontWeight: FontWeight.w400,
                fontSize: 13.sp,
                color: const Color(0xFFDD7164)),
          ),
        )),
      ],
    ),
  );
}

Widget Heading3() {
  return Padding(
    padding: EdgeInsets.only(right: 54.w, left: 38.w),
    child: Row(
      children: [
        Expanded(
          child: Container(
            child: Text(
              "Stud fixing",
              style: TextStyle(
                  fontWeight: FontWeight.w400,
                  fontSize: 13.sp,
                  color: const Color(0xFFDD7164)),
            ),
          ),
        ),
        SizedBox(
          width: 51.w,
        ),
        Expanded(
            child: Container(
          alignment: Alignment.centerLeft,
          child: Text(
            "55 nos",
            style: TextStyle(
                fontWeight: FontWeight.w400,
                fontSize: 13.sp,
                color: const Color(0xFFDD7164)),
          ),
        )),
        Expanded(
            child: Container(
          alignment: Alignment.centerRight,
          child: Text(
            "102 nos",
            style: TextStyle(
                fontWeight: FontWeight.w400,
                fontSize: 13.sp,
                color: const Color(0xFFDD7164)),
          ),
        )),
      ],
    ),
  );
}

Widget Heading4() {
  return Padding(
    padding: EdgeInsets.only(right: 58.w, left: 38.w),
    child: Row(
      children: [
        Expanded(
          child: Container(
            child: Text(
              "Board Fixing",
              style: TextStyle(
                  fontWeight: FontWeight.w400,
                  fontSize: 13.sp,
                  color: const Color(0xFFDD7164)),
            ),
          ),
        ),
        SizedBox(
          width: 51.w,
        ),
        Expanded(
            child: Container(
          alignment: Alignment.centerLeft,
          child: Text(
            "15 nos",
            style: TextStyle(
                fontWeight: FontWeight.w400,
                fontSize: 13.sp,
                color: const Color(0xFFDD7164)),
          ),
        )),
        Expanded(
            child: Container(
          alignment: Alignment.centerRight,
          child: Text(
            "26 nos",
            style: TextStyle(
                fontWeight: FontWeight.w400,
                fontSize: 13.sp,
                color: const Color(0xFFDD7164)),
          ),
        )),
      ],
    ),
  );
}

Widget Subtitle3() {
  return Padding(
      padding: EdgeInsets.only(left: 36.w),
      child: Row(
        children: [
          Text(
            "Expence",
            style: TextStyle(
              color: Color(0xFF2B3070),
              fontSize: 20.sp,
              fontWeight: FontWeight.w400,
            ),
          )
        ],
      ));
}

Widget Heading5() {
  return Padding(
    padding: EdgeInsets.only(right: 62.w, left: 36.w),
    child: Row(
      children: [
        Expanded(
          child: Container(
            child: Text(
              "Expenses",
              style: TextStyle(
                  fontWeight: FontWeight.w400,
                  fontSize: 13.sp,
                  color: const Color(0xFF2B3070)),
            ),
          ),
        ),
        SizedBox(
          width: 73.w,
        ),
        Expanded(
            child: Container(
          alignment: Alignment.centerLeft,
          child: Text(
            "Amount",
            style: TextStyle(
                fontWeight: FontWeight.w400,
                fontSize: 13.sp,
                color: const Color(0xFF2B3070)),
          ),
        )),
        SizedBox(
          width: 62.w,
        ),
        Expanded(
            child: Container(
          alignment: Alignment.centerRight,
          child: Text(
            "Reference",
            style: TextStyle(
                fontWeight: FontWeight.w400,
                fontSize: 13.sp,
                color: const Color(0xFF2B3070)),
          ),
        )),
      ],
    ),
  );
}

Widget Heading6() {
  return Padding(
    padding: EdgeInsets.only(right: 53.w, left: 36.w),
    child: Row(
      children: [
        Expanded(
          child: Container(
            alignment: Alignment.centerLeft,
            child: Text(
              "Vech Rent",
              style: TextStyle(
                  fontWeight: FontWeight.w400,
                  fontSize: 13.sp,
                  color: const Color(0xFFDD7164)),
            ),
          ),
        ),
        SizedBox(
          width: 77.w,
        ),
        Expanded(
            child: Container(
          alignment: Alignment.centerLeft,
          child: Text(
            "1800",
            style: TextStyle(
                fontWeight: FontWeight.w400,
                fontSize: 13.sp,
                color: const Color(0xFFDD7164)),
          ),
        )),
        SizedBox(
          width: 88.w,
        ),
        Expanded(
          child: Container(
            alignment: Alignment.centerLeft,
            child: Text(
              "5 days",
              style: TextStyle(
                  fontWeight: FontWeight.w400,
                  fontSize: 13.sp,
                  color: const Color(0xFFDD7164)),
            ),
          ),
        ),
      ],
    ),
  );
}

Widget Heading7() {
  return Padding(
    padding: EdgeInsets.only(right: 40.w, left: 36.w),
    child: Row(
      children: [
        Expanded(
          child: Container(
            alignment: Alignment.centerLeft,
            child: Text(
              "Machine Rent",
              style: TextStyle(
                  fontWeight: FontWeight.w400,
                  fontSize: 13.sp,
                  color: const Color(0xFFDD7164)),
            ),
          ),
        ),
        SizedBox(
          width: 55.w,
        ),
        Expanded(
          child: Container(
            alignment: Alignment.centerLeft,
            child: Text(
              "1000",
              style: TextStyle(
                  fontWeight: FontWeight.w400,
                  fontSize: 13.sp,
                  color: const Color(0xFFDD7164)),
            ),
          ),
        ),
        SizedBox(
          width: 59.w,
        ),
        Expanded(
          child: Container(
            alignment: Alignment.centerLeft,
            child: Text(
              "Modern tools",
              style: TextStyle(
                  fontWeight: FontWeight.w400,
                  fontSize: 13.sp,
                  color: const Color(0xFFDD7164)),
            ),
          ),
        ),
      ],
    ),
  );
}

Widget Total() {
  return Padding(
    padding: EdgeInsets.only(right: 181.w, left: 97.w),
    child: Row(children: [
      Expanded(
        child: Container(
          alignment: Alignment.centerLeft,
          child: Text(
            "Total",
            style: TextStyle(
                fontWeight: FontWeight.w400,
                fontSize: 13.sp,
                color: const Color(0xFFBC401E)),
          ),
        ),
      ),
      Expanded(
        child: Container(
          alignment: Alignment.centerLeft,
          child: Text(
            "2800",
            style: TextStyle(
                fontWeight: FontWeight.w500,
                fontSize: 13.sp,
                color: const Color(0xFFBC401E)),
          ),
        ),
      ),
    ]),
  );
}

Widget Subtitle4() {
  return Padding(
      padding: EdgeInsets.only(left: 36.w),
      child: Row(
        children: [
          Text(
            "Labour",
            style: TextStyle(
              color: Color(0xFF2B3070),
              fontSize: 20.sp,
              fontWeight: FontWeight.w400,
            ),
          )
        ],
      ));
}

Widget Heading8() {
  return Padding(
    padding: EdgeInsets.only(right: 62.w, left: 36.w),
    child: Row(
      children: [
        Expanded(
          child: Container(
            alignment: Alignment.centerLeft,
            child: Text(
              "Name",
              style: TextStyle(
                  fontWeight: FontWeight.w400,
                  fontSize: 13.sp,
                  color: const Color(0xFF2B3070)),
            ),
          ),
        ),
        SizedBox(
          width: 74.w,
        ),
        Expanded(
          child: Container(
            alignment: Alignment.centerLeft,
            child: Text(
              "Trade",
              style: TextStyle(
                  fontWeight: FontWeight.w400,
                  fontSize: 13.sp,
                  color: const Color(0xFF2B3070)),
            ),
          ),
        ),
        SizedBox(
          width: 55.w,
        ),
        Expanded(
          child: Container(
            alignment: Alignment.centerLeft,
            child: Text(
              "Type",
              style: TextStyle(
                  fontWeight: FontWeight.w400,
                  fontSize: 13.sp,
                  color: const Color(0xFF2B3070)),
            ),
          ),
        ),
        SizedBox(
          width: 19.w,
        ),
        Expanded(
          child: Container(
            alignment: Alignment.centerLeft,
            child: Text(
              "Hours",
              style: TextStyle(
                  fontWeight: FontWeight.w400,
                  fontSize: 13.sp,
                  color: const Color(0xFF2B3070)),
            ),
          ),
        ),
      ],
    ),
  );
}

Widget Heading9() {
  return Padding(
    padding: EdgeInsets.only(right: 40.w, left: 36.w),
    child: Row(
      children: [
        Expanded(
          child: Container(
            alignment: Alignment.centerLeft,
            child: Text(
              "Rahul",
              style: TextStyle(
                  fontWeight: FontWeight.w400,
                  fontSize: 13.sp,
                  color: const Color(0xFFDD7164)),
            ),
          ),
        ),
        SizedBox(
          width: 64.w,
        ),
        Expanded(
          child: Container(
            alignment: Alignment.centerLeft,
            child: Text(
              "Rope man",
              style: TextStyle(
                  fontWeight: FontWeight.w400,
                  fontSize: 13.sp,
                  color: const Color(0xFFDD7164)),
            ),
          ),
        ),
        SizedBox(
          width: 40.w,
        ),
        Expanded(
          child: Container(
            alignment: Alignment.centerLeft,
            child: Text(
              "Sub",
              style: TextStyle(
                  fontWeight: FontWeight.w400,
                  fontSize: 13.sp,
                  color: const Color(0xFFDD7164)),
            ),
          ),
        ),
        SizedBox(
          width: 25.w,
        ),
        Expanded(
          child: Container(
            alignment: Alignment.centerLeft,
            child: Text(
              "5",
              style: TextStyle(
                  fontWeight: FontWeight.w400,
                  fontSize: 13.sp,
                  color: const Color(0xFFDD7164)),
            ),
          ),
        ),
      ],
    ),
  );
}

Widget Heading10() {
  return Padding(
    padding: EdgeInsets.only(right: 40.w, left: 36.w),
    child: Row(
      children: [
        Expanded(
          child: Container(
            alignment: Alignment.centerLeft,
            child: Text(
              "Vinod",
              style: TextStyle(
                  fontWeight: FontWeight.w400,
                  fontSize: 13.sp,
                  color: const Color(0xFFDD7164)),
            ),
          ),
        ),
        SizedBox(
          width: 72.w,
        ),
        Expanded(
          child: Container(
            alignment: Alignment.centerLeft,
            child: Text(
              "Painter ",
              style: TextStyle(
                  fontWeight: FontWeight.w400,
                  fontSize: 13.sp,
                  color: const Color(0xFFDD7164)),
            ),
          ),
        ),
        SizedBox(
          width: 50.w,
        ),
        Expanded(
          child: Container(
            alignment: Alignment.centerLeft,
            child: Text(
              "Own",
              style: TextStyle(
                  fontWeight: FontWeight.w400,
                  fontSize: 13.sp,
                  color: const Color(0xFFDD7164)),
            ),
          ),
        ),
        SizedBox(
          width: 23.w,
        ),
        Expanded(
          child: Container(
            alignment: Alignment.centerLeft,
            child: Text(
              "8",
              style: TextStyle(
                  fontWeight: FontWeight.w400,
                  fontSize: 13.sp,
                  color: const Color(0xFFDD7164)),
            ),
          ),
        ),
      ],
    ),
  );
}

Widget Subtitle5() {
  return Padding(
      padding: EdgeInsets.only(left: 36.w),
      child: Row(
        children: [
          Text(
            "Tools",
            style: TextStyle(
              color: Color(0xFF2B3070),
              fontSize: 20.sp,
              fontWeight: FontWeight.w400,
            ),
          )
        ],
      ));
}

Widget Heading11() {
  return Padding(
    padding: EdgeInsets.only(right: 48.w, left: 37.w),
    child: Row(
      children: [
        Expanded(
          child: Container(
            child: Text(
              "Item",
              style: TextStyle(
                  fontWeight: FontWeight.w400,
                  fontSize: 13.sp,
                  color: const Color(0xFF2B3070)),
            ),
          ),
        ),
        SizedBox(
          width: 91.w,
        ),
        Expanded(
            child: Container(
          alignment: Alignment.centerLeft,
          child: Text(
            "Quantity",
            style: TextStyle(
                fontWeight: FontWeight.w400,
                fontSize: 13.sp,
                color: const Color(0xFF2B3070)),
          ),
        )),
        SizedBox(
          width: 66.w,
        ),
        Expanded(
            child: Container(
          alignment: Alignment.centerRight,
          child: Text(
            "Condition",
            style: TextStyle(
                fontWeight: FontWeight.w400,
                fontSize: 13.sp,
                color: const Color(0xFF2B3070)),
          ),
        )),
      ],
    ),
  );
}

Widget Heading12() {
  return Padding(
    padding: EdgeInsets.only(right: 61.w, left: 37.w),
    child: Row(
      children: [
        Expanded(
          child: Container(
            alignment: Alignment.centerLeft,
            child: Text(
              "Boiler",
              style: TextStyle(
                  fontWeight: FontWeight.w400,
                  fontSize: 13.sp,
                  color: const Color(0xFFDD7164)),
            ),
          ),
        ),
        SizedBox(
          width: 115.w,
        ),
        Expanded(
          child: Container(
            alignment: Alignment.centerLeft,
            child: Text(
              "2",
              style: TextStyle(
                  fontWeight: FontWeight.w400,
                  fontSize: 13.sp,
                  color: const Color(0xFFDD7164)),
            ),
          ),
        ),
        SizedBox(
          width: 80.w,
        ),
        Expanded(
          child: Container(
            alignment: Alignment.centerRight,
            child: Text(
              "Good",
              style: TextStyle(
                  fontWeight: FontWeight.w400,
                  fontSize: 13.sp,
                  color: const Color(0xFF52972A)),
            ),
          ),
        ),
      ],
    ),
  );
}

Widget Heading13() {
  return Padding(
    padding: EdgeInsets.only(right: 61.w, left: 37.w),
    child: Row(
      children: [
        Expanded(
          child: Container(
            alignment: Alignment.centerRight,
            child: Text(
              "Spanner 12",
              style: TextStyle(
                  fontWeight: FontWeight.w400,
                  fontSize: 13.sp,
                  color: const Color(0xFFDD7164)),
            ),
          ),
        ),
        SizedBox(
          width: 105.w,
        ),
        Expanded(
          child: Container(
            alignment: Alignment.centerLeft,
            child: Text(
              "1",
              style: TextStyle(
                  fontWeight: FontWeight.w400,
                  fontSize: 13.sp,
                  color: const Color(0xFFDD7164)),
            ),
          ),
        ),
        SizedBox(
          width: 61.w,
        ),
        Expanded(
          child: Container(
            alignment: Alignment.centerRight,
            child: Text(
              "Service",
              style: TextStyle(
                  fontWeight: FontWeight.w400,
                  fontSize: 13.sp,
                  color: const Color(0xFFF7CE46)),
            ),
          ),
        ),
      ],
    ),
  );
}

Widget Subtitle6() {
  return Padding(
      padding: EdgeInsets.only(left: 36.w),
      child: Row(
        children: [
          Text(
            "Inventory Usage",
            style: TextStyle(
              color: Color(0xFF2B3070),
              fontSize: 20.sp,
              fontWeight: FontWeight.w400,
            ),
          )
        ],
      ));
}

Widget Heading14() {
  return Padding(
    padding: EdgeInsets.only(left: 36.w, right: 54.w),
    child: Row(
      children: [
        Expanded(
          child: Container(
            alignment: Alignment.centerLeft,
            child: Text(
              "Item",
              style: TextStyle(
                  fontWeight: FontWeight.w400,
                  fontSize: 13.sp,
                  color: const Color(0xFF2B3070)),
            ),
          ),
        ),
        Expanded(
            child: Container(
          alignment: Alignment.centerRight,
          child: Text(
            "Quantity",
            style: TextStyle(
                fontWeight: FontWeight.w400,
                fontSize: 13.sp,
                color: const Color(0xFF2B3070)),
          ),
        )),
      ],
    ),
  );
}

Widget Heading15() {
  return Padding(
    padding: EdgeInsets.only(left: 36.w, right: 53.w),
    child: Row(
      children: [
        Expanded(
          child: Container(
            alignment: Alignment.centerLeft,
            child: Text(
              "Rst Paint White",
              style: TextStyle(
                  fontWeight: FontWeight.w400,
                  fontSize: 13.sp,
                  color: const Color(0xFFDD7164)),
            ),
          ),
        ),
        Expanded(
            child: Container(
          alignment: Alignment.centerRight,
          child: Text(
            "10 Bag",
            style: TextStyle(
                fontWeight: FontWeight.w400,
                fontSize: 13.sp,
                color: const Color(0xFFDD7164)),
          ),
        )),
      ],
    ),
  );
}

Widget Subtitle7() {
  return Padding(
      padding: EdgeInsets.only(left: 36.w),
      child: Row(
        children: [
          Text(
            "Quality Check",
            style: TextStyle(
              color: Color(0xFF2B3070),
              fontSize: 20.sp,
              fontWeight: FontWeight.w400,
            ),
          )
        ],
      ));
}

Widget Heading16() {
  return Padding(
    padding: EdgeInsets.only(left: 36.w, right: 69.w),
    child: Row(
      children: [
        Expanded(
          child: Container(
            alignment: Alignment.centerLeft,
            child: Text(
              "Time",
              style: TextStyle(
                  fontWeight: FontWeight.w400,
                  fontSize: 13.sp,
                  color: const Color(0xFF2B3070)),
            ),
          ),
        ),
        Expanded(
            child: Container(
          alignment: Alignment.centerRight,
          child: Text(
            "Status",
            style: TextStyle(
                fontWeight: FontWeight.w400,
                fontSize: 13.sp,
                color: const Color(0xFF2B3070)),
          ),
        )),
      ],
    ),
  );
}

Widget Heading17() {
  return Padding(
    padding: EdgeInsets.only(left: 36.w, right: 56.w),
    child: Row(
      children: [
        Expanded(
          child: Container(
            alignment: Alignment.centerLeft,
            child: Text(
              "Road Marking",
              style: TextStyle(
                  fontWeight: FontWeight.w400,
                  fontSize: 13.sp,
                  color: const Color(0xFFDD7164)),
            ),
          ),
        ),
        Expanded(
            child: Container(
          alignment: Alignment.centerRight,
          child: Text(
            "3 times done",
            style: TextStyle(
                fontWeight: FontWeight.w400,
                fontSize: 13.sp,
                color: const Color(0xFFDD7164)),
          ),
        )),
      ],
    ),
  );
}

Widget Heading18() {
  return Padding(
    padding: EdgeInsets.only(left: 36.w, right: 56.w),
    child: Row(
      children: [
        Expanded(
          child: Container(
            alignment: Alignment.centerLeft,
            child: Text(
              "Stud Fixing",
              style: TextStyle(
                  fontWeight: FontWeight.w400,
                  fontSize: 13.sp,
                  color: const Color(0xFFDD7164)),
            ),
          ),
        ),
        Expanded(
            child: Container(
          alignment: Alignment.centerRight,
          child: Text(
            "3 times done",
            style: TextStyle(
                fontWeight: FontWeight.w400,
                fontSize: 13.sp,
                color: const Color(0xFFDD7164)),
          ),
        )),
      ],
    ),
  );
}

Widget Heading19() {
  return Padding(
    padding: EdgeInsets.only(left: 36.w, right: 56.w),
    child: Row(
      children: [
        Expanded(
          child: Container(
            alignment: Alignment.centerLeft,
            child: Text(
              "Board Fixing",
              style: TextStyle(
                  fontWeight: FontWeight.w400,
                  fontSize: 13.sp,
                  color: const Color(0xFFDD7164)),
            ),
          ),
        ),
        Expanded(
            child: Container(
          alignment: Alignment.centerRight,
          child: Text(
            "2 times done ",
            style: TextStyle(
                fontWeight: FontWeight.w400,
                fontSize: 13.sp,
                color: const Color(0xFFDD7164)),
          ),
        )),
      ],
    ),
  );
}
Widget CloseButton2() {
  return Container(
    height: 98.h,
    width: 390.w,
    child: ElevatedButton(
      onPressed: () {},
      child: Padding(
        padding: EdgeInsets.only(left: 55.w, right: 214.w),
        child: Text('Close Day',
            style: TextStyle(
              color: Colors.white,
              fontSize: 25.sp,
              fontWeight: FontWeight.w400,
            )),
      ),
      style: ElevatedButton.styleFrom(
        primary: const Color(0xFF2B3070), // background
        onPrimary: const Color(0xFF2B3070),

        // foreground
      ),
    ),
  );
}