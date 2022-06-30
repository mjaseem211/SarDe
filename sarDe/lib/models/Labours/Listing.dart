// To parse this JSON data, do
//
//     final listAllLaboursModel = listAllLaboursModelFromJson(jsonString);

// ignore_for_file: file_names

import 'dart:convert';

ListAllLaboursModel listAllLaboursModelFromJson(String str) => ListAllLaboursModel.fromJson(json.decode(str));

String listAllLaboursModelToJson(ListAllLaboursModel data) => json.encode(data.toJson());

class ListAllLaboursModel {
  ListAllLaboursModel({
    required this.result,
    required this.status,
  });

  List<Result> result;
  String status;

  factory ListAllLaboursModel.fromJson(Map<String, dynamic> json) => ListAllLaboursModel(
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
    required this.id,
    required this.userId,
    required this.jobId,
    required this.name,
    required this.trade,
    required this.type,
    required this.hours,
  });

  String id;
  String userId;
  String jobId;
  String name;
  String trade;
  String type;
  String hours;

  factory Result.fromJson(Map<String, dynamic> json) => Result(
    id: json["id"],
    userId: json["user_id"],
    jobId: json["job_id"],
    name: json["name"],
    trade: json["trade"],
    type: json["type"],
    hours: json["hours"],
  );

  Map<String, dynamic> toJson() => {
    "id": id,
    "user_id": userId,
    "job_id": jobId,
    "name": name,
    "trade": trade,
    "type": type,
    "hours": hours,
  };
}
