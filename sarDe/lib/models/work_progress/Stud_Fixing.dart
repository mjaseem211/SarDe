// To parse this JSON data, do
//
//     final addStudFixingWorkProgressModel = addStudFixingWorkProgressModelFromJson(jsonString);

// ignore_for_file: file_names

import 'dart:convert';

AddStudFixingWorkProgressModel addStudFixingWorkProgressModelFromJson(String str) => AddStudFixingWorkProgressModel.fromJson(json.decode(str));

String addStudFixingWorkProgressModelToJson(AddStudFixingWorkProgressModel data) => json.encode(data.toJson());

class AddStudFixingWorkProgressModel {
  AddStudFixingWorkProgressModel({
    this.result,
    this.status,
  });

  String? result;
  String? status;

  factory AddStudFixingWorkProgressModel.fromJson(Map<String, dynamic> json) => AddStudFixingWorkProgressModel(
    result: json["result"],
    status: json["status"],
  );

  Map<String, dynamic> toJson() => {
    "result": result,
    "status": status,
  };
}
