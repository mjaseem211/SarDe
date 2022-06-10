// To parse this JSON data, do
//
//     final expenseModels = expenseModelsFromJson(jsonString);

import 'dart:convert';

ExpenseModels expenseModelsFromJson(String str) =>
    ExpenseModels.fromJson(json.decode(str));

String expenseModelsToJson(ExpenseModels data) => json.encode(data.toJson());

class ExpenseModels {
  ExpenseModels({
    required this.result,
    required this.status,
  });

  List<Result> result;
  String status;

  factory ExpenseModels.fromJson(Map<String, dynamic> json) => ExpenseModels(
        result:
            List<Result>.from(json["result"].map((x) => Result.fromJson(x))),
        status: json["status"],
      );

  Map<String, dynamic> toJson() => {
        "result": List<dynamic>.from(result.map((x) => x.toJson())),
        "status": status,
      };
}

class Result {
  Result({
    required this.expense,
    required this.amount,
    required this.reference,
  });

  String expense;
  String amount;
  String reference;

  factory Result.fromJson(Map<String, dynamic> json) => Result(
        expense: json["expense"],
        amount: json["amount"],
        reference: json["reference"],
      );

  Map<String, dynamic> toJson() => {
        "expense": expense,
        "amount": amount,
        "reference": reference,
      };
}
