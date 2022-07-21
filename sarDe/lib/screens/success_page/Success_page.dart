import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:sarde/screens/Super_viser_Dashboard/supervisor_dashboard.dart';
import 'package:sarde/screens/success_page/success_page_widgets.dart';
import '../../widgets/Close_Day_Button.dart';
import '../Complete_checkup_form/complete_checkup_form.dart';

class SuccessPage extends StatefulWidget {
  const SuccessPage({Key? key}) : super(key: key);

  @override
  State<SuccessPage> createState() => _SuccessPageState();
}

class _SuccessPageState extends State<SuccessPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(children: [
        SizedBox(
          height: 150.h,
        ),
        Expanded(
            child: ListView(
                physics: const NeverScrollableScrollPhysics(),
                children: [
              Success(),
              const HomeButton(),
            ])),
        Close_Day_Button(
          text: "Finish Job",
          onTap: () {
            Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => const SupervisorDashboard()));
          },
        ),
      ]),
    );
  }
}
