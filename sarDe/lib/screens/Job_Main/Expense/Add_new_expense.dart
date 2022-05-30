import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:sarde/screens/Job_Main/Expense/dialogue_box.dart';
import 'package:sarde/screens/Job_Main/JobMain.dart';
import 'package:sarde/widgets/Bottom_back_button.dart';
import 'package:sarde/screens/Job_Main/Expense/Add_new_expense_widgets.dart';

// ignore: camel_case_types
class add_new_expense extends StatefulWidget {

  @override
  State<add_new_expense> createState() => _add_new_expenseState();
}

class _add_new_expenseState extends State<add_new_expense> {

  final List<Widget> expenseData = [];
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
              itemCount: expenseData.length,
              itemBuilder: (BuildContext context,int index){
                return expenseData[index];
              }
          ),
        ),
        dialogue_box(dataCallback: (data){
          Widget expense = data1(data[0],data[1],data[2]);
          expenseData.add(expense);
          setState(() {});
        },),
        SizedBox(
          height: 365.61.h,
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
