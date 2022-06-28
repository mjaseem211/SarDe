import 'package:flutter/material.dart';
import '../../models/SubJobs/subJOb.dart';

class SubJobIDProvider extends ChangeNotifier {
  SubJobIDProvider(this._subJob);

  Result _subJob;

  void setJobID(Result subJob) {
    _subJob = subJob;
    notifyListeners();
  }

  Result get subJob {
    return _subJob;
  }
}
