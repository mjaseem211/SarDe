// To parse this JSON data, do
//
//     final addRoadMarkingWorkProgressModel = addRoadMarkingWorkProgressModelFromJson(jsonString);

import 'dart:convert';

AddRoadMarkingWorkProgressModel addRoadMarkingWorkProgressModelFromJson(String str) => AddRoadMarkingWorkProgressModel.fromJson(json.decode(str));

String addRoadMarkingWorkProgressModelToJson(AddRoadMarkingWorkProgressModel data) => json.encode(data.toJson());

class AddRoadMarkingWorkProgressModel {
  AddRoadMarkingWorkProgressModel({
    this.result,
    this.status,
  });

  String? result;
  String? status;

  factory AddRoadMarkingWorkProgressModel.fromJson(Map<String, dynamic> json) => AddRoadMarkingWorkProgressModel(
    result: json["result"],
    status: json["status"],
  );

  Map<String, dynamic> toJson() => {
    "result": result,
    "status": status,
  };
}
