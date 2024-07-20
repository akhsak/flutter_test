import 'package:flutter/material.dart';

class RadioController extends ChangeNotifier {
  String radioval = 'male';

  void change(val) {
    radioval = val;
    notifyListeners();
  }
}
