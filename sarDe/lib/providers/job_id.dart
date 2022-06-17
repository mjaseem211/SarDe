import 'package:flutter/material.dart';

class JobIDProvider extends ChangeNotifier {
  JobIDProvider(this._jobID, this._jobTitle);

  String _jobID;
  String _jobTitle;

  void setJobID(String id) {
    _jobID = id;
    notifyListeners();
  }

  void setJobTitle(String jobTitle) {
    _jobTitle = jobTitle;
    notifyListeners();
  }

  String get jobID {
    return _jobID;
  }

  String get jobTitle {
    return _jobTitle;
  }
}
