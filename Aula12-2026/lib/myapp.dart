import 'package:flutter/material.dart';
import 'package:aula12/views/cadastrar_pessoa.dart';
import 'package:aula12/views/detalhes_aniversario.dart';
import 'package:aula12/views/listar_aniversarios.dart';
import 'package:aula12/views/login_page.dart';
import 'package:aula12/views/my_homepage.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Agenda de Aniversários',
      theme: ThemeData(primarySwatch: Colors.blue),

      home: const LoginPage(title: 'Agenda de Aniversários'),
      routes: {
        MyHomePage.nomeRota: (context) => const MyHomePage(),
        CadastrarPessoa.nomeRota: (context) => const CadastrarPessoa(),
        ListarAniversarios.nomeRota: (context) => const ListarAniversarios(),
        DetalhesAniversario.nomeRota: (context) => DetalhesAniversario(),
      },
    );
  }
}
