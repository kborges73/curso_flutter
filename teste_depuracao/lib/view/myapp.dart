import 'package:flutter/material.dart';
import 'myhomepage.dart';

// ignore: camel_case_types
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Agenda de Aniversários',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(
          seedColor: Color.fromARGB(255, 16, 14, 129),
        ),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Teste de Logging'),
    );
  }
}
