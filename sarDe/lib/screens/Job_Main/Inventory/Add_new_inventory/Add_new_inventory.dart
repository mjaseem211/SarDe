import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:sarde/screens/Job_Main/Inventory/Add_new_inventory/dialogue_box.dart';
import 'package:sarde/screens/Job_Main/JobMain.dart';
import 'package:sarde/screens/Job_Main/Inventory/Add_new_inventory/Add_new_inventory_widgets.dart';
import 'package:sarde/widgets/Bottom_back_button.dart';

// ignore: camel_case_types
class add_new_inventory extends StatefulWidget {
  const add_new_inventory({Key? key}) : super(key: key);

  @override
  State<add_new_inventory> createState() => _add_new_inventoryState();
}

// ignore: camel_case_types
class _add_new_inventoryState extends State<add_new_inventory> {
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
          child: ListView(shrinkWrap: true, children: [
            data(),
          ]),
        ),
        const dialogue_box(),
        SizedBox(
          height: 439.3.h,
        ),
        Bottom_back_button(
          onTap: () {
            Navigator.of(context).pushReplacement(
                MaterialPageRoute(builder: (context) => JobMain()));
          },
        ),
        SizedBox(
          height: 72.h,
        ),
      ]),
    );
  }
}
