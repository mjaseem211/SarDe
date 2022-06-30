// To parse this JSON data, do
//
//     final listAllQualityCheckModel = listAllQualityCheckModelFromJson(jsonString);

// ignore_for_file: file_names

import 'dart:convert';

ListAllQualityCheckModel listAllQualityCheckModelFromJson(String str) =>
    ListAllQualityCheckModel.fromJson(json.decode(str));

String listAllQualityCheckModelToJson(ListAllQualityCheckModel data) =>
    json.encode(data.toJson());

class ListAllQualityCheckModel {
  ListAllQualityCheckModel({
    required this.result,
    required this.status,
  });

  List<Result> result;
  String status;

  factory ListAllQualityCheckModel.fromJson(Map<String, dynamic> json) =>
      ListAllQualityCheckModel(
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
    required this.fileName,
    required this.fileFullUrl,
    required this.subjobId,
    required this.thickness,
    required this.edgeAlignment,
    required this.comment,
    required this.createdDate,
  });

  String id;
  String userId;
  String jobId;
  String fileName;
  String fileFullUrl;
  String subjobId;
  String thickness;
  String edgeAlignment;
  String comment;
  DateTime createdDate;

  factory Result.fromJson(Map<String, dynamic> json) => Result(
        id: json["id"],
        userId: json["user_id"],
        jobId: json["job_id"],
        fileName: json["file_name"],
        fileFullUrl: json["file_full_url"],
        subjobId: json["subjob_id"],
        thickness: json["thickness"],
        edgeAlignment: json["edge_alignment"],
        comment: json["comment"],
        createdDate: DateTime.parse(json["created_date"]),
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "user_id": userId,
        "job_id": jobId,
        "file_name": fileName,
        "file_full_url": fileFullUrl,
        "subjob_id": subjobId,
        "thickness": thickness,
        "edge_alignment": edgeAlignment,
        "comment": comment,
        "created_date": createdDate.toIso8601String(),
      };
}
