import 'package:carrinho_dark/tema_notifier.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class MyHomepage extends StatelessWidget {
  const MyHomepage({super.key});

  @override
  Widget build(BuildContext context) {
    // 🎧 Escuta o estado para saber se o Switch fica ligado ou desligado
    final isDarkMode = context.watch<TemaNotifier>().isDarkMode;

    return Scaffold(
      appBar: AppBar(
        title: const Text('Configurações de Tema 🌓'),
      ),
      body: Center(
        child: Row(
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
                // ⚡ Dispara a ação de alternar sem precisar "escutar" novamente aqui
                context.read<TemaNotifier>().alteraTema();
              },
            ),
          ],
        ),
      ),
    );
  }
}