import 'package:exemplo_valueprovider/meu_app.dart';
import 'package:flutter/material.dart';

class CarrinhoScreen extends StatelessWidget {
  const CarrinhoScreen({super.key});

  @override
  Widget build(BuildContext context) {
    // Escuta as alterações do CarrinhoModel
    return Scaffold(
      appBar: AppBar(title: const Text('Seu Carrinho')),
      body: Center(
       child: ValueListenableBuilder<int>(
          valueListenable: carrinhoNotifier,
          builder: (context, quantidade, child) {
            return Text(
              'Itens no carrinho: $quantidade 🛍️',
              style: const TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            );
          },
        ),
      ),
    );
  }
}