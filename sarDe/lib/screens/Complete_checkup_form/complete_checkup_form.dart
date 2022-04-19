import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:sarde/screens/Complete_checkup_form/widgets/complete_checkup_widgets.dart';

class Complete_Check_Up extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: ListView(shrinkWrap: true, children: [
        Column(children: [
          backButton(),
          SizedBox(
            height: 26.h,
          ),
          title(),
          SizedBox(
            height: 3.h,
          ),
          subTitle(),
          SizedBox(
            height: 42.h,
          ),
          subTitle2(),
          SizedBox(
            height: 15.h,
          ),
          Heading1(),
          SizedBox(
            height: 2.h,
          ),
          line(),
          SizedBox(
            height: 9.h,
          ),
          Heading2(),
          SizedBox(
            height: 8.h,
          ),
          Heading3(),
          SizedBox(
            height: 9.h,
          ),
          Heading4(),
          SizedBox(
            height: 61.h,
          ),
          Subtitle3(),
          SizedBox(
            height: 16.h,
          ),
          Heading5(),
          SizedBox(
            height: 2.h,
          ),
          line(),
          SizedBox(
            height: 6.h,
          ),
          Heading6(),
          SizedBox(
            height: 10.h,
          ),
          Heading7(),
          SizedBox(
            height: 7.h,
          ),
          Total(),
          SizedBox(
            height: 62.h,
          ),
          Subtitle4(),
          SizedBox(
            height: 11.h,
          ),
          Heading8(),
          SizedBox(
            height: 2.h,
          ),
          line(),
          SizedBox(
            height: 6.h,
          ),
          Heading9(),
          SizedBox(
            height: 9.h,
          ),
          Heading10(),
          SizedBox(
            height: 81.h,
          ),
          Subtitle5(),
          SizedBox(
            height: 12.h,
          ),
          Heading11(),
          SizedBox(
            height: 2.h,
          ),
          line(),
          SizedBox(
            height: 6.h,
          ),
          Heading12(),
          SizedBox(
            height: 15.h,
          ),
          Heading13(),
          SizedBox(
            height: 79.h,
          ),
          Subtitle6(),
          SizedBox(
            height: 18.h,
          ),
          Heading14(),
          SizedBox(
            height: 2.h,
          ),
          line(),
          SizedBox(
            height: 6.h,
          ),
          Heading15(),
          SizedBox(
            height: 93.h,
          ),
          Subtitle7(),
          SizedBox(
            height: 18.h,
          ),
          Heading16(),
          SizedBox(
            height: 2.h,
          ),
          line(),
          SizedBox(
            height: 6.h,
          ),
          Heading17(),
          SizedBox(
            height: 6.h,
          ),
          Heading18(),
          SizedBox(
            height: 8.h,
          ),
          Heading19(),
          SizedBox(
            height: 104.h,
          ),
          CloseButton2(),
        ]),
      ]),
    );
  }


}
