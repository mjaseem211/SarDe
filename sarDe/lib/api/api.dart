import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:sarde/models/api_model.dart';
import 'package:sarde/models/Expense/expense.dart';
import 'package:sarde/models/login.dart';
import 'package:sarde/models/Tools/Tools.dart';
import '../models/Inventory/Board_Fixing_inventory.dart';
import '../models/Inventory/Road_Marking_inventory.dart';
import '../models/Inventory/Stud_Fixing_inventory.dart';
import '../models/Labours/Add_Labours.dart';
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

  static Future<APIModel<RoadMarkingInventoryModel>> addRoadmarkinginventory(
    String accessToken,
    String item,
    String quantity,
  ) async {
    final response = await post('Inventory/Road_marking/add_item', {
      'access_token': accessToken,
      'item': item,
      'quantity': quantity,
    });
    return APIModel<RoadMarkingInventoryModel>.fromJson(
      response,
      (json) => RoadMarkingInventoryModel.fromJson(json),
    );
  }

  static Future<APIModel<BoardFixingInventoryModel>> addBoardFixinginventory(
    String accessToken,
    String item,
    String quantity,
  ) async {
    final response = await post('Inventory/Board_fixing/add_item', {
      'access_token': accessToken,
      'item': item,
      'quantity': quantity,
    });
    return APIModel<BoardFixingInventoryModel>.fromJson(
      response,
      (json) => BoardFixingInventoryModel.fromJson(json),
    );
  }

  static Future<APIModel<StudFixingInventoryModel>> addStudFixinginventory(
    String accessToken,
    String item,
    String quantity,
  ) async {
    final response = await post('Inventory/Stud_fixing/add_item', {
      'access_token': accessToken,
      'item': item,
      'quantity': quantity,
    });
    return APIModel<StudFixingInventoryModel>.fromJson(
      response,
      (json) => StudFixingInventoryModel.fromJson(json),
    );
  }
}
