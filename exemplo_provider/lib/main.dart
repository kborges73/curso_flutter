import 'package:exemplo_provider/carrinho_model.dart';
import 'package:exemplo_provider/meu_app.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(
    ChangeNotifierProvider(
      create: (context) => CarrinhoModel(),
      child: const MeuApp(),
    ),
  );
}

