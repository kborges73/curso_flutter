
import 'package:carrinho_dark/carrinho_screen.dart';
import 'package:carrinho_dark/loja_screen.dart';
import 'package:carrinho_dark/tema_notifier.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    final isDarkMode = context.watch<TemaNotifier>().isDarkMode;

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Exemplo de Tema com Provider',
      // Define o tema com base no estado global
      theme: isDarkMode ? ThemeData.dark() : ThemeData.light(),
      initialRoute: '/',
      routes: {
        '/': (context) => const LojaScreen(),
        '/carrinho': (context) => const CarrinhoScreen(),
      },
    );
  }
}