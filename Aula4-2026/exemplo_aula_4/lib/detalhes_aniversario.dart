import 'package:flutter/material.dart';

class DetalhesAniversario extends StatelessWidget {
  static const nomeRota = '/detalhesaniversario';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
           title: const Text('Dados do Aniversariante'),
        ),
        body: Center(
            child: Column(children: [
            ElevatedButton(
              child: const Text('Voltar para Página Principal'),
              onPressed: () {
                //TODO: vai para homepage
              })
    ])));
  }
} // build
