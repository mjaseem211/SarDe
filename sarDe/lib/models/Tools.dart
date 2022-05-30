// To parse this JSON data, do
//
//     final toolsModel = toolsModelFromJson(jsonString);

import 'dart:convert';

ToolsModel toolsModelFromJson(String str) => ToolsModel.fromJson(json.decode(str));

String toolsModelToJson(ToolsModel data) => json.encode(data.toJson());

class ToolsModel {
  ToolsModel({
    this.result,
    this.status,
  });

  String? result;
  String? status;

  factory ToolsModel.fromJson(Map<String, dynamic> json) => ToolsModel(
    result: json["result"],
    status: json["status"],
  );

  Map<String, dynamic> toJson() => {
    "result": result,
    "status": status,
  };
}
