import 'package:carrinho_dark/carrinho_notifier.dart';
import 'package:carrinho_dark/my_app.dart';
import 'package:carrinho_dark/tema_notifier.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => CarrinhoNotifier()),
        ChangeNotifierProvider(create: (_) => TemaNotifier()),
      ],
      child: const MyApp(),
    ),
  );
}


