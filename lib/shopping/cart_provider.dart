import 'package:flutter/material.dart';

class CartProvider extends ChangeNotifier {
  int value;
  CartProvider({
    this.value = 0,
  });

  void incrementCounter() {
    value++;
    notifyListeners();
  }

  void decrementCounter() {
    value--;
    notifyListeners();
  }
}
