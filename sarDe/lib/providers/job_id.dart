import 'package:flutter/material.dart';
import '../../models/job_card/job_card.dart';
import '../../models/SubJObs/subJOb.dart' as eos;
class JobIDProvider extends ChangeNotifier {
  JobIDProvider(this._jobID, this._jobTitle, this._jobResult,this._subJobResult);

  String _jobID;
  String _jobTitle;
  Result _jobResult;
  Result _subJobResult;

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

  void setResults(Result subJobResult) {
    _subJobResult = subJobResult;
    notifyListeners();
  }

  Result get jobResult {
    return _jobResult;
  }

  Result get subJobResult {
    return _subJobResult;
  }

  String get jobID {
    return _jobID;
  }

  String get jobTitle {
    return _jobTitle;
  }
}
