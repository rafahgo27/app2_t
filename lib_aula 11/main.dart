import 'dart:html';
import 'dart:ui';

import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

const List<String> listMarca = <String>[
  "Selecione uma Marca:",
  "Chevrolet",
  "Volkswagen",
  "Fiat",
  "Renault",
  "Peugeot"
];

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(primarySwatch: Colors.blueGrey),
      home: MyHome(),
    );
  }
}

class MyHome extends StatefulWidget {
  const MyHome({Key? key}) : super(key: key);

  @override
  State<MyHome> createState() => _MyHomeState();
}

class _MyHomeState extends State<MyHome> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Dados"),
      ),
      body: Container(
        padding: EdgeInsets.only(left: 50, right: 50, top: 50),
        child: Column(
          children: <Widget>[DropDownMarca()],
        ),
      ),
    );
  }
}

class DropDownMarca extends StatefulWidget {
  const DropDownMarca({Key? key}) : super(key: key);

  @override
  State<DropDownMarca> createState() => _DropDownMarcaState();
}

class _DropDownMarcaState extends State<DropDownMarca> {
  String _marcaEscolhida = listMarca.first;

  @override
  Widget build(BuildContext context) {
    return DropdownButton<String>(
        value: _marcaEscolhida,
        icon: const Icon(Icons.arrow_downward),
        elevation: 16,
        style: const TextStyle(color: Colors.deepPurple),
        underline: Container(
          height: 2,
          color: Colors.deepPurpleAccent,
        ),
        onChanged: (String? marca) {
          setState(() {
            _marcaEscolhida = marca!;
            print(_marcaEscolhida);
          });
        });
  }
  items: listMarca.map<DropdownMenuItem<String>>((String value){
    return DropdownMenuItem<String>(
      value: value,
      child: Text(value),
    );
  }).toList(),
}
