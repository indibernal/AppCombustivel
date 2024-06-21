import 'package:flutter/material.dart';

class campoTexto extends StatelessWidget{

  final TextEditingController controller;
  final String texto;
  final String prefixo;
  final TextInputType? teclado;

  const campoTexto({
    required this.controller,
    this.texto = '',
    this.prefixo = '',
    this.teclado,
    super.key
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(20),
      child: TextField(
        controller: controller,
        decoration: InputDecoration(
          border: OutlineInputBorder(),
          prefixText: prefixo,
          labelText: texto,
        ),
        keyboardType: teclado?? TextInputType.text,
      ),
    );
  }
}