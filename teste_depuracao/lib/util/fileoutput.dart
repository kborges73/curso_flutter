import 'dart:io';
import 'package:logger/logger.dart';

class FileOutput extends LogOutput {
  final File file;
  final bool overrideExisting;

  FileOutput({required this.file, this.overrideExisting = false});

  @override
  Future<void> init() async {
    // Apaga o arquivo antigo se overrideExisting for true
    if (overrideExisting && file.existsSync()) {
      file.writeAsStringSync('');
    }
    // Garantir que o arquivo e diretório existam
    try {
      if (!file.existsSync()) {
        file.createSync(recursive: true);
      }
    } catch (e) {
      // Se ocorrer um erro ao criar o arquivo, lance uma exceção
      throw Exception('Não foi possível criar o arquivo de log: $e');
    }
  }

  @override
  void output(OutputEvent event) {
    // Formata o log para o arquivo (apenas texto)
    final logText = event.lines.join('\n');

    // Remove sequências de escape ANSI (cores) antes de gravar
    // Regex geral para códigos de controle ANSI
    // Use raw string to avoid Dart string-escape issues in the pattern
    final ansiEscape = RegExp(r'\x1B\[[0-?]*[ -/]*[@-~]');
    final clean = logText.replaceAll(ansiEscape, '');

    // Anexa a linha de log limpa ao arquivo
    file.writeAsStringSync('$clean\n', mode: FileMode.append);
  }

  // @override
  // Future<void> destroy() async {
  //   Dart fecha o arquivo automaticamente após a conclusão da operação.
  // }
}
