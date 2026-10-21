import 'package:flutter/material.dart';
import 'package:teste_loggin/util/setup_logging.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    // setupFileLogging() is now called in main() before runApp();
    // Não chamar aqui para evitar reatribuição da variável `fileLogger`.
  }

  @override
  Widget build(BuildContext context) {
    double? resultado = _testaLogin();

    fileLogger.e(
      'Teste de erro.',
      error: Exception('Ocorreu uma falha no serviço X'),
    );

    return Scaffold(
      appBar: AppBar(title: Text(widget.title)),
      body: Center(child: Text('Resultado da operação = $resultado')),
    );
  }

  double? _testaLogin() {
    try {
      fileLogger.i('Iniciando teste de divisão');

      int numerador = 10;
      int denominador = 0;

      fileLogger.d('Numerador: $numerador, Denominador: $denominador');

      if (denominador == 0) {
        throw Exception('Divisão por zero não é permitida');
      }

      double resultado = numerador / denominador;
      fileLogger.i('Resultado: $resultado');
      return resultado;
    } catch (e, stackTrace) {
      debugPrint(e as String?);
      debugPrint(stackTrace as String?);
      fileLogger.e(
        'Erro ao realizar divisão',
        error: e,
        stackTrace: stackTrace,
      );
    } finally {
      fileLogger.w('Finalizando operação de divisão');
    }
    return null;
  }
}
