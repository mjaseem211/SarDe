class APIModel<T> {
  int statusCode;
  String status;
  dynamic result;

  APIModel({
    required this.statusCode,
    required this.status,
    this.result,
  });

  factory APIModel.fromJson(Map<String, dynamic> json,
      [T Function(Map<String, dynamic>)? fromJson]) {
    return APIModel(
      statusCode: json['statusCode'],
      status: json['status'],
      result: json['result'].runtimeType == String
          ? json['result']
          : fromJson!(json['result']),
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'statusCode': statusCode,
      'status': status,
      'result': result,
    };
  }
}
