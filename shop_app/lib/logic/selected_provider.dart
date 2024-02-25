import 'package:flutter/material.dart';

class Selected extends ChangeNotifier {
  int selectIndex = 0;

  selectedIndex(int index) {
    selectIndex = index;
    notifyListeners();
  }
}
