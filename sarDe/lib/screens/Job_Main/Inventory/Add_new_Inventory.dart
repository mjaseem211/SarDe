// ignore_for_file: camel_case_types, file_names

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:sarde/screens/Job_Main/Inventory/Add_new_inventory_widgets.dart';
import 'package:sarde/widgets/Bottom_back_button.dart';
import '../../../api/getAllnventory.dart';
import '../../../services/prefs.dart';
import 'Add_new_Inventory_dialoguebox.dart';

class Road_Marking_inventory extends StatefulWidget {
  const Road_Marking_inventory({Key? key}) : super(key: key);

  @override
  State<Road_Marking_inventory> createState() => _Road_Marking_inventoryState();
}

class _Road_Marking_inventoryState extends State<Road_Marking_inventory> {
  final inventoryApi = GetAllInventory();

  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_) {
      _getAllInventory(0, 25);
    });
  }

  _getAllInventory(pageOffset, pageCount) async {
    // loading circularIndicator
    showDialog(
      context: context,
      builder: (context) {
        return const Center(child: CircularProgressIndicator());
      },
    );
    final prefs = await SardePreferences.getInstance();
    var jobId = await prefs.jobId;
    var accessToken = prefs.token;
    var subJobId = await prefs.subJobId;
    var inventoryData = await inventoryApi.getInventory(
      accessToken: accessToken,
      jobId: jobId,
      subJobId: subJobId,
      pageOffset: pageOffset,
      pageCount: pageCount,
    );
    for (var element in inventoryData!.result) {
      Widget inventory = Data(element.item, element.quantity);
      inventoryDataList.add(inventory);
    }
    setState(() {});
    // pop the loading circle
    Navigator.of (context).pop();
  }

  final List<Widget> inventoryDataList = [];

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
              itemCount: inventoryDataList.length,
              itemBuilder: (BuildContext context, int index) {
                return inventoryDataList[index];
              }),
        ),
        inventoryDialogueBox(
          dataCallback: (data) {
            Widget inventory = Data(data[0], data[1]);
            inventoryDataList.add(inventory);
            setState(() {});
          },
        ),
        Bottom_back_button(
          onTap: () {
            Navigator.of(context).pop();
          },
        ),
        SizedBox(
          height: 72.h,
        ),
      ]),
    );
  }
}
