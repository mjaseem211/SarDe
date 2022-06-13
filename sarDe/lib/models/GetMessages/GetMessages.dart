// To parse this JSON data, do
//
//     final getMessageModel = getMessageModelFromJson(jsonString);

import 'dart:convert';

GetMessageModel getMessageModelFromJson(String str) =>
    GetMessageModel.fromJson(json.decode(str));

String getMessageModelToJson(GetMessageModel data) =>
    json.encode(data.toJson());

class GetMessageModel {
  GetMessageModel({
    required this.messages,
    required this.status,
  });

  List<Message> messages;
  String status;

  factory GetMessageModel.fromJson(Map<String, dynamic> json) =>
      GetMessageModel(
        messages: List<Message>.from(
            json["messages"].map((x) => Message.fromJson(x))),
        status: json["status"],
      );

  Map<String, dynamic> toJson() => {
        "messages": List<dynamic>.from(messages.map((x) => x.toJson())),
        "status": status,
      };
}

class Message {
  Message({
    required this.id,
    required this.visibility,
    required this.supervisorId,
    required this.messageTitle,
    required this.messageDescription,
    required this.createdDate,
  });

  String id;
  String visibility;
  String supervisorId;
  String messageTitle;
  String messageDescription;
  DateTime createdDate;

  factory Message.fromJson(Map<String, dynamic> json) => Message(
        id: json["id"],
        visibility: json["visibility"],
        supervisorId: json["supervisor_id"],
        messageTitle: json["message_title"],
        messageDescription: json["message_description"],
        createdDate: DateTime.parse(json["created_date"]),
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "visibility": visibility,
        "supervisor_id": supervisorId,
        "message_title": messageTitle,
        "message_description": messageDescription,
        "created_date": createdDate.toIso8601String(),
      };
}
