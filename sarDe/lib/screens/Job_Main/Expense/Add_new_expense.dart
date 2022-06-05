// ignore_for_file: camel_case_types

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:sarde/screens/Job_Main/Expense/dialogue_box.dart';
import 'package:sarde/screens/Job_Main/JobMain.dart';
import 'package:sarde/widgets/Bottom_back_button.dart';
import 'package:sarde/screens/Job_Main/Expense/Add_new_expense_widgets.dart';

import '../../../api/getAllExpenses.dart';
import '../../../services/prefs.dart';

class add_new_expense extends StatefulWidget {
  const add_new_expense({Key? key}) : super(key: key);


  @override
  State<add_new_expense> createState() => _add_new_expenseState();
}

class _add_new_expenseState extends State<add_new_expense> {

  final expenseApi = new getAllExpenses();

  @override
  void initState () {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_){
      _getAllExpenses(0,10);
    });

  }

  _getAllExpenses(pageOffset,pageCount) async {
      final prefs = await SardePreferences.getInstance();
      var accessToken = await prefs.token;
      var expenseData = await expenseApi.getExpenses(accessToken: accessToken, pageOffset: pageOffset, pageCount: pageCount);
      expenseData!.result!.forEach((element) {
        Widget expense = data1(element.expense??"",element.amount??"",element.reference??"");
        expenseDataList.add(expense);
      });
      setState(() {});
  }


  final List<Widget> expenseDataList = [];
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
              itemCount: expenseDataList.length,
              itemBuilder: (BuildContext context,int index){
                return expenseDataList[index];
              }
          ),
        ),
        dialogue_box(dataCallback: (data){
          Widget expense = data1(data[0],data[1],data[2]);
          expenseDataList.add(expense);
          setState(() {});
        },),

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
