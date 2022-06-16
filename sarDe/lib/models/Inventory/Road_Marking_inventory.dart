// To parse this JSON data, do
//
//     final roadMarkingInventoryModel = roadMarkingInventoryModelFromJson(jsonString);

// ignore_for_file: file_names

import 'dart:convert';

RoadMarkingInventoryModel roadMarkingInventoryModelFromJson(String str) => RoadMarkingInventoryModel.fromJson(json.decode(str));

String roadMarkingInventoryModelToJson(RoadMarkingInventoryModel data) => json.encode(data.toJson());

class RoadMarkingInventoryModel {
  RoadMarkingInventoryModel({
    this.result,
    this.status,
  });

  String? result;
  String? status;

  factory RoadMarkingInventoryModel.fromJson(Map<String, dynamic> json) => RoadMarkingInventoryModel(
    result: json["result"],
    status: json["status"],
  );

  Map<String, dynamic> toJson() => {
    "result": result,
    "status": status,
  };
}
