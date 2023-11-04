import 'package:flutter/material.dart';

class CustomTextfield extends StatelessWidget {
  final Icon icone;
  final String titulo;
  const CustomTextfield({super.key, required this.icone, required this.titulo});

  @override
  Widget build(BuildContext context) {
    return TextField(
      decoration: InputDecoration(
        labelText: titulo,
        suffixIcon: icone,
        border: const OutlineInputBorder(
          borderRadius: BorderRadius.all(Radius.circular(20)),
        ),
      ),
    );
  }
}
