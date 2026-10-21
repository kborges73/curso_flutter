import 'package:aula12/views/detalhes_aniversario.dart';
import 'package:flutter/material.dart';
import 'package:aula12/models/pessoa.dart';
import 'package:aula12/models/categorias.dart';
import 'package:aula12/util/validador.dart';
import 'package:mask_text_input_formatter/mask_text_input_formatter.dart';

class CadastrarPessoa extends StatefulWidget {
  static const nomeRota = "/cadastrarpessoa";

  const CadastrarPessoa({super.key}) : super(key: key);

  @override
  _CadastrarPessoaState createState() => _CadastrarPessoaState();
}

class _CadastrarPessoaState extends State<CadastrarPessoa> {
   final _formKey = GlobalKey<FormState>();

  Pessoa? pessoa = Pessoa();
  String categoria = Categorias.amigo.name;
  bool validate = false;

  final controllerNome = TextEditingController();
  final controllerEmail = TextEditingController();
  final controllerAniversario = TextEditingController();
  final controllerTelefone = TextEditingController();

 @override
  void initState() {
    super.initState();
    pessoa?.categoria = Categorias.amigo.name; //ADICIONAR
    controllerNome.addListener(() {
      pessoa?.nome = controllerNome.text;
    });
    controllerEmail.addListener(() {
      pessoa?.email = controllerEmail.text;
    });
    controllerAniversario.addListener(() {
      pessoa?.aniversario = controllerAniversario.text;
    });
    controllerTelefone.addListener(() {
      pessoa?.telefone = controllerTelefone.text;
    });
  }

  @override
  void dispose() {
    // Clean up the controller when the widget is removed from the widget tree.
    controllerNome.dispose();
    controllerEmail.dispose();
    controllerAniversario.dispose();
    controllerTelefone.dispose();
    super.dispose();
  }
  
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Cadastre os Dados dos Aniversariantes'),
      ),
      body: SingleChildScrollView(
        child: 
          Padding(
              padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 16),
              child: Form(
                key: _formKey,
                autovalidateMode: AutovalidateMode.onUnfocus,
                child: _construirFormulario(),
              ),
          ),
      ),
    );
  }

   Widget _construirFormulario() {
    List<DropdownMenuItem<String>> menuItems = [
      DropdownMenuItem(value: Categorias.amigo.name, child: Text("Amigo")),
      DropdownMenuItem(value: Categorias.familia.name, child: Text("Familia")),
      DropdownMenuItem(value: Categorias.colega.name, child: Text("Colega")),
      DropdownMenuItem(value: Categorias.vizinho.name, child: Text("Vizinho")),
      DropdownMenuItem(value: Categorias.cliente.name, child: Text("Cliente")),
    ];

    var maskFormatterData = MaskTextInputFormatter(
        mask: '##/##/####', 
        type: MaskAutoCompletionType.lazy
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
              controller: controllerNome,
              validator: Validador.validarNome(),
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
            ),

          TextFormField(
            controller: controllerAniversario,
            validator: Validador.validarData(),
            keyboardType: TextInputType.datetime,
            maxLength: 12,
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
            controller: controllerTelefone,
            //keyboardType: TextInputType.emailAddress,
            inputFormatters: [maskFormatterFone],
            maxLength: 14,
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
            validator: Validador.validarEmail(),
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
              initialValue: categoria,
              onChanged: (String? newValue) {
                setState(() {
                  categoria = newValue!;
                });
              },
            ),
        const SizedBox(height: 15.0),
        ElevatedButton(
          onPressed: _inserir, //isso é diferente de inserir() - sem os parênteses, pois não queremos chamar a função agora
          child: const Text('Enviar'),
        )
      ],
    ),
    ],
    );
  }

  _inserir() {
    if (_formKey.currentState!.validate()) {
      // Sem erros na validação
      _formKey.currentState!.save();
      pessoa = Pessoa.comParametros(
          nome: "",
          email: controllerEmail.text,
          aniversario: controllerAniversario.text,
          telefone: controllerTelefone.text,
          categoria: categoria);
      _dialogBox();
    } else {
      // erro de validação
      setState(() {
        validate = true;
      });
    }
  }

  _dialogBox() {
    showDialog(
      context: context,
      barrierDismissible: false,
      builder: (context) {
        return AlertDialog(
          title: const Text('Cadastro de Aniversários'),
          content: const Text('Cadastro Efetuado Com Sucesso !'),
          actions: [
            TextButton(
              child: const Text('Conferir Dados Cadastrados'),
              onPressed: () {
                Navigator.pushNamed(context, DetalhesAniversario.nomeRota, arguments: pessoa);
              },
            ),
          ],
        );
      },
    );
  }
}
