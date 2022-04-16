import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:sarde/screens/job_main/widgets/job_main_widgets.dart';

import '../../widgets/app_grid_buttons.dart';

class JobMain extends StatelessWidget {
  const JobMain({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: ListView(
        shrinkWrap: true,
        children: [
          Column(
            children: [
              backButton(),
              SizedBox(
                height: 66.h,
              ),
              title(),
              SizedBox(
                height: 3.h,
              ),
              subTitle(),
              SizedBox(
                height: 29.h,
              ),
              gridView()
            ],
          )
        ],
      ),
    );
  }
}
