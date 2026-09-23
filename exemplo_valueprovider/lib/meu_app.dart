
import 'package:exemplo_valueprovider/carrinho_screen.dart';
import 'package:exemplo_valueprovider/loja_screen.dart';
import 'package:flutter/material.dart';

final ValueNotifier<int> carrinhoNotifier = ValueNotifier<int>(0);

class MeuApp extends StatelessWidget{
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