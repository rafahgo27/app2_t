import 'package:aula_10/page2.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

// Criando widget com MaterialApp
class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.indigo
      ),
      home: MyPage2(),
    );
  }
}
