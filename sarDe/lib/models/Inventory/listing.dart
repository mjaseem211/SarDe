// To parse this JSON data, do
//
//     final listAllInventoryModel = listAllInventoryModelFromJson(jsonString);

import 'dart:convert';

ListAllInventoryModel listAllInventoryModelFromJson(String str) =>
    ListAllInventoryModel.fromJson(json.decode(str));

String listAllInventoryModelToJson(ListAllInventoryModel data) =>
    json.encode(data.toJson());

class ListAllInventoryModel {
  ListAllInventoryModel({
    required this.result,
    required this.status,
  });

  List<Result> result;
  String status;

  factory ListAllInventoryModel.fromJson(Map<String, dynamic> json) =>
      ListAllInventoryModel(
        result:
        List<Result>.from(json["result"].map((x) => Result.fromJson(x))),
        status: json["status"],
      );

  Map<String, dynamic> toJson() => {
    "result": List<dynamic>.from(result.map((x) => x.toJson())),
    "status": status,
  };
}

class Result {
  Result({
    required this.id,
    required this.userId,
    required this.jobId,
    required this.subjobId,
    required this.item,
    required this.quantity,
    required this.createdDate,
  });

  String id;
  String userId;
  String jobId;
  String subjobId;
  String item;
  String quantity;
  DateTime createdDate;

  factory Result.fromJson(Map<String, dynamic> json) => Result(
    id: json["id"],
    userId: json["user_id"],
    jobId: json["job_id"],
    subjobId: json["subjob_id"],
    item: json["item"],
    quantity: json["quantity"],
    createdDate: DateTime.parse(json["created_date"]),
  );

  Map<String, dynamic> toJson() => {
    "id": id,
    "user_id": userId,
    "job_id": jobId,
    "subjob_id": subjobId,
    "item": item,
    "quantity": quantity,
    "created_date": createdDate.toIso8601String(),
  };
}
