// ignore_for_file: camel_case_types

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:sarde/screens/Job_Main/Inventory/Board_Fixing/Board_Fixing_inventory_dialoguebox.dart';
import 'package:sarde/screens/Job_Main/JobMain.dart';
import 'package:sarde/screens/Job_Main/Inventory/Board_Fixing/Board_Fixing_inventory_widgets.dart';
import 'package:sarde/widgets/Bottom_back_button.dart';

class Board_Fixing_inventory extends StatefulWidget {
  const Board_Fixing_inventory({Key? key}) : super(key: key);

  @override
  State<Board_Fixing_inventory> createState() => _Board_Fixing_inventoryState();
}

class _Board_Fixing_inventoryState extends State<Board_Fixing_inventory> {
  @override


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
        const Board_Fixing_inventory_dialoguebox(),
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
