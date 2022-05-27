// To parse this JSON data, do
//
//     final expenseModel = expenseModelFromJson(jsonString);

import 'dart:convert';

ExpenseModel expenseModelFromJson(String str) => ExpenseModel.fromJson(json.decode(str));

String expenseModelToJson(ExpenseModel data) => json.encode(data.toJson());

class ExpenseModel {
  ExpenseModel({
    this.result,
    this.status,
  });

  String? result;
  String? status;

  factory ExpenseModel.fromJson(Map<String, dynamic> json) => ExpenseModel(
    result: json["result"],
    status: json["status"],
  );

  Map<String, dynamic> toJson() => {
    "result": result,
    "status": status,
  };
}
