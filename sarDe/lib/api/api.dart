import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:sarde/models/api_model.dart';
import 'package:sarde/models/login.dart';

class SardeAPI {
  static const String _baseUrl = 'http://renr.in/index.php/API/';

  static Future<Map<String, dynamic>> post(
    String url,
    Map<String, dynamic> body,
  ) async {
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

  static Future<APIModel<LoginModel>> login(
    String email,
    String password,
  ) async {
    final response = await post('Login/check_login', {
      'email': email,
      'password': password,
    });
    return APIModel<LoginModel>.fromJson(
      response,
      (json) => LoginModel.fromJson(json),
    );
  }
}
