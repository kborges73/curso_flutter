import 'package:flutter/material.dart';

class MyTextField extends StatefulWidget {
  final String label;

  const MyTextField({super.key, required this.label}); 
  //agora acrescentamos a key para que possamos identificar o widget de forma única

  @override
  State<MyTextField> createState() => _MyTextFieldState();
}

class _MyTextFieldState extends State<MyTextField> {
  final TextEditingController controller = TextEditingController();

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      child: TextField(
        controller: controller,
        decoration: InputDecoration(
          border: const OutlineInputBorder(),
          hintText: 'Recuperou o valor ${widget.key ?? widget.label}', // Mostra a key se estiver presente, caso contrário, mostra o label
        ),
      ),
    );
  }
}