// To parse this JSON data, do
//
//     final addNewWorkProgressModel = addNewWorkProgressModelFromJson(jsonString);

// ignore_for_file: file_names

import 'dart:convert';

AddNewWorkProgressModel addNewWorkProgressModelFromJson(String str) => AddNewWorkProgressModel.fromJson(json.decode(str));

String addNewWorkProgressModelToJson(AddNewWorkProgressModel data) => json.encode(data.toJson());

class AddNewWorkProgressModel {
  AddNewWorkProgressModel({
    required this.result,
    required this.status,
  });

  String result;
  String status;

  factory AddNewWorkProgressModel.fromJson(Map<String, dynamic> json) => AddNewWorkProgressModel(
    result: json["result"],
    status: json["status"],
  );

  Map<String, dynamic> toJson() => {
    "result": result,
    "status": status,
  };
}
