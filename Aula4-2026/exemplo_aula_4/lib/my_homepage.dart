import 'package:exemploAula4/cadastrar_pessoa.dart';
import 'package:exemploAula4/listar_aniversarios.dart';
import 'package:flutter/material.dart';

class MyHomePage extends StatefulWidget {
  static const nomeRota = '/homepage';

  const MyHomePage({Key? key}) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _selectedIndex = 0;
  

  @override
  Widget build(BuildContext context) {
  final args = ModalRoute.of(context)?.settings.arguments as Map<String, dynamic>?; // !Recupera os argumentos passados para a rota
  final usuario = args?['usuario'] ?? 'Usuário'; // !Recupera o valor do usuário, ou usa 'Usuário' como padrão

    return Scaffold(
      drawer: _buildMenu(),
      appBar: AppBar(title: Text("Olá, $usuario!")), // !Exibe o valor do usuário no título da AppBar
      body: const Center(child: Column()),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            //Icones podem ser consultados em
            // https://api.flutter.dev/flutter/material/Icons-class.html
            icon: Icon(Icons.email),
            label: 'Email',
          ),
          BottomNavigationBarItem(icon: Icon(Icons.phone), label: 'Telefone'),
        ],
        backgroundColor: Colors.blue,
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.amber[800],
        onTap: _onItemTapped,
      ),
    );
  }

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  Widget _buildMenu() {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: [
          const SizedBox(
            //Se não colocar isso, a barra azul fica muito grande (altura)
            height: 80.0,
            child: DrawerHeader(
              decoration: BoxDecoration(color: Colors.blue),
              child: Text('Opções'),
            ),
          ),
          ListTile(
            title: const Text('Cadastrar Pessoa'),
            onTap: () {
              Navigator.pushNamed(context, CadastrarPessoa.nomeRota);
            },
          ),
          ListTile(
            title: const Text('Listar Aniversarios'),
            onTap: () {
              Navigator.pushNamed(context, ListarAniversarios.nomeRota);
            },
          ),
        ],
      ),
    );
  }
}
