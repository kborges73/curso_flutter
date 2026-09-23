import 'package:exemplo_provider/carrinho_model.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class CarrinhoScreen extends StatelessWidget {
  const CarrinhoScreen({super.key});

  @override
  Widget build(BuildContext context) {
    // Escuta as alterações do CarrinhoModel
    final quantidade = context.watch<CarrinhoModel>().quantidade;

    return Scaffold(
      appBar: AppBar(title: const Text('Seu Carrinho')),
      body: Center(
        child: Text(
          'Itens no carrinho: $quantidade: ',
          style: const TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
        ),
      ),
    );
  }
}