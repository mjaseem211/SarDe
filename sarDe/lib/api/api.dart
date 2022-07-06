import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:sarde/models/api_model.dart';
import 'package:sarde/models/Expense/expense.dart';
import 'package:sarde/models/login.dart';
import 'package:sarde/models/Tools/Tools.dart';
import '../models/Inventory/Inventory.dart';
import '../models/Labours/Add_Labours.dart';
import '../models/Quality check/Add_Quality_Check.dart';
import '../models/work_progress/Add_new_work_progress.dart';

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

  static Future<LoginModel> login(
    String email,
    String password,
  ) async {
    final response = await post('Login/check_login', {
      'email': email,
      'password': password,
    });

    return LoginModel.fromJson(
      response,
    );
  }

  static Future<APIModel<ExpenseModel>> addExpense(
    String accessToken,
    String jobId,
    String expense,
    String amt,
    String reference,
  ) async {
    final response = await post('Expense/add_expense', {
      'access_token': accessToken,
      'job_id': jobId,
      'expense': expense,
      'amount': amt,
      'reference': reference,
    });
    return APIModel<ExpenseModel>.fromJson(
      response,
      (json) => ExpenseModel.fromJson(json),
    );
  }

  static Future<APIModel<ToolsModel>> addTools(
    String accessToken,
    String jobId,
    String item,
    String quantity,
    String condition,
  ) async {
    final response = await post('Tools/add_tools', {
      'access_token': accessToken,
      'job_id': jobId,
      'item': item,
      'quantity': quantity,
      'condition': condition,
    });
    return APIModel<ToolsModel>.fromJson(
      response,
      (json) => ToolsModel.fromJson(json),
    );
  }

  static Future<APIModel<AddLaboursModel>> addLabours(
    String accessToken,
    String jobId,
    String name,
    String trade,
    String type,
    String hours,
  ) async {
    final response = await post('Labours/add_labours_work', {
      'access_token': accessToken,
      'job_id': jobId,
      'name': name,
      'trade': trade,
      'type': type,
      'hours': hours,
    });
    return APIModel<AddLaboursModel>.fromJson(
      response,
      (json) => AddLaboursModel.fromJson(json),
    );
  }

  static Future<APIModel<AddNewWorkProgressModel>> addNewWorkProgress(
    String accessToken,
    String jobId,
    String subJobId,
    String itemdescription,
    String no,
    String length,
    String width,
    String meterSqr,
  ) async {
    final response = await post('WorkProgress/add_item', {
      'access_token': accessToken,
      'job_id': jobId,
      'subjob_id': subJobId,
      'item_description': itemdescription,
      'no': no,
      'length': length,
      'width': width,
      'meter_sqr': meterSqr
    });
    return APIModel<AddNewWorkProgressModel>.fromJson(
      response,
      (json) => AddNewWorkProgressModel.fromJson(json),
    );
  }

  static Future<APIModel<AddNewInventoryModel>> addNewInventory(
    String accessToken,
    String jobId,
    String subJobId,
    String item,
    String quantity,
  ) async {
    final response = await post('Inventory/add_item', {
      'access_token': accessToken,
      'job_id': jobId,
      'subjob_id': subJobId,
      'item': item,
      'quantity': quantity,
    });
    return APIModel<AddNewInventoryModel>.fromJson(
      response,
      (json) => AddNewInventoryModel.fromJson(json),
    );
  }

  static Future<APIModel<AddNewQualityCheckModel>> addNewQualityCheck(
    String accessToken,
    String jobId,
    String userFile,
    String location,
    String subJobId,
    String thickness,
    String edgeAlignment,
    String comment,
  ) async {
    final response = await post('QualityCheck/add_quality_check', {
      'access_token': accessToken,
      'job_id': jobId,
      'userfile': userFile,
      'location': location,
      'subjob_id': subJobId,
      'thickness': thickness,
      'edge_alignment': edgeAlignment,
      'comment': comment
    });
    return APIModel<AddNewQualityCheckModel>.fromJson(
      response,
      (json) => AddNewQualityCheckModel.fromJson(json),
    );
  }
}
