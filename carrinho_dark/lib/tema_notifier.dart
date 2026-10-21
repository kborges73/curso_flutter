import 'package:flutter/material.dart';

class TemaNotifier extends ChangeNotifier {
  bool _isDarkMode=false;

  // Getter para ler o estado atual
  bool get isDarkMode => _isDarkMode;

  void alteraTema() {
    _isDarkMode = !_isDarkMode;
    notifyListeners();
  }
}