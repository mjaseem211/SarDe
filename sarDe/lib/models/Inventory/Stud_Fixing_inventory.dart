// To parse this JSON data, do
//
//     final studFixingInventoryModel = studFixingInventoryModelFromJson(jsonString);

// ignore_for_file: file_names

import 'dart:convert';

StudFixingInventoryModel studFixingInventoryModelFromJson(String str) => StudFixingInventoryModel.fromJson(json.decode(str));

String studFixingInventoryModelToJson(StudFixingInventoryModel data) => json.encode(data.toJson());

class StudFixingInventoryModel {
  StudFixingInventoryModel({
    this.result,
    this.status,
  });

  String? result;
  String? status;

  factory StudFixingInventoryModel.fromJson(Map<String, dynamic> json) => StudFixingInventoryModel(
    result: json["result"],
    status: json["status"],
  );

  Map<String, dynamic> toJson() => {
    "result": result,
    "status": status,
  };
}
