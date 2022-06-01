// ignore_for_file: camel_case_types

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:sarde/screens/Job_Main/Inventory/Stud_Fixing/Stud_Fixing_Inventory_dialoguebox.dart';
import 'package:sarde/screens/Job_Main/JobMain.dart';
import 'package:sarde/screens/Job_Main/Inventory/Stud_Fixing/Stud_Fixing_Inventory_widgets.dart';
import 'package:sarde/widgets/Bottom_back_button.dart';

class Stud_Fixing_inventory extends StatefulWidget {
  const Stud_Fixing_inventory({Key? key}) : super(key: key);

  @override
  State<Stud_Fixing_inventory> createState() => _Stud_Fixing_inventoryState();
}

class _Stud_Fixing_inventoryState extends State<Stud_Fixing_inventory> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: Colors.white,
      body: Column(children: [
        title(),
        SizedBox(
          height: 26.h,
        ),
        heading(),
        SizedBox(
          height: 2.h,
        ),
        line(),
        Expanded(
          child: ListView(children: [
            data(),
          ]),
        ),
        const Stud_Fixing_inventory_dialoguebox(),
        SizedBox(
          height: 364.3.h,
        ),
        Bottom_back_button(
          onTap: () {
            Navigator.of(context).pushReplacement(
                MaterialPageRoute(builder: (context) => const JobMain()));
          },
        ),
        SizedBox(
          height: 72.h,
        ),
      ]),
    );
  }
}
