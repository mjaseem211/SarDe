// To parse this JSON data, do
//
//     final expenseModels = expenseModelsFromJson(jsonString);

import 'dart:convert';

ExpenseModels expenseModelsFromJson(String str) => ExpenseModels.fromJson(json.decode(str));

String expenseModelsToJson(ExpenseModels data) => json.encode(data.toJson());

class ExpenseModels {
  ExpenseModels({
    this.result,
    this.status,
  });

  List<Result>? result;
  String? status;

  factory ExpenseModels.fromJson(Map<String, dynamic> json) => ExpenseModels(
    result: List<Result>.from(json["result"].map((x) => Result.fromJson(x))),
    status: json["status"],
  );

  Map<String, dynamic> toJson() => {
    "result": List<dynamic>.from(result!.map((x) => x.toJson())),
    "status": status,
  };
}

class Result {
  Result({
    this.id,
    this.userId,
    this.expense,
    this.amount,
    this.reference,
    this.createdDate,
  });

  String? id;
  String? userId;
  String? expense;
  String? amount;
  String? reference;
  String? createdDate;


  factory Result.fromJson(Map<String, dynamic> json) => Result(
    id: json["id"],
    userId: json["user_id"],
    expense: json["expense"],
    amount: json["amount"],
    reference: json["reference"],
    createdDate: json["created_date"],
  );

  Map<String, dynamic> toJson() => {
    "id": id,
    "user_id": userId,
    "expense": expense,
    "amount": amount,
    "reference": reference,
    "created_date": createdDate,
  };
}
