// To parse this JSON data, do
//
//     final adminAssignedLaboursDropDownModel = adminAssignedLaboursDropDownModelFromJson(jsonString);

import 'dart:convert';

AdminAssignedLaboursDropDownModel adminAssignedLaboursDropDownModelFromJson(
        String str) =>
    AdminAssignedLaboursDropDownModel.fromJson(json.decode(str));

String adminAssignedLaboursDropDownModelToJson(
        AdminAssignedLaboursDropDownModel data) =>
    json.encode(data.toJson());

class AdminAssignedLaboursDropDownModel {
  AdminAssignedLaboursDropDownModel({
    required this.result,
    required this.status,
  });

  List<Result> result;
  String status;

  factory AdminAssignedLaboursDropDownModel.fromJson(
          Map<String, dynamic> json) =>
      AdminAssignedLaboursDropDownModel(
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
    required this.jobId,
    required this.name,
    required this.trade,
    required this.mobile,
    required this.createdDate,
  });

  String id;
  String jobId;
  String name;
  String trade;
  String mobile;
  DateTime createdDate;

  factory Result.fromJson(Map<String, dynamic> json) => Result(
        id: json["id"],
        jobId: json["job_id"],
        name: json["name"],
        trade: json["trade"],
        mobile: json["mobile"],
        createdDate: DateTime.parse(json["created_date"]),
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "job_id": jobId,
        "name": name,
        "trade": trade,
        "mobile": mobile,
        "created_date": createdDate.toIso8601String(),
      };
}
