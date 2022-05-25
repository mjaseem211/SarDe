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
  Future<String?> get token async {
    return _prefs.getString('token');
  }

  set accessToken(String token) {
    _prefs.setString('token', token);
  }

  Future<bool> removeToken() async {
    return _prefs.remove('token');
  }
}
