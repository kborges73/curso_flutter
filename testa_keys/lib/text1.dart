import 'package:flutter/material.dart';

class MyTextField extends StatefulWidget {
  final String label;

  const MyTextField({required this.label});

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
    return TextField(
      controller: controller,
      decoration: InputDecoration(
        border: const OutlineInputBorder(),
        hintText: 'Recuperou o valor ${widget.key ?? widget.label}',
      ),
    );  
  }
}