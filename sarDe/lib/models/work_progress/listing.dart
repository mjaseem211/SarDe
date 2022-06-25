// To parse this JSON data, do
//
//     final getAllWorkProgressModel = getAllWorkProgressModelFromJson(jsonString);

import 'dart:convert';

GetAllWorkProgressModel getAllWorkProgressModelFromJson(String str) =>
    GetAllWorkProgressModel.fromJson(json.decode(str));

String getAllWorkProgressModelToJson(GetAllWorkProgressModel data) =>
    json.encode(data.toJson());

class GetAllWorkProgressModel {
  GetAllWorkProgressModel({
    required this.result,
    required this.status,
  });

  List<Result> result;
  String status;

  factory GetAllWorkProgressModel.fromJson(Map<String, dynamic> json) =>
      GetAllWorkProgressModel(
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
    required this.itemDescription,
    required this.no,
    required this.length,
    required this.width,
    required this.meterSqr,
    required this.createdDate,
  });

  String id;
  String userId;
  String jobId;
  String subjobId;
  String itemDescription;
  String no;
  String length;
  String width;
  String meterSqr;
  DateTime createdDate;

  factory Result.fromJson(Map<String, dynamic> json) => Result(
        id: json["id"],
        userId: json["user_id"],
        jobId: json["job_id"],
        subjobId: json["subjob_id"],
        itemDescription: json["item_description"],
        no: json["no"],
        length: json["length"],
        width: json["width"],
        meterSqr: json["meter_sqr"],
        createdDate: DateTime.parse(json["created_date"]),
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "user_id": userId,
        "job_id": jobId,
        "subjob_id": subjobId,
        "item_description": itemDescription,
        "no": no,
        "length": length,
        "width": width,
        "meter_sqr": meterSqr,
        "created_date": createdDate.toIso8601String(),
      };
}
