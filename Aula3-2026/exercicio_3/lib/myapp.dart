import 'package:flutter/material.dart';
import 'package:Exercicio3/cadastrar_pessoa.dart';
import 'package:Exercicio3/detalhes_aniversario.dart';
import 'package:Exercicio3/listar_aniversarios.dart';
import 'package:Exercicio3/login_page.dart';
import 'package:Exercicio3/my_homepage.dart';

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

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
