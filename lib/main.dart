import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(primarySwatch: Colors.blue),
      home: MyWidget(),
    );
  }
}

class MyWidget extends StatefulWidget {
  const MyWidget({super.key});

  @override
  State<MyWidget> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<MyWidget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: Text("Astromomentos"),
        titleTextStyle: TextStyle(fontSize: 30, color: Colors.indigo),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            ListTile(
              tileColor: Colors.indigo,
              title: Text("Horóscopo Personalizado"),
              trailing: Icon(Icons.arrow_forward),
              onTap: (() {
                print("Aguarde um Momento...");
              }),
            ),
            ListTile(
              tileColor: Colors.indigo,
              title: Text("Mapa Astral"),
              trailing: Icon(Icons.arrow_forward),
              onTap: (() {
                print("Aguarde um Momento...");
              }),
            ),
            ListTile(
              tileColor: Colors.indigo,
              title: Text("Compatibilidade Amorosa"),
              trailing: Icon(Icons.arrow_forward),
              onTap: (() {
                print("Aguarde um Momento...");
              }),
            ),
            ListTile(
              tileColor: Colors.indigo,
              title: Text("Aprender sobre Astrologia"),
              trailing: Icon(Icons.arrow_forward),
              onTap: (() {
                print("Aguarde um Momento...");
              }),
            ),
          ],
        ),
      ),
    );
  }
}
