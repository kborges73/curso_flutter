import 'package:flutter/material.dart';

class ListarAniversarios extends StatefulWidget {
  static const nomeRota = '/listaraniversarios';

  const ListarAniversarios({Key? key}) : super(key: key);

  _ListarAniversarioState createState() => _ListarAniversarioState();
}

class _ListarAniversarioState extends State<ListarAniversarios> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Aniversários Cadastrados')),
    );
  }
}
