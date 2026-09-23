import 'package:flutter/material.dart';

class CarrinhoModel extends ChangeNotifier {
  int _quantidade = 0;

  int get quantidade => _quantidade;

  void adicionarItem() {
    _quantidade++;
    notifyListeners(); // Notifica todas as telas conectadas!
  }
}