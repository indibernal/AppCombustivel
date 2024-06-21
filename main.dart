import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:appcombustivel/ui/pages/homepage.dart';


void main() {
  runApp(
      const MaterialApp(
        title: 'Verificação de Combustivel',
        debugShowCheckedModeBanner: false,
        home: Homepage(),
      )
  );
}

