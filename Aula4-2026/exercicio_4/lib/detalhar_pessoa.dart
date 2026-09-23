// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';

class DetalharPessoa extends StatefulWidget {
  static const nomeRota = "/detalharpessoa";

  const DetalharPessoa({Key? key}) : super(key: key);

  @override
  _DetalharAniversarioState createState() => _DetalharAniversarioState();
}

class _DetalharAniversarioState extends State<DetalharPessoa> {
  @override
  Widget build(BuildContext context) {
    final args =
        ModalRoute.of(context)!.settings.arguments as Map<String, dynamic>;

    return Scaffold(
      appBar: AppBar(title: Text(args['nome']!)),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Text("Email: ${args['email']!}", textScaleFactor: 1.5),
          Text("Telefone: ${args['telefone']!}", textScaleFactor: 1.5),
          Text("Aniversário : ${args['aniversario']!}", textScaleFactor: 1.5),
          Text("Categoria : ${args['categoria']!}", textScaleFactor: 1.5),
          ElevatedButton(child: const Text('Confirmar'), onPressed: () {}),
        ],
      ),
    );
  } // build
} // class _DetalhesAniversarioState
