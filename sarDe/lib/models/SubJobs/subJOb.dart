// To parse this JSON data, do
//
//     final listAllSubJobsModel = listAllSubJobsModelFromJson(jsonString);

import 'dart:convert';

ListAllSubJobsModel listAllSubJobsModelFromJson(String str) =>
    ListAllSubJobsModel.fromJson(json.decode(str));

String listAllSubJobsModelToJson(ListAllSubJobsModel data) =>
    json.encode(data.toJson());

class ListAllSubJobsModel {
  ListAllSubJobsModel({
    required this.result,
    required  this.status,
  });

  Result result;
  String status;

  factory ListAllSubJobsModel.fromJson(Map<String, dynamic> json) =>
      ListAllSubJobsModel(
        result: Result.fromJson(json["result"]),
        status: json["status"],
      );

  Map<String, dynamic> toJson() => {
        "result": result.toJson(),
        "status": status,
      };
}

class Result {
  Result({
    required  this.jobDetails,
    required  this.subJobs,
  });

  List<JobDetail> jobDetails;
  List<SubJob> subJobs;

  factory Result.fromJson(Map<String, dynamic> json) => Result(
        jobDetails: List<JobDetail>.from(
            json["job_details"].map((x) => JobDetail.fromJson(x))),
        subJobs:
            List<SubJob>.from(json["sub_jobs"].map((x) => SubJob.fromJson(x))),
      );

  Map<String, dynamic> toJson() => {
        "job_details": List<dynamic>.from(jobDetails.map((x) => x.toJson())),
        "sub_jobs": List<dynamic>.from(subJobs.map((x) => x.toJson())),
      };
}

class JobDetail {
  JobDetail({
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

  factory JobDetail.fromJson(Map<String, dynamic> json) => JobDetail(
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

class SubJob {
  SubJob({
    required this.id,
    required this.jobId,
    required this.taskName,
    required this.taskDetails,
    required this.total,
    required this.createdDate,
  });

  String id;
  String jobId;
  String taskName;
  String taskDetails;
  String total;
  DateTime createdDate;

  factory SubJob.fromJson(Map<String, dynamic> json) => SubJob(
        id: json["id"],
        jobId: json["job_id"],
        taskName: json["task_name"],
        taskDetails: json["task_details"],
        total: json["total"],
        createdDate: DateTime.parse(json["created_date"]),
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "job_id": jobId,
        "task_name": taskName,
        "task_details": taskDetails,
        "total": total,
        "created_date": createdDate.toIso8601String(),
      };
}
