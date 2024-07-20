import 'package:flutter/material.dart';

class IconController extends ChangeNotifier {

  IconData?icons;

  iconschange(IconData icon) {
     icons=icon;
    notifyListeners();
  }
}
