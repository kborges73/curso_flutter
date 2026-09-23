import 'package:exemplo_provider/carrinho_screen.dart';
import 'package:exemplo_provider/loja_screen.dart';
import 'package:flutter/material.dart';

class MeuApp extends StatelessWidget {
  const MeuApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: '/',
      routes: {
        '/': (context) => const LojaScreen(),
        '/carrinho': (context) => const CarrinhoScreen(),
      },
    );
  }
}