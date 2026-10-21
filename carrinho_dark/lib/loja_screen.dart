import 'package:carrinho_dark/carrinho_notifier.dart';
import 'package:carrinho_dark/tema_notifier.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class LojaScreen extends StatelessWidget {
  const LojaScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final isDarkMode = context.watch<TemaNotifier>().isDarkMode;
    return Scaffold(
      appBar: AppBar(title: const Text('Loja')),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              'Modo Escuro',
              style: TextStyle(fontSize: 20),
            ),
            const SizedBox(width: 10),
            Switch(
              value: isDarkMode,
              onChanged: (value) {
                context.read<TemaNotifier>().alteraTema();
              },
            ),
            ElevatedButton(
              onPressed: () {
                // Modifica o estado global
                context.read<CarrinhoNotifier>().adicionarItem();
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