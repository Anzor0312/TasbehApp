import 'package:flutter/material.dart';

class HomeProvider extends ChangeNotifier {
  int currency = 0;

  void change() {
    print(currency);
    if (currency >= 0) {
      currency++;
      notifyListeners();
      // if (currency == 99) {
      //   currency = 0;
      //   notifyListeners();
      // }
    }
  }

  void minus() {
    if (currency > 0) {
      currency--;
      notifyListeners();
    } else {
      currency = 0;
      notifyListeners();
    }
  }
}
