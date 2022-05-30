import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:sarde/models/api_model.dart';
import 'package:sarde/models/expense.dart';
import 'package:sarde/models/login.dart';
import 'package:sarde/models/Tools.dart';

class SardeAPI {
  static const String _baseUrl = 'http://renr.in/index.php/API/';

  static Future<Map<String, dynamic>> post(String url,
      Map<String, dynamic> body,) async {
    final response = await http.post(
      Uri.parse(_baseUrl + url),
      body: body,
    );

    // TODO: Status Code != 200
    if (response.statusCode != 200) {
      throw Exception('Failed to load post');
    }

    Map<String, dynamic> res = json.decode(response.body);

    res.addAll({
      'statusCode': response.statusCode,
    });

    return res;
  }

  static Future<Map<String, dynamic>> get(url) async {
    final response = await http.get(url);
    return json.decode(response.body);
  }

  static Future<APIModel<LoginModel>> login(String email,
      String password,) async {
    final response = await post('Login/check_login', {
      'email': email,
      'password': password,
    });
    return APIModel<LoginModel>.fromJson(
      response,
          (json) => LoginModel.fromJson(json),
    );
  }

  static Future<APIModel<ExpenseModel>> addExpense(String accessToken,
      String expense,
      String amt,
      String reference,) async {
    final response = await post('Expense/add_expense', {
      'access_token': accessToken,
      'expense': expense,
      'amount': amt,
      'reference': reference,
    });
    return APIModel<ExpenseModel>.fromJson(
      response,
          (json) => ExpenseModel.fromJson(json),
    );
  }

  static Future<APIModel<ToolsModel>> addTools(String accessToken,
      String item,
      String quantity,
      String condition,) async {
    final response = await post('Tools/add_tools', {
      'access_token': accessToken,
      'item': item,
      'quantity': quantity,
      'condition': condition,
    });
    return APIModel<ToolsModel>.fromJson(
      response,
          (json) => ToolsModel.fromJson(json),
    );
  }
}



