import 'package:flutter/material.dart';
import 'package:testa_keys/text2.dart';

void main() => runApp(const MeuApp());

class MeuApp extends StatelessWidget {
  const MeuApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Exemplo Com Key',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  bool showFirst = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Exemplo com ValueKey'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: <Widget>[
            if (showFirst)
              const MyTextField(
                key: ValueKey(10), // Key identificadora do item 1
                label: 'nro 1',
              ),
            const MyTextField(
              key: ValueKey(20), // Key identificadora do item 2
              label: 'nro 2',
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        child: const Icon(Icons.remove),
        onPressed: () {
          setState(() {
            showFirst = false;
          });
        },
      ),
    );
  }
}
