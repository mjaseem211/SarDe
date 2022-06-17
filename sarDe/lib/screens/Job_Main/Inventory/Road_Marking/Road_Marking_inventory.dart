// ignore_for_file: camel_case_types, file_names

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:sarde/screens/Job_Main/Inventory/Road_Marking/Road_Marking_inventory_dialoguebox.dart';
import 'package:sarde/screens/Job_Main/JobMain.dart';
import 'package:sarde/screens/Job_Main/Inventory/Road_Marking/Road_Marking_inventory_widgets.dart';
import 'package:sarde/widgets/Bottom_back_button.dart';

class Road_Marking_inventory extends StatefulWidget {
  const Road_Marking_inventory({Key? key}) : super(key: key);

  @override
  State<Road_Marking_inventory> createState() => _Road_Marking_inventoryState();
}

class _Road_Marking_inventoryState extends State<Road_Marking_inventory> {
  final List<Widget> roadMarkingInventoryData = [];
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
          child:ListView.builder(
              itemCount: roadMarkingInventoryData.length,
              itemBuilder: (BuildContext context, int index) {
                return roadMarkingInventoryData[index];
              }),
        ),
         Road_Marking_inventory_dialoguebox(

          dataCallback: (data) {
            Widget roadmarkinginventory =
            Data(data[0], data[1]);
            roadMarkingInventoryData.add(roadmarkinginventory);
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
