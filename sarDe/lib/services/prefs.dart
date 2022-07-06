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

  // JobId Specific
  Future<String?> get jobId async {
    return _prefs.getString('job_id');
  }

  set jobsId(String jobId) {
    _prefs.setString('job_id', jobId);
  }


  // SubJobId
  Future<String?> get subJobId async {
    return _prefs.getString('subjob_id');
  }

  set subJobsId(String subJobId) {
    _prefs.setString('subjob_id', subJobId);
  }

  // User Name
  String? get name {
    return _prefs.getString('name');
  }

  set userName(String name) {
    _prefs.setString('name', name);
  }

// userFile


  String? get userfile {
    return _prefs.getString('userfile');
  }

  set userFile(String userfile) {
    _prefs.setString('userfile', userfile);
  }
}