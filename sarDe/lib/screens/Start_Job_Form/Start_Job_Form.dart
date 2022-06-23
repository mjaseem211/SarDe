// ignore_for_file: file_names, camel_case_types

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:sarde/providers/job_id.dart';
import 'package:sarde/screens/Start_Job_Form/widgets/Start_Job_widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:sarde/widgets/Top_Back_button.dart';

import '../../models/job_card/job_card.dart';

class Start_Job_Form extends StatefulWidget {
  const Start_Job_Form({Key? key, required this.jobCardModel})
      : super(key: key);

  final Result jobCardModel;

  @override
  State<Start_Job_Form> createState() => _Start_Job_FormState();
}

class _Start_Job_FormState extends State<Start_Job_Form> {
  @override
  Widget build(BuildContext context) {
    JobIDProvider job = Provider.of<JobIDProvider>(
      context,
    );
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Column(children: [
        Top_Back_Button(
          onTap: () {
            Navigator.of(context).pop(context);
          },
        ),
        SizedBox(
          height: 66.h,
        ),
        title1(context),
        SizedBox(
          height: 3.h,
        ),
        subtitle(context),
        SizedBox(
          height: 5.h,
        ),
        date(context),
        Expanded(
          child: ListView(children: [
            subJobs(context),
            SizedBox(
              height: 3.h,
            ),
            SizedBox(
              height: 9.h,
            ),
          ]),
        ),
        ChangeNotifierProvider(
          create: (context) => job,
          child: const Start_Button(),
        ),
      ]),
    );
  }
}
