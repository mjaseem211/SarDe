// To parse this JSON data, do
//
//     final jobCardModel = jobCardModelFromJson(jsonString);

import 'dart:convert';

JobCardModel jobCardModelFromJson(String str) => JobCardModel.fromJson(json.decode(str));

String jobCardModelToJson(JobCardModel data) => json.encode(data.toJson());

class JobCardModel {
  JobCardModel({
    this.result,
    this.status,
  });

  List<Result>? result;
  String? status;

  factory JobCardModel.fromJson(Map<String, dynamic> json) => JobCardModel(
    result: List<Result>.from(json["result"].map((x) => Result.fromJson(x))),
    status: json["status"],
  );

  Map<String, dynamic> toJson() => {
    "result": List<dynamic>.from(result!.map((x) => x.toJson())),
    "status": status,
  };
}

class Result {
  Result({
    this.id,
    this.jobTitle,
    this.jobDescription,
    this.startDateTime,
    this.finishDateTime,
    this.roadMarkingSqm,
    this.studFixingNos,
    this.boardFixingNos,
    this.totalHoursTook,
    this.averegeCompleted,
    this.createdDate,
  });

  String? id;
  String? jobTitle;
  String? jobDescription;
  dynamic startDateTime;
  dynamic finishDateTime;
  dynamic roadMarkingSqm;
  dynamic studFixingNos;
  dynamic boardFixingNos;
  int? totalHoursTook;
  int? averegeCompleted;
  DateTime? createdDate;

  factory Result.fromJson(Map<String, dynamic> json) => Result(
    id: json["id"],
    jobTitle: json["job_title"],
    jobDescription: json["job_description"],
    startDateTime: json["start_date_time"],
    finishDateTime: json["finish_date_time"],
    roadMarkingSqm: json["road_marking_sqm"],
    studFixingNos: json["stud_fixing_nos"],
    boardFixingNos: json["board_fixing_nos"],
    totalHoursTook: json["total_hours_took"],
    averegeCompleted: json["averege_completed"],
    createdDate: DateTime.parse(json["created_date"]),
  );

  Map<String, dynamic> toJson() => {
    "id": id,
    "job_title": jobTitle,
    "job_description": jobDescription,
    "start_date_time": startDateTime,
    "finish_date_time": finishDateTime,
    "road_marking_sqm": roadMarkingSqm,
    "stud_fixing_nos": studFixingNos,
    "board_fixing_nos": boardFixingNos,
    "total_hours_took": totalHoursTook,
    "averege_completed": averegeCompleted,
    "created_date": createdDate!.toIso8601String(),
  };
}
