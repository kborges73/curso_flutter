import 'package:exercicio4/my_homepage.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key, required this.title});

  final String title;

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  //!Variáveis para armazenar o usuário e senha digitados
  String? usuario, senha;

  //!Controladores para os campos de texto
  final controllerUsuario = TextEditingController();
  final controllerSenha = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Image.asset('assets/icon_flutter.png'),
            const Text(
              'Agenda de Aniversarios !',
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
                  // !Campo de Nome
                  TextFormField(
                    controller: controllerUsuario,
                    decoration: InputDecoration(
                      labelText: 'Usuario',
                      border:
                          OutlineInputBorder(), // Cria a borda ao redor do campo
                      prefixIcon: Icon(Icons.person), // Ícone dentro do campo
                    ),
                  ),
                  const SizedBox(height: 16.0),

                  // !Campo de Senha
                  TextFormField(
                    controller: controllerSenha,
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
                    onPressed: () {
                      Navigator.pushNamed(
                        context,
                        MyHomePage.nomeRota,
                        arguments: {
                          'usuario': controllerUsuario.text,
                        }, // !Passa o valor do campo de usuário como argumento
                      );
                    },
                    child: const Text('Entrar'),
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
