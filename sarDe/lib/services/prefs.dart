import 'package:shared_preferences/shared_preferences.dart';

class SardePreferences {
  final SharedPreferences _prefs;
  SardePreferences._(this._prefs);

  static Future<SardePreferences> getInstance() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    return SardePreferences._(prefs);
  }

  Future<bool> setString(String key, String value) async {
    return _prefs.setString(key, value);
  }

  Future<String?> getString(String key) async {
    return _prefs.getString(key);
  }

  // Token Specific
  String? get token {
    return _prefs.getString('token');
  }

  set accessToken(String token) {
    _prefs.setString('token', token);
  }

  Future<bool> removeToken() async {
    return _prefs.remove('token');
  }

  // Token Specific
  Future<String?> get job_id async {
    return _prefs.getString('job_id');
  }

  set jod_id(String job_id) {
    _prefs.setString('access_token', 'job_id');
  }

  // User Name
  String? get name {
    return _prefs.getString('name');
  }

  set userName(String name) {
    _prefs.setString('name', name);
  }
}
