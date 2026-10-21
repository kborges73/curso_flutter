import 'package:flutter/material.dart';

class MainPage extends StatelessWidget {
  const MainPage({super.key, required this.title});

  final String title;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: _buildMenu(),
      appBar: AppBar(title: const Text("Não esqueça !")),
      body: Center(child: Column()),
    );
  }

  Widget _buildMenu() {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: [
          SizedBox(
            //Se não colocar isso, a barra azul fica muito grande (altura)
            height: 80.0,
            child: DrawerHeader(
              decoration: BoxDecoration(color: Colors.blue),
              child: Text('Opções'),
            ),
          ),
          ListTile(
            title: Text('Cadastrar Pessoa'), 
            onTap: () {
              //TODO: ir para CadastrarPessoa
            }),
          ListTile(
            title: Text('Listar Aniversarios'), 
            onTap: () {
              //TODO: ir para ListarAniversarios
            }),
        ],
      ),
    );
  }
}
