import 'package:flutter/material.dart';


class Provaider with ChangeNotifier {
    int buttonindex = -1;
    int pageindex = 1;

  void storvalue() {
    pageindex++;
    notifyListeners();

  }
  void tuch(index) {
    buttonindex = index;
    notifyListeners();
  }
}