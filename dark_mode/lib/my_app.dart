import 'package:dark_mode/my_homepage.dart';
import 'package:dark_mode/tema_notifier.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    // 🎧 O MaterialApp escuta o ThemeNotifier para alterar a propriedade 'theme'
    final isDarkMode = context.watch<TemaNotifier>().isDarkMode;

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Exemplo de Tema com Provider',
      // Define o tema com base no estado global
      theme: isDarkMode ? ThemeData.dark() : ThemeData.light(),
      home: const MyHomepage(),
    );
  }
}