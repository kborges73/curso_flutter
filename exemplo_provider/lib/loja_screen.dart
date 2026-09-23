import 'package:exemplo_provider/carrinho_model.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class LojaScreen extends StatelessWidget {
  const LojaScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Loja')),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () {
                // Modifica o estado global
                context.read<CarrinhoModel>().adicionarItem();
              },
              child: const Text('Adicionar Item ao Carrinho ➕'),
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () => Navigator.pushNamed(context, '/carrinho'),
              child: const Text('Ir para o Carrinho ➡️'),
            ),
          ],
        ),
      ),
    );
  }
}