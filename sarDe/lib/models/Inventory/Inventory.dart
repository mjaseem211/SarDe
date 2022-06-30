// To parse this JSON data, do
//
//     final addNewInventoryModel = addNewInventoryModelFromJson(jsonString);

// ignore_for_file: file_names

import 'dart:convert';

AddNewInventoryModel addNewInventoryModelFromJson(String str) => AddNewInventoryModel.fromJson(json.decode(str));

String addNewInventoryModelToJson(AddNewInventoryModel data) => json.encode(data.toJson());

class AddNewInventoryModel {
  AddNewInventoryModel({
    required this.result,
    required this.status,
  });

  String result;
  String status;

  factory AddNewInventoryModel.fromJson(Map<String, dynamic> json) => AddNewInventoryModel(
    result: json["result"],
    status: json["status"],
  );

  Map<String, dynamic> toJson() => {
    "result": result,
    "status": status,
  };
}
