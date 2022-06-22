// To parse this JSON data, do
//
//     final jobCardModel = jobCardModelFromJson(jsonString);

import 'dart:convert';

JobCardModel jobCardModelFromJson(String str) =>
    JobCardModel.fromJson(json.decode(str));

String jobCardModelToJson(JobCardModel data) => json.encode(data.toJson());

class JobCardModel {
  JobCardModel({
     this.result,
    required this.status,
  });

  List<Result>? result;
  String status;

  factory JobCardModel.fromJson(Map<String, dynamic> json) => JobCardModel(
        result:
            List<Result>.from(json["result"].map((x) => Result.fromJson(x))),
        status: json["status"],
      );

  Map<String, dynamic> toJson() => {
        "result": List<dynamic>.from(result!.map((x) => x.toJson())),
        "status": status,
      };
}

class Result {
  Result({
    required this.id,
    required this.jobTitle,
    required this.jobDescription,
    required this.startDate,
    required this.finishDate,
    required this.totalHoursTook,
    required this.averegeCompleted,
    required this.createdDate,
  });

  String id;
  String jobTitle;
  String jobDescription;
  DateTime startDate;
  DateTime finishDate;
  int totalHoursTook;
  int averegeCompleted;
  DateTime createdDate;

  factory Result.fromJson(Map<String, dynamic> json) => Result(
        id: json["id"],
        jobTitle: json["job_title"],
        jobDescription: json["job_description"],
        startDate: DateTime.parse(json["start_date"]),
        finishDate: DateTime.parse(json["finish_date"]),
        totalHoursTook: json["total_hours_took"],
        averegeCompleted: json["averege_completed"],
        createdDate: DateTime.parse(json["created_date"]),
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "job_title": jobTitle,
        "job_description": jobDescription,
        "start_date":
            "${startDate.year.toString().padLeft(4, '0')}-${startDate.month.toString().padLeft(2, '0')}-${startDate.day.toString().padLeft(2, '0')}",
        "finish_date":
            "${finishDate.year.toString().padLeft(4, '0')}-${finishDate.month.toString().padLeft(2, '0')}-${finishDate.day.toString().padLeft(2, '0')}",
        "total_hours_took": totalHoursTook,
        "averege_completed": averegeCompleted,
        "created_date": createdDate.toIso8601String(),
      };
}
