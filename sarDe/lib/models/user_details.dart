import 'package:flutter/material.dart';
import 'package:sarde/services/prefs.dart';

class UserDetails extends ChangeNotifier {
  String? name;
  String? accessToken;

  UserDetails({
    this.name,
    this.accessToken,
  }) {
    getUserDetails();
  }

  Future<void> getUserDetails() async {
    final prefs = await SardePreferences.getInstance();
    name = prefs.name;
    accessToken = prefs.token;
    notifyListeners();
  }
}
