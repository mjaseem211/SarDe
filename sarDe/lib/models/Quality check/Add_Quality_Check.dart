// To parse this JSON data, do
//
//     final addNewQualityCheckModel = addNewQualityCheckModelFromJson(jsonString);

// ignore_for_file: file_names

import 'dart:convert';

AddNewQualityCheckModel addNewQualityCheckModelFromJson(String str) => AddNewQualityCheckModel.fromJson(json.decode(str));

String addNewQualityCheckModelToJson(AddNewQualityCheckModel data) => json.encode(data.toJson());

class AddNewQualityCheckModel {
  AddNewQualityCheckModel({
    required this.result,
    required this.status,
  });

  String result;
  String status;

  factory AddNewQualityCheckModel.fromJson(Map<String, dynamic> json) => AddNewQualityCheckModel(
    result: json["result"],
    status: json["status"],
  );

  Map<String, dynamic> toJson() => {
    "result": result,
    "status": status,
  };
}
