import 'package:exercicio4/detalhar_pessoa.dart';
import 'package:exercicio4/models/categorias.dart';
import 'package:flutter/material.dart';
import 'package:mask_text_input_formatter/mask_text_input_formatter.dart';

class CadastrarPessoa extends StatefulWidget {
  static const nomeRota = "/cadastrarpessoa";

  const CadastrarPessoa({Key? key}) : super(key: key);

  @override
  _CadastrarPessoaState createState() => _CadastrarPessoaState();
}

class _CadastrarPessoaState extends State<CadastrarPessoa> {
  final controllerNome = TextEditingController();
  final controllerEmail = TextEditingController();
  final controllerTelefone = TextEditingController();
  final controllerAniversario = TextEditingController();

  String tag = Categorias.amigo.name;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Cadastre os Dados dos Aniversariantes'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment
            .start, // Coloca os componenes a partir do topo da tela
        children: [
          SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 16),
              child: Form(child: _construirFormulario()),
            ),
          ),
          const SizedBox(height: 20),
          ElevatedButton(
            child: const Text('Cadastrar'),
            onPressed: () {
              Navigator.pushNamed(
                context,
                DetalharPessoa.nomeRota,
                arguments: {
                  'nome': controllerNome.text,
                  'aniversario': controllerAniversario.text,
                  'telefone': controllerTelefone.text,
                  'email': controllerEmail.text,
                  'categoria': tag,
                },
              );
            },
          ),
        ],
      ),
      resizeToAvoidBottomInset:
          false, //he body can be resized to avoid overlapping the keyboard,
    );
  }

  Widget _construirFormulario() {
    List<DropdownMenuItem<String>> menuItems = [
      DropdownMenuItem(
        value: Categorias.amigo.name,
        child: const Text("Amigo"),
      ),
      DropdownMenuItem(
        value: Categorias.familia.name,
        child: const Text("Familia"),
      ),
      DropdownMenuItem(
        value: Categorias.colega.name,
        child: const Text("Colega"),
      ),
      DropdownMenuItem(
        value: Categorias.vizinho.name,
        child: const Text("Vizinho"),
      ),
      DropdownMenuItem(
        value: Categorias.cliente.name,
        child: const Text("Cliente"),
      ),
    ];

    var maskFormatterData = MaskTextInputFormatter(
      mask: '##/##/####',
      type: MaskAutoCompletionType.lazy,
    );

    var maskFormatterFone = MaskTextInputFormatter(
      mask: '(##)#####-####',
      type: MaskAutoCompletionType.lazy,
    );

    return Column(
      children: <Widget>[
        Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            TextFormField(
              decoration: InputDecoration(
                labelText: 'Nome Completo',
                fillColor: Colors.white,
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(12.0),
                  // Define os cantos arredondados
                  borderSide: const BorderSide(color: Colors.grey, width: 2.0),
                ),
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(12.0),
                  // Define os cantos arredondados
                  borderSide: const BorderSide(color: Colors.blue, width: 2.0),
                ),
              ),
              maxLength: 20,
              controller: controllerNome,
            ),
            TextFormField(
              keyboardType: TextInputType.datetime,
              maxLength: 12,
              controller: controllerAniversario,
              decoration: InputDecoration(
                labelText: "Data de Nascimento",
                hintText: "dd/MM/yyyy",
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(12.0),
                  borderSide: const BorderSide(color: Colors.grey, width: 2.0),
                ),
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(12.0),
                  borderSide: const BorderSide(color: Colors.blue, width: 2.0),
                ),
              ),
              inputFormatters: [maskFormatterData],
            ),
            TextFormField(
              keyboardType: TextInputType.emailAddress,
              inputFormatters: [maskFormatterFone],
              maxLength: 14,
              controller: controllerTelefone,
              decoration: InputDecoration(
                labelText: "Telefone",
                hintText: "(##)#####-####",
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(12.0),
                  borderSide: const BorderSide(color: Colors.grey, width: 2.0),
                ),
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(12.0),
                  borderSide: const BorderSide(color: Colors.blue, width: 2.0),
                ),
              ),
            ),
            TextFormField(
              controller: controllerEmail,
              //inputFormatters: [maskFormatterEmail],
              maxLength: 30,
              decoration: InputDecoration(
                labelText: 'Email',
                fillColor: Colors.white,
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(12.0),
                  borderSide: const BorderSide(color: Colors.grey, width: 2.0),
                ),
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(12.0),
                  borderSide: const BorderSide(color: Colors.blue, width: 2.0),
                ),
              ),
              keyboardType: TextInputType.emailAddress,
            ),
            DropdownButtonFormField(
              items: menuItems,
              decoration: InputDecoration(
                labelText: 'Categoria',
                fillColor: Colors.white,
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(12.0),
                  borderSide: const BorderSide(color: Colors.grey, width: 2.0),
                ),
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(12.0),
                  borderSide: const BorderSide(color: Colors.blue, width: 2.0),
                ),
              ),
              initialValue: tag,
              onChanged: (String? newValue) {
                setState(() {
                  tag = newValue!;
                });
              },
            ),
          ],
        ),
      ],
    );
  }
}
