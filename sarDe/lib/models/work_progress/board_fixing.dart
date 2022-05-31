// To parse this JSON data, do
//
//     final addBoardFixingWorkProgressModel = addBoardFixingWorkProgressModelFromJson(jsonString);

import 'dart:convert';

AddBoardFixingWorkProgressModel addBoardFixingWorkProgressModelFromJson(
        String str) =>
    AddBoardFixingWorkProgressModel.fromJson(json.decode(str));

String addBoardFixingWorkProgressModelToJson(
        AddBoardFixingWorkProgressModel data) =>
    json.encode(data.toJson());

class AddBoardFixingWorkProgressModel {
  AddBoardFixingWorkProgressModel({
    this.result,
    this.status,
  });

  String? result;
  String? status;

  factory AddBoardFixingWorkProgressModel.fromJson(Map<String, dynamic> json) =>
      AddBoardFixingWorkProgressModel(
        result: json["result"],
        status: json["status"],
      );

  Map<String, dynamic> toJson() => {
        "result": result,
        "status": status,
      };
}
