import 'package:flutter/material.dart';
import '../../models/job_card/job_card.dart';

class JobIDProvider extends ChangeNotifier {
  JobIDProvider(this._jobID, this._jobTitle, this._jobResult);

  String _jobID;
  String _jobTitle;
  Result _jobResult;

  void setJobID(String id) {
    _jobID = id;
    notifyListeners();
  }

  void setJobTitle(String jobTitle) {
    _jobTitle = jobTitle;
    notifyListeners();
  }

  void setResult(Result jobResult) {
    _jobResult = jobResult;
    notifyListeners();
  }

  Result get jobResult {
    return _jobResult;
  }

  String get jobID {
    return _jobID;
  }

  String get jobTitle {
    return _jobTitle;
  }
}
