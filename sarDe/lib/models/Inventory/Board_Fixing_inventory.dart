// To parse this JSON data, do
//
//     final boardFixingInventoryModel = boardFixingInventoryModelFromJson(jsonString);

// ignore_for_file: file_names

import 'dart:convert';

BoardFixingInventoryModel boardFixingInventoryModelFromJson(String str) => BoardFixingInventoryModel.fromJson(json.decode(str));

String boardFixingInventoryModelToJson(BoardFixingInventoryModel data) => json.encode(data.toJson());

class BoardFixingInventoryModel {
  BoardFixingInventoryModel({
    this.result,
    this.status,
  });

  String? result;
  String? status;

  factory BoardFixingInventoryModel.fromJson(Map<String, dynamic> json) => BoardFixingInventoryModel(
    result: json["result"],
    status: json["status"],
  );

  Map<String, dynamic> toJson() => {
    "result": result,
    "status": status,
  };
}
