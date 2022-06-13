import 'package:flutter/material.dart';

class JobIDProvider extends ChangeNotifier {
  JobIDProvider(this._jobID, this._name);

  String _jobID;
  String _name;

  void setJobID(String id) {
    _jobID = id;
    notifyListeners();
  }

  void setName(String name) {
    _name = name;
    notifyListeners();
  }

  String get jobID {
    return _jobID;
  }

  String get name {
    return _name;
  }
}
