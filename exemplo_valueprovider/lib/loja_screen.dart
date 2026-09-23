
import 'package:exemplo_valueprovider/meu_app.dart';
import 'package:flutter/material.dart';

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
               carrinhoNotifier.value++;
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