import 'package:dark_mode/my_app.dart';
import 'package:dark_mode/tema_notifier.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(
    ChangeNotifierProvider(
      create: (context) => TemaNotifier(),
      child: MyApp(),
    ),
  );
}



