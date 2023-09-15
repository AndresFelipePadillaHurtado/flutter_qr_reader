import 'package:flutter/material.dart';

class CustomNavedatorBarProvider extends ChangeNotifier {
  int _currentIndex = 0;

  get currentIndex => _currentIndex;

  set setcurrentIndex(int valor) {
    _currentIndex = valor;
    notifyListeners();
  }
}
