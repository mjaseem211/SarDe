import 'package:flutter/material.dart';
import '../../models/SubJobs/subJOb.dart';

class SubJobIDProvider extends ChangeNotifier {
  SubJobIDProvider(this._subJobId);

  String _subJobId;

  void setJobID(String id) {
    _subJobId = id;
    notifyListeners();
  }

  String get subJob {
    return _subJobId;
  }
}
