// To parse this JSON data, do
//
//     final getAllToolsModel = getAllToolsModelFromJson(jsonString);

import 'dart:convert';

GetAllToolsModel getAllToolsModelFromJson(String str) => GetAllToolsModel.fromJson(json.decode(str));

String getAllToolsModelToJson(GetAllToolsModel data) => json.encode(data.toJson());

class GetAllToolsModel {
  GetAllToolsModel({
    required this.result,
    required this.status,
  });

  List<Result> result;
  String status;

  factory GetAllToolsModel.fromJson(Map<String, dynamic> json) => GetAllToolsModel(
    result: List<Result>.from(json["result"].map((x) => Result.fromJson(x))),
    status: json["status"],
  );

  Map<String, dynamic> toJson() => {
    "result": List<dynamic>.from(result.map((x) => x.toJson())),
    "status": status,
  };
}

class Result {
  Result({
    required this.item,
    required this.quantity,
    required this.condition,
  });

  String item;
  String quantity;
  String condition;

  factory Result.fromJson(Map<String, dynamic> json) => Result(
    item: json["item"],
    quantity: json["quantity"],
    condition: json["condition"],
  );

  Map<String, dynamic> toJson() => {
    "item": item,
    "quantity": quantity,
    "condition": condition,
  };
}
