import 'dart:convert';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

import '../models/Expense/listing.dart';


class getAllExpenses{
  final Dio _dio = Dio();

  final _baseUrl = 'http://renr.in/index.php/API/';

  Future<ExpenseModels?> getExpenses({required accessToken, required pageOffset, required pageCount}) async {
    ExpenseModels? expenseResponse;
    var formData = FormData.fromMap({
      "access_token" : accessToken,
      "page_offset" : pageOffset,
      "page_count" : pageCount
    });

    try {
      Response response = await _dio.post(_baseUrl+'Expense/list_all_expenses', data: formData);

      expenseResponse = ExpenseModels.fromJson(response.data);
      print(response.data);
    }  on DioError catch (e) {

      Fluttertoast.showToast(
          msg: "${e.message}",
          toastLength: Toast.LENGTH_SHORT,
          gravity: ToastGravity.CENTER,
          timeInSecForIosWeb: 3,

          backgroundColor: Colors.red,
          textColor: Colors.white,
          fontSize: 16.0
      );
      // The request was made and the server responded with a status code
      // that falls out of the range of 2xx and is also not 304.

      if (e.response != null) {



        print('Dio error!');
        print('STATUS: ${e.response?.statusCode}');
        print('DATA: ${e.response?.data}');
        print('HEADERS: ${e.response?.headers}');
      } else {
        // Error due to setting up or sending the request
        print('Error sending request!');
        print(e.message);
      }
    }
    return expenseResponse;
  }


}
