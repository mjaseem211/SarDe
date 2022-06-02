// To parse this JSON data, do
//
//     final listAllExpenseModel = listAllExpenseModelFromJson(jsonString);

import 'dart:convert';

ListAllExpenseModel listAllExpenseModelFromJson(String str) => ListAllExpenseModel.fromJson(json.decode(str));

String listAllExpenseModelToJson(ListAllExpenseModel data) => json.encode(data.toJson());

class ListAllExpenseModel {
  ListAllExpenseModel({
    required this.result,
    this.status,
  });

  List<Result> result;
  String? status;

  factory ListAllExpenseModel.fromJson(Map<String, dynamic> json) => ListAllExpenseModel(
    result: List<Result>.from(json["result"].map((x) => Result.fromJson(x))),
    status: json["status"],
  );

  Map<String, dynamic> toJson() => {
    "result": List<dynamic>.from(result.map((x) => x.toJson())),
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
