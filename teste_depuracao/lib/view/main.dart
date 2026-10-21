import 'package:flutter/material.dart';
import 'myapp.dart';
import '../util/setup_logging.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized(); //Garante que o Flutter esteja inicializado
  await setupFileLogging(); //Inicializações do sistema de logging
  runApp(const MyApp());
}
