// To parse this JSON data, do
//
//     final addLaboursModel = addLaboursModelFromJson(jsonString);

import 'dart:convert';

AddLaboursModel addLaboursModelFromJson(String str) => AddLaboursModel.fromJson(json.decode(str));

String addLaboursModelToJson(AddLaboursModel data) => json.encode(data.toJson());

class AddLaboursModel {
  AddLaboursModel({
    this.result,
    this.status,
  });

  String? result;
  String? status;

  factory AddLaboursModel.fromJson(Map<String, dynamic> json) => AddLaboursModel(
    result: json["result"],
    status: json["status"],
  );

  Map<String, dynamic> toJson() => {
    "result": result,
    "status": status,
  };
}
