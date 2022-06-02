// ignore_for_file: camel_case_types, non_constant_identifier_names

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:sarde/screens/Job_Main/Inventory/Stud_Fixing/Stud_Fixing_Inventory_dialoguebox.dart';
import 'package:sarde/screens/Job_Main/JobMain.dart';
import 'package:sarde/screens/Job_Main/Inventory/Stud_Fixing/Stud_Fixing_Inventory_widgets.dart';
import 'package:sarde/widgets/Bottom_back_button.dart';

import 'Stud_Fixing_Inventory_widgets.dart';

class Stud_Fixing_Inventory extends StatefulWidget {
  const Stud_Fixing_Inventory({Key? key}) : super(key: key);

  @override
  State<Stud_Fixing_Inventory> createState() => _Stud_Fixing_InventoryState();
}

class _Stud_Fixing_InventoryState extends State<Stud_Fixing_Inventory> {
  final List<Widget> StudFixinginventoryData = [];

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
          child: ListView.builder(
              itemCount: StudFixinginventoryData.length,
              itemBuilder: (BuildContext context, int index) {
                return StudFixinginventoryData[index];
              }),
        ),
        Stud_Fixing_inventory_dialoguebox(
          dataCallback: (data) {
            Widget studfixinginventory = Data(data[0], data[1]);
            StudFixinginventoryData.add(studfixinginventory);
            setState(() {});
          },
        ),
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
