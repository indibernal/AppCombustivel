import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:appcombustivel/ui/widgets/texto.dart';
import '../widgets/alerta.dart';

class Homepage extends StatefulWidget {
  const Homepage({super.key});
  @override
  State<Homepage> createState() => _HomePageState();

}

class _HomePageState extends State<Homepage> {

  final _etanolController = TextEditingController();
  final _gasolinaController = TextEditingController();
  var resultado = '';

  @override
  Widget build(BuildContext context) {
    return Placeholder(
      child: Scaffold(
        appBar: AppBar(
          title: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(
                Icons.car_rental,
                color: Colors.blue,
                size: 28,
              ),
              Text('Verificação de Combustivel',
              style: TextStyle(color: Colors.blue),),
            ],
          ),
          backgroundColor: Colors.amber,
        ),
        body: Column(
          children: [
            campoTexto(
              controller: _etanolController,
              prefixo: 'R\$ ',
              texto: 'Valor Etanol',
              teclado: TextInputType.number,
            ),
            campoTexto(
              controller: _gasolinaController,
              prefixo: 'R\$ ',
              texto: 'Valor Gasolina',
              teclado: TextInputType.number,
            ),
            ElevatedButton(onPressed: _calcular, child: Text('Calcular'),),
            Text(resultado, style: TextStyle(
              fontSize: 22,
              color: Colors.green,
            ),)
          ],
        ),
      ),
    );
  }
  void _calcular() {
    var etanol = double.parse(_etanolController.text);
    var gasolina = double.parse(_gasolinaController.text);

    if (etanol <= (gasolina * 0.7)) {
      resultado = 'Abasteça com Etanol';
    } else {
      resultado = 'Abasteça com Gasolina';
    }
    Alerta().show(context, 'Resultado', resultado);

    setState(() {

    });
  }
}

