import 'package:flutter/material.dart';

class Alerta{
  void show(BuildContext context, String titulo, String texto) {
    showDialog(
        context: context,
        builder: (context) {
          return AlertDialog(
            title: Text(titulo),
            content: Text(texto),
            actions: [
              TextButton(onPressed: () {
                _fecharJanela(context);
              }, child: Text('Fechar'))
            ],
          );

    });
  }
  void _fecharJanela(BuildContext context) {
    //fechar janela
    Navigator.pop(context);
  }
}