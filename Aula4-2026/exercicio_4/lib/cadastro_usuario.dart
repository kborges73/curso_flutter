import 'package:flutter/material.dart';

class CadastroUsuario extends StatelessWidget {
  const CadastroUsuario({super.key, required this.title});

  final String title;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Image.asset('assets/icon_flutter.png'),
            const Text(
              'Agenda de Aniversários !',
              style: TextStyle(
                fontSize: 30,
                color: Color.fromARGB(255, 238, 32, 224),
              ),
            ),

            const SizedBox(height: 32.0),

            // 3. O "Cartão" agrupando os campos
            Container(
              padding: const EdgeInsets.all(20.0),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(16.0),
                boxShadow: [
                  BoxShadow(
                    // por causa do withOpacity, precisamos ignorar o aviso de deprecated_member_use
                    // ignore: deprecated_member_use
                    color: Colors.black.withOpacity(0.1),
                    blurRadius: 10.0,
                    offset: const Offset(0, 4),
                  ),
                ],
              ),
              // Uma Column interna para organizar os itens dentro do Container
              child: Column(
                children: [
                  // Campo de Nome
                  const TextField(
                    decoration: InputDecoration(
                      labelText: 'Nome completo',
                      border:
                          OutlineInputBorder(), // Cria a borda ao redor do campo
                      prefixIcon: Icon(Icons.person), // Ícone dentro do campo
                    ),
                  ),
                  const SizedBox(height: 16.0),
                  const TextField(
                    decoration: InputDecoration(
                      labelText: 'Email',
                      border:
                          OutlineInputBorder(), // Cria a borda ao redor do campo
                      prefixIcon: Icon(Icons.email), // Ícone dentro do campo
                    ),
                    keyboardType: TextInputType
                        .emailAddress, // Tipo de teclado para email
                  ),
                  const SizedBox(height: 16.0),
                  const TextField(
                    decoration: InputDecoration(
                      labelText: 'Senha',
                      border:
                          OutlineInputBorder(), // Cria a borda ao redor do campo
                      prefixIcon: Icon(Icons.lock), // Ícone dentro do campo
                    ),
                    obscureText: true,
                    keyboardType: TextInputType
                        .number, // Oculta o texto digitado (para senhas)
                  ),
                  const SizedBox(height: 16.0),
                  ElevatedButton(
                    onPressed: () {},
                    child: const Text('Cadastrar'),
                  ),
                ], //children - Column
              ), //Column
            ), //Container
          ], //children
        ),
      ),
    );
  }
}
