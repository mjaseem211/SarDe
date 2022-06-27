// ignore_for_file: file_names

import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

import '../models/Inventory/listing.dart';

class GetAllInventory {
  final Dio _dio = Dio();

  final _baseUrl = 'http://renr.in/index.php/API/';

  Future<ListAllInventoryModel?> getInventory(
      {required accessToken,
      required jobId,
      required subJobId,
      required pageOffset,
      required pageCount}) async {
    ListAllInventoryModel? inventoryResponse;
    var formData = FormData.fromMap({
      "access_token": accessToken,
      "job_id": jobId,
      "subjob_id": subJobId,
      "page_offset": pageOffset,
      "page_count": pageCount
    });

    try {
      Response response =
          await _dio.post(_baseUrl + 'Inventory/list_all_item', data: formData);

      inventoryResponse = ListAllInventoryModel.fromJson(response.data);
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
    return inventoryResponse;
  }
}
