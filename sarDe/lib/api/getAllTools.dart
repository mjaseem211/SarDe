// ignore_for_file: file_names

import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

import '../models/Tools/listing.dart';

class GetAllTools {
  final Dio _dio = Dio();

  final _baseUrl = 'http://renr.in/index.php/API/';

  Future<GetAllToolsModel?> getTools(
      {required accessToken,
      required jobId,
      required pageOffset,
      required pageCount}) async {
    GetAllToolsModel? toolsResponse;
    var formData = FormData.fromMap({
      "access_token": accessToken,
      "job_id": jobId,
      "page_offset": pageOffset,
      "page_count": pageCount
    });

    try {
      Response response =
          await _dio.post(_baseUrl + 'Tools/list_all_tools', data: formData);

      toolsResponse = GetAllToolsModel.fromJson(response.data);
    } on DioError catch (e) {
      Fluttertoast.showToast(
          msg: e.message,
          toastLength: Toast.LENGTH_SHORT,
          gravity: ToastGravity.CENTER,
          timeInSecForIosWeb: 3,
          backgroundColor: Colors.red,
          textColor: Colors.white,
          fontSize: 16.0);
      // The request was made and the server responded with a status code
      // that falls out of the range of 2xx and is also not 304.

      if (e.response != null) {
      } else {
        // Error due to setting up or sending the request

      }
    }
    return toolsResponse;
  }
}
