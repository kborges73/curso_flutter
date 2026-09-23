import 'package:flutter/material.dart';

class CadastrarPessoa extends StatefulWidget {
  static const nomeRota = "/cadastrarpessoa";

  const CadastrarPessoa({Key? key}) : super(key: key);

  @override
  _CadastrarPessoaState createState() => _CadastrarPessoaState();
}

class _CadastrarPessoaState extends State<CadastrarPessoa> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Cadastre os Dados dos Aniversariantes'),
      ),
      body: Center(
        child: ElevatedButton(
            child: Text('Clique para ver os dados cadastrados'),
            onPressed: () {
              //TODO: ir para DetalhesAniversario
            }),
      ),
    );
  }
}
