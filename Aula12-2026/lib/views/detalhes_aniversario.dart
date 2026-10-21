import 'package:aula12/models/pessoa.dart';
import 'package:aula12/views/my_homepage.dart';
import 'package:flutter/material.dart';

class DetalhesAniversario extends StatefulWidget {
  static const nomeRota = '/detalhesaniversario';
  
  const DetalhesAniversario({super.key});

  @override
  State<DetalhesAniversario> createState() => _DetalhesAniversarioState();
}

class _DetalhesAniversarioState extends State<DetalhesAniversario> {

  @override
  Widget build(BuildContext context) {
    final Pessoa pessoa = ModalRoute.of(context)!.settings.arguments as Pessoa;
assert(
  pessoa.nome != null && pessoa.nome!.isNotEmpty,
   "'nome' é nulo ou é uma string vazia",
);    return Scaffold(
        appBar: AppBar(
          title: Text(pessoa.nome!),
        ),
        body:  Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Text("Email: ${pessoa.email!}"),
              Text("Telefone: ${pessoa.telefone!}"),
              Text("Aniversário: ${pessoa.aniversario!}"),
              Text("Categoria: ${pessoa.categoria!}"),
              Text("Id: ${pessoa.id ?? 'nulo'}"),
              const SizedBox(height: 16.0),
              ElevatedButton(
                onPressed: () {
                  Navigator.pushNamed(context, MyHomePage.nomeRota);
                },
                child: const Text('Voltar para a Página Inicial'),
              ),
            ]
            
          )
        );
  }
} // build
