import 'package:path_provider/path_provider.dart';
import 'dart:io';
import 'package:intl/intl.dart';
import 'package:logger/logger.dart';
import 'fileoutput.dart' as output; // as necessário para evitar conflito de nomes

late final Logger
fileLogger; //  isso permite que seja inicializado apenas uma vez.

Future<void> setupFileLogging() async {
  // 1. Encontra a pasta de documentos do app
  final directory = await getApplicationDocumentsDirectory();
  final logFile = File('${directory.path}/app_log.txt');

  // 2. Cria a instância do FileOutput
  final fileOutput = output.FileOutput(
    file: logFile,
    overrideExisting: false, // Define para false para anexar a logs antigos
  );

  // 3. Configura o Logger para usar múltiplos outputs
  // O MultiOutput permite que você use o console E o arquivo simultaneamente.
  fileLogger = Logger(
    printer: PrettyPrinter(
      methodCount: 0,
      errorMethodCount: 5,
      lineLength: 50,
      colors: true,
      printEmojis: true,
      dateTimeFormat: (date) {
        // Data e hora de criação do log
        final formatter = DateFormat('HH:mm:ss.SSS');
        return formatter.format(date);
      },
    ),
    output: MultiOutput([
      ConsoleOutput(), // Continua mostrando no console
      fileOutput, // Grava no arquivo
    ]),
  );

  fileLogger.i(
    'Sistema de Logging de Arquivos configurado com sucesso. Log file: ${logFile.path}',
  );
}
